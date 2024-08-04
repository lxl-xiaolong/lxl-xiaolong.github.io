import sys
import subprocess
from PyQt5.QtWidgets import QApplication, QMainWindow, QPushButton, QComboBox, QLineEdit, QTextEdit, QVBoxLayout, QWidget, QMessageBox
from PyQt5.QtCore import QThread, pyqtSignal

class CommandThread(QThread):
    output_signal = pyqtSignal(str)
    error_signal = pyqtSignal(str)

    def __init__(self, command):
        super().__init__()
        self.command = command

    def run(self):
        try:
            process = subprocess.Popen(self.command, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
            for line in process.stdout:
                self.output_signal.emit(line)
            for line in process.stderr:
                self.error_signal.emit(line)
        except Exception as e:
            self.error_signal.emit(str(e))

class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()
        self.initUI()
        self.load_pip_sources()

    def initUI(self):
        self.setWindowTitle('Pip 包管理工具')
        self.setGeometry(100, 100, 600, 400)

        layout = QVBoxLayout()

        self.pip_source_combo = QComboBox()
        layout.addWidget(self.pip_source_combo)

        self.upgrade_pip_button = QPushButton('升级pip版本')
        self.upgrade_pip_button.clicked.connect(self.upgrade_pip)
        layout.addWidget(self.upgrade_pip_button)

        self.install_package_button = QPushButton('安装包')
        self.install_package_button.clicked.connect(self.install_package)
        layout.addWidget(self.install_package_button)

        self.install_package_input = QLineEdit()
        layout.addWidget(self.install_package_input)

        self.uninstall_package_button = QPushButton('卸载包')
        self.uninstall_package_button.clicked.connect(self.uninstall_package)
        layout.addWidget(self.uninstall_package_button)

        self.uninstall_package_input = QLineEdit()
        layout.addWidget(self.uninstall_package_input)

        self.list_packages_button = QPushButton('列出所有包的版本信息')
        self.list_packages_button.clicked.connect(self.list_packages)
        layout.addWidget(self.list_packages_button)

        self.upgrade_pip_output_text = QTextEdit()
        self.upgrade_pip_output_text.setReadOnly(True)
        layout.addWidget(self.upgrade_pip_output_text)

        self.install_output_text = QTextEdit()
        self.install_output_text.setReadOnly(True)
        layout.addWidget(self.install_output_text)

        self.uninstall_output_text = QTextEdit()
        self.uninstall_output_text.setReadOnly(True)
        layout.addWidget(self.uninstall_output_text)

        self.list_packages_text = QTextEdit()
        self.list_packages_text.setReadOnly(True)
        layout.addWidget(self.list_packages_text)

        central_widget = QWidget()
        central_widget.setLayout(layout)
        self.setCentralWidget(central_widget)

    def load_pip_sources(self):
        import json
        with open('resources/pip_sources.json', 'r', encoding='utf-8') as file:
            sources = json.load(file)
            for source in sources:
                self.pip_source_combo.addItem(source['name'], source['url'])

    def run_command(self, command, output_text):
        self.thread = CommandThread(command)
        self.thread.output_signal.connect(output_text.append)
        self.thread.error_signal.connect(output_text.append)
        self.thread.start()

    def upgrade_pip(self):
        index = self.pip_source_combo.currentIndex()
        source_url = self.pip_source_combo.itemData(index)
        command = ['python', '-m', 'pip', 'install', '-U', 'pip', '-i', source_url]
        self.run_command(command, self.upgrade_pip_output_text)

    def install_package(self):
        package_name = self.install_package_input.text()
        index = self.pip_source_combo.currentIndex()
        source_url = self.pip_source_combo.itemData(index)
        command = ['python', '-m', 'pip', 'install', package_name, '-i', source_url]
        self.run_command(command, self.install_output_text)

    def uninstall_package(self):
        package_name = self.uninstall_package_input.text()
        command = ['python', '-m', 'pip', 'uninstall', package_name, '-y']
        self.run_command(command, self.uninstall_output_text)

    def list_packages(self):
        command = ['python', '-m', 'pip', 'list']
        self.run_command(command, self.list_packages_text)

    def closeEvent(self, event):
        if hasattr(self, 'thread') and self.thread.isRunning():
            self.thread.terminate()
        super().closeEvent(event)

if __name__ == '__main__':
    app = QApplication(sys.argv)
    main_window = MainWindow()
    main_window.show()
    sys.exit(app.exec_())
