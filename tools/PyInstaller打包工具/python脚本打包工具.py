import sys
import os
from PyQt5.QtWidgets import QApplication, QMainWindow, QPushButton, QLabel, QVBoxLayout, QWidget, QFileDialog, QRadioButton, QButtonGroup, QTextEdit
from PyQt5.QtCore import QThread, pyqtSignal
import subprocess

class PackThread(QThread):
    output_signal = pyqtSignal(str)

    def __init__(self, command):
        super().__init__()
        self.command = command

    def run(self):
        process = subprocess.Popen(self.command, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True)
        for line in process.stdout:
            self.output_signal.emit(line)

class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()
        self.initUI()

    def initUI(self):
        self.setWindowTitle('Python脚本打包工具')
        self.setGeometry(100, 100, 600, 400)

        layout = QVBoxLayout()

        self.script_label = QLabel('脚本路径：')
        self.distpath_label = QLabel('输出路径：')
        self.workpath_label = QLabel('工作路径：')
        self.specpath_label = QLabel('Spec路径：')

        self.script_button = QPushButton('选择Python脚本')
        self.script_button.clicked.connect(self.select_script)
        self.distpath_button = QPushButton('选择输出路径')
        self.distpath_button.clicked.connect(self.select_distpath)
        self.workpath_button = QPushButton('选择工作路径')
        self.workpath_button.clicked.connect(self.select_workpath)
        self.specpath_button = QPushButton('选择spec路径')
        self.specpath_button.clicked.connect(self.select_specpath)

        self.pack_button = QPushButton('开始打包')
        self.pack_button.clicked.connect(self.start_pack)

        self.onefile_radio = QRadioButton('单文件打包')
        self.onedir_radio = QRadioButton('单目录打包')
        self.windowed_radio = QRadioButton('基于窗口运行')
        self.console_radio = QRadioButton('基于控制台运行')

        self.pack_type_group = QButtonGroup()
        self.pack_type_group.addButton(self.onefile_radio)
        self.pack_type_group.addButton(self.onedir_radio)

        self.run_type_group = QButtonGroup()
        self.run_type_group.addButton(self.windowed_radio)
        self.run_type_group.addButton(self.console_radio)

        self.output_text = QTextEdit()
        self.output_text.setReadOnly(True)

        layout.addWidget(self.script_label)
        layout.addWidget(self.script_button)
        layout.addWidget(self.distpath_label)
        layout.addWidget(self.distpath_button)
        layout.addWidget(self.workpath_label)
        layout.addWidget(self.workpath_button)
        layout.addWidget(self.specpath_label)
        layout.addWidget(self.specpath_button)
        layout.addWidget(self.onefile_radio)
        layout.addWidget(self.onedir_radio)
        layout.addWidget(self.windowed_radio)
        layout.addWidget(self.console_radio)
        layout.addWidget(self.pack_button)
        layout.addWidget(self.output_text)

        central_widget = QWidget()
        central_widget.setLayout(layout)
        self.setCentralWidget(central_widget)

    def select_script(self):
        options = QFileDialog.Options()
        filename, _ = QFileDialog.getOpenFileName(self, "选择Python脚本", "", "Python Files (*.py);;All Files (*)", options=options)
        if filename:
            self.script_label.setText(f'脚本路径：{filename}')

    def select_distpath(self):
        directory = QFileDialog.getExistingDirectory(self, "选择输出路径")
        if directory:
            self.distpath_label.setText(f'输出路径：{directory}')

    def select_workpath(self):
        directory = QFileDialog.getExistingDirectory(self, "选择工作路径")
        if directory:
            self.workpath_label.setText(f'工作路径：{directory}')

    def select_specpath(self):
        directory = QFileDialog.getExistingDirectory(self, "选择spec路径")
        if directory:
            self.specpath_label.setText(f'Spec路径：{directory}')

    def start_pack(self):
        script_path = self.script_label.text().split('：')[-1]
        distpath = self.distpath_label.text().split('：')[-1]
        workpath = self.workpath_label.text().split('：')[-1]
        specpath = self.specpath_label.text().split('：')[-1]

        if not script_path:
            self.append_output('请选择有效的Python脚本。')
            return

        command = ['pyinstaller', '--noconfirm']
        if self.onefile_radio.isChecked():
            command.append('--onefile')
        elif self.onedir_radio.isChecked():
            command.append('--onedir')

        if self.windowed_radio.isChecked():
            command.append('--windowed')
        elif self.console_radio.isChecked():
            command.append('--console')

        command.append(script_path)
        if distpath:
            command.extend(['--distpath', distpath])
        if workpath:
            command.extend(['--workpath', workpath])
        if specpath:
            command.extend(['--specpath', specpath])

        self.pack_thread = PackThread(command)
        self.pack_thread.output_signal.connect(self.append_output)
        self.pack_thread.start()

    def append_output(self, text):
        self.output_text.append(text)

if __name__ == '__main__':
    app = QApplication(sys.argv)
    main_window = MainWindow()
    main_window.show()
    sys.exit(app.exec_())
