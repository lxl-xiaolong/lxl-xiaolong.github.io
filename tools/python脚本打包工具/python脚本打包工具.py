import sys
import os
from PyQt5.QtWidgets import QApplication, QWidget, QVBoxLayout, QPushButton, QLabel, QLineEdit, QFileDialog, QTextEdit, QFontDialog, QComboBox, QHBoxLayout
from PyQt5.QtCore import QThread, pyqtSignal
from PyQt5.QtGui import QFont

class SetupBuilder(QWidget):
    def __init__(self):
        super().__init__()
        self.initUI()

    def initUI(self):
        self.setGeometry(300, 300, 800, 800)
        self.setWindowTitle('Python脚本打包工具')

        self.layout = QVBoxLayout()
        self.setLayout(self.layout)

        self.script_path = ""
        self.resources_src_path = ""
        self.resources_dst_path = ""

        self.createWidgets()
        self.createLayout()

    def createWidgets(self):
        self.script_label = QLabel('上传Python脚本:', self)
        self.script_label.setFont(QFont("Arial", 15))
        self.upload_button = QPushButton('上传Python脚本', self)
        self.upload_button.clicked.connect(self.uploadScript)
        self.upload_button.setFont(QFont("Arial", 15))

        self.includes_label = QLabel('includes:', self)
        self.includes_label.setFont(QFont("Arial", 15))
        self.includes_input = QLineEdit(self)
        self.includes_input.setFont(QFont("Arial", 15))

        self.excludes_label = QLabel('excludes:', self)
        self.excludes_label.setFont(QFont("Arial", 15))
        self.excludes_input = QLineEdit(self)
        self.excludes_input.setFont(QFont("Arial", 15))

        self.resources_label = QLabel('resources文件夹路径:', self)
        self.resources_label.setFont(QFont("Arial", 15))
        self.resources_button = QPushButton('选择resources文件夹源路径', self)
        self.resources_button.clicked.connect(self.selectResources)
        self.resources_button.setFont(QFont("Arial", 15))
        self.resources_dst_input = QLineEdit(self)
        self.resources_dst_input.setFont(QFont("Arial", 15))

        self.name_label = QLabel('name:', self)
        self.name_label.setFont(QFont("Arial", 15))
        self.name_input = QLineEdit(self)
        self.name_input.setFont(QFont("Arial", 15))

        self.version_label = QLabel('version:', self)
        self.version_label.setFont(QFont("Arial", 15))
        self.version_input = QLineEdit(self)
        self.version_input.setFont(QFont("Arial", 15))

        self.description_label = QLabel('description:', self)
        self.description_label.setFont(QFont("Arial", 15))
        self.description_input = QLineEdit(self)
        self.description_input.setFont(QFont("Arial", 15))

        self.generate_button = QPushButton('生成setup.py文件', self)
        self.generate_button.clicked.connect(self.generateSetup)
        self.generate_button.setFont(QFont("Arial", 15))

        self.pack_button = QPushButton('开始打包', self)
        self.pack_button.clicked.connect(self.startPack)
        self.pack_button.setFont(QFont("Arial", 15))

        self.console = QTextEdit(self)
        self.console.setReadOnly(True)
        self.console.setFont(QFont("Arial", 15))
        self.console.setFixedHeight(290)
        self.console.setFixedWidth(790)

    def createLayout(self):
        self.layout.addWidget(self.script_label)
        self.layout.addWidget(self.upload_button)
        self.layout.addWidget(self.includes_label)
        self.layout.addWidget(self.includes_input)
        self.layout.addWidget(self.excludes_label)
        self.layout.addWidget(self.excludes_input)
        self.layout.addWidget(self.resources_label)
        self.layout.addWidget(self.resources_button)
        self.layout.addWidget(self.resources_dst_input)
        self.layout.addWidget(self.name_label)
        self.layout.addWidget(self.name_input)
        self.layout.addWidget(self.version_label)
        self.layout.addWidget(self.version_input)
        self.layout.addWidget(self.description_label)
        self.layout.addWidget(self.description_input)
        self.layout.addWidget(self.generate_button)
        self.layout.addWidget(self.pack_button)
        self.layout.addWidget(self.console)

    def uploadScript(self):
        options = QFileDialog.Options()
        options |= QFileDialog.DontUseNativeDialog
        self.script_path, _ = QFileDialog.getOpenFileName(self, "上传Python脚本", "", "Python Files (*.py);;All Files (*)", options=options)
        if self.script_path:
            self.console.append(f"脚本路径: {self.script_path}")

    def selectResources(self):
        self.resources_src_path = QFileDialog.getExistingDirectory(self, "选择resources文件夹源路径")
        if self.resources_src_path:
            self.console.append(f"resources文件夹路径: {self.resources_src_path}")

    def generateSetup(self):
        includes = self.includes_input.text().strip().split(',') if self.includes_input.text().strip() else []
        excludes = self.excludes_input.text().strip().split(',') if self.excludes_input.text().strip() else []
        include_files = [(self.resources_src_path, self.resources_dst_input.text().strip())] if self.resources_src_path and self.resources_dst_input.text().strip() else []
        name = self.name_input.text().strip()
        version = self.version_input.text().strip()
        description = self.description_input.text().strip()

        if not name or not version or not description:
            self.console.append("请填写所有必填字段：name, version, description")
            return

        setup_content = f"""# -*- coding: utf-8 -*-
import sys
from cx_Freeze import setup, Executable

build_exe_options = {{
    "packages": {includes},
    "excludes": {excludes},
    "include_files": {include_files},
    "include_msvcr": True
}}

base = 'Win32GUI' if sys.platform=='win32' else None

options = {{'build_exe': build_exe_options}}

executables = [Executable("{self.script_path}", base=base)]

setup(
    name="{name}",
    version="{version}",
    description="{description}",
    options=options,
    executables=executables
)
"""
        setup_path = os.path.join(os.path.dirname(self.script_path), 'setup.py')
        with open(setup_path, 'w', encoding='utf-8') as file:
            file.write(setup_content)
        self.console.append(f"setup.py 文件已生成: {setup_path}")

    def startPack(self):
        if not self.script_path:
            self.console.append("请先上传Python脚本。")
            return
        options = QFileDialog.Options()
        options |= QFileDialog.DontUseNativeDialog
        setup_path, _ = QFileDialog.getOpenFileName(self, "选择setup.py文件", os.path.dirname(self.script_path), "Python Files (*.py);;All Files (*)", options=options)
        if setup_path:
            self.pack_thread = PackThread(setup_path)
            self.pack_thread.update_signal.connect(self.console.append)
            self.pack_thread.start()

class PackThread(QThread):
    update_signal = pyqtSignal(str)

    def __init__(self, setup_path):
        super().__init__()
        self.setup_path = setup_path

    def run(self):
        os.chdir(os.path.dirname(self.setup_path))
        import subprocess
        process = subprocess.Popen(['python', 'setup.py', 'build'], stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True)
        while True:
            output = process.stdout.readline()
            if output == '' and process.poll() is not None:
                break
            if output:
                self.update_signal.emit(output.strip())
        rc = process.poll()
        self.update_signal.emit(f'打包完成，返回码：{rc}')

if __name__ == '__main__':
    app = QApplication(sys.argv)
    ex = SetupBuilder()
    ex.show()
    sys.exit(app.exec_())
