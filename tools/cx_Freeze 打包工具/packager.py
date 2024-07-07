import sys
from PyQt5.QtWidgets import QApplication, QWidget, QLabel, QLineEdit, QPushButton, QVBoxLayout, QFileDialog, QMessageBox, QListWidget, QListWidgetItem, QGridLayout, QTextEdit
from PyQt5.QtCore import QThread, pyqtSignal
import subprocess

class PackThread(QThread):
    # 定义信号
    update_signal = pyqtSignal(str)
    output_signal = pyqtSignal(str)

    def __init__(self):
        super().__init__()

    def run(self):
        try:
            # 执行打包过程
            process = subprocess.Popen([sys.executable, "setup.py", "bdist_msi"], stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)

            while True:
                output = process.stdout.readline()
                if output == '' and process.poll() is not None:
                    break
                if output:
                    self.output_signal.emit(output.strip())
            process.wait()

            # 发送成功信号
            self.update_signal.emit("success")
        except Exception as e:
            # 发送错误信号
            self.update_signal.emit(f"error: {e}")

class SetupConfigurator(QWidget):
    def __init__(self):
        super().__init__()
        self.initUI()
        self.pack_thread = PackThread()
        self.pack_thread.update_signal.connect(self.update_status)
        self.pack_thread.output_signal.connect(self.update_output)

    def initUI(self):
        self.setWindowTitle('Setup.py Configurator')
        self.setGeometry(100, 100, 500, 400)

        self.name_label = QLabel('Name:')
        self.name_input = QLineEdit(self)

        self.version_label = QLabel('Version:')
        self.version_input = QLineEdit(self)

        self.description_label = QLabel('Description:')
        self.description_input = QLineEdit(self)

        self.author_label = QLabel('Author:')
        self.author_input = QLineEdit(self)

        self.icon_label = QLabel('Icon (ico):')
        self.icon_input = QLineEdit(self)
        self.icon_button = QPushButton('Browse')
        self.icon_button.clicked.connect(self.browseIcon)

        self.script_label = QLabel('Script (.py):')
        self.script_input = QLineEdit(self)
        self.script_button = QPushButton('Browse')
        self.script_button.clicked.connect(self.browseScript)

        self.packages_label = QLabel('Packages (comma-separated):')
        self.packages_input = QLineEdit(self)

        self.excludes_label = QLabel('Excludes (comma-separated):')
        self.excludes_input = QLineEdit(self)

        self.include_files_label = QLabel('Include Files (comma-separated):')
        self.include_files_input = QLineEdit(self)

        self.generate_button = QPushButton('Generate setup.py')
        self.generate_button.clicked.connect(self.generateSetupPy)

        self.pack_button = QPushButton('Pack Application')
        self.pack_button.clicked.connect(self.start_pack_thread)

        self.output_label = QLabel('Output:')
        self.output_textbox = QTextEdit()
        self.output_textbox.setReadOnly(True)

        layout = QGridLayout(self)
        layout.addWidget(self.name_label, 0, 0)
        layout.addWidget(self.name_input, 0, 1)
        layout.addWidget(self.version_label, 1, 0)
        layout.addWidget(self.version_input, 1, 1)
        layout.addWidget(self.description_label, 2, 0)
        layout.addWidget(self.description_input, 2, 1)
        layout.addWidget(self.author_label, 3, 0)
        layout.addWidget(self.author_input, 3, 1)
        layout.addWidget(self.icon_label, 4, 0)
        layout.addWidget(self.icon_input, 4, 1)
        layout.addWidget(self.icon_button, 4, 2)
        layout.addWidget(self.script_label, 5, 0)
        layout.addWidget(self.script_input, 5, 1)
        layout.addWidget(self.script_button, 5, 2)
        layout.addWidget(self.packages_label, 6, 0)
        layout.addWidget(self.packages_input, 6, 1)
        layout.addWidget(self.excludes_label, 7, 0)
        layout.addWidget(self.excludes_input, 7, 1)
        layout.addWidget(self.include_files_label, 8, 0)
        layout.addWidget(self.include_files_input, 8, 1)
        layout.addWidget(self.generate_button, 9, 1)
        layout.addWidget(self.pack_button, 10, 1)
        layout.addWidget(self.output_label, 11, 0, 1, 2)
        layout.addWidget(self.output_textbox, 12, 0, 1, 2)

    def browseIcon(self):
        options = QFileDialog.Options()
        fileName, _ = QFileDialog.getOpenFileName(self,"QFileDialog.getOpenFileName()", "","Icon Files (*.ico)", options=options)
        if fileName:
            self.icon_input.setText(fileName)

    def browseScript(self):
        options = QFileDialog.Options()
        fileName, _ = QFileDialog.getOpenFileName(self,"QFileDialog.getOpenFileName()", "","Python Files (*.py)", options=options)
        if fileName:
            self.script_input.setText(fileName)

    def generateSetupPy(self):
        name = self.name_input.text()
        version = self.version_input.text()
        description = self.description_input.text()
        author = self.author_input.text()
        icon = self.icon_input.text()
        script = self.script_input.text().split('/')[-1]  # Get the script file name
        packages = self.packages_input.text().split(',')
        excludes = self.excludes_input.text().split(',')
        include_files = self.include_files_input.text().split(',')

        # Remove empty strings from lists
        packages = [pkg.strip() for pkg in packages if pkg.strip()]
        excludes = [exc.strip() for exc in excludes if exc.strip()]
        include_files = [file.strip() for file in include_files if file.strip()]

        setup_py_content = f'''# coding=utf-8
from cx_Freeze import setup, Executable

build_exe_options = {{
    'packages': {packages},
    'excludes': {excludes},
    'include_files': {include_files}
}}

setup(
    name="{name}",
    version="{version}",
    description="{description}",
    author="{author}",
    options={{'build_exe': build_exe_options}},
    executables=[Executable(script="{script}", base="win32gui", icon="{icon}")]
)
'''

        with open('setup.py', 'w', encoding='utf-8') as f:
            f.write(setup_py_content)
            print('setup.py file has been generated.')

    def start_pack_thread(self):
        self.pack_button.setEnabled(False)
        self.pack_thread.start()

    def update_status(self, status):
        if status == "success":
            QMessageBox.information(self, 'Success', 'The application has been packed successfully.')
        else:
            QMessageBox.critical(self, 'Error', f'An error occurred during packing: {status}')
        self.pack_button.setEnabled(True)

    def update_output(self, output):
        self.output_textbox.append(output)

    # ... [其他函数保持不变]

if __name__ == '__main__':
    app = QApplication(sys.argv)
    ex = SetupConfigurator()
    ex.show()
    sys.exit(app.exec_())
