# -*- coding: utf-8 -*-

import sys
import os
import subprocess
from PyQt5.QtWidgets import (QApplication, QMainWindow, QPushButton, QVBoxLayout, QWidget,
                             QLabel, QLineEdit, QFileDialog, QTextEdit, QStatusBar, QMessageBox)
from PyQt5.QtCore import QThread, pyqtSignal
from resources.bin.styles import apply_stylesheet

class SetupGenerator(QMainWindow):
    def __init__(self):
        super().__init__()
        self.initUI()
        apply_stylesheet(QApplication.instance())  # 应用样式表

    def initUI(self):
        self.setWindowTitle('Python脚本打包工具')
        self.setGeometry(100, 100, 600, 400)

        self.layout = QVBoxLayout()

        self.script_label = QLabel('上传Python脚本:')
        self.script_path = QLineEdit()
        self.script_button = QPushButton('选择Python脚本')
        self.script_button.clicked.connect(self.select_script)

        self.includes_label = QLabel('includes字段（用英文逗号隔开）:')
        self.includes_edit = QLineEdit()

        self.excludes_label = QLabel('excludes字段（用英文逗号隔开）:')
        self.excludes_edit = QLineEdit()

        self.resources_label = QLabel('选择resources文件夹源路径:')
        self.resources_path = QLineEdit()
        self.resources_button = QPushButton('选择resources文件夹')
        self.resources_button.clicked.connect(self.select_resources)

        self.resources_target_label = QLabel('打包后resources文件夹目标路径:')
        self.resources_target_path = QLineEdit()

        self.name_label = QLabel('name字段（必填）:')
        self.name_edit = QLineEdit()

        self.version_label = QLabel('version字段（必填）:')
        self.version_edit = QLineEdit()

        self.description_label = QLabel('description字段（必填）:')
        self.description_edit = QLineEdit()

        self.generate_button = QPushButton('生成setup.py文件')
        self.generate_button.clicked.connect(self.generate_setup)

        self.pack_button = QPushButton('开始打包')
        self.pack_button.clicked.connect(self.start_pack)

        self.output_text = QTextEdit()
        self.output_text.setReadOnly(True)

        self.status_bar = QStatusBar()
        self.setStatusBar(self.status_bar)

        self.layout.addWidget(self.script_label)
        self.layout.addWidget(self.script_path)
        self.layout.addWidget(self.script_button)
        self.layout.addWidget(self.includes_label)
        self.layout.addWidget(self.includes_edit)
        self.layout.addWidget(self.excludes_label)
        self.layout.addWidget(self.excludes_edit)
        self.layout.addWidget(self.resources_label)
        self.layout.addWidget(self.resources_path)
        self.layout.addWidget(self.resources_button)
        self.layout.addWidget(self.resources_target_label)
        self.layout.addWidget(self.resources_target_path)
        self.layout.addWidget(self.name_label)
        self.layout.addWidget(self.name_edit)
        self.layout.addWidget(self.version_label)
        self.layout.addWidget(self.version_edit)
        self.layout.addWidget(self.description_label)
        self.layout.addWidget(self.description_edit)
        self.layout.addWidget(self.generate_button)
        self.layout.addWidget(self.pack_button)
        self.layout.addWidget(self.output_text)

        central_widget = QWidget()
        central_widget.setLayout(self.layout)
        self.setCentralWidget(central_widget)

    def select_script(self):
        options = QFileDialog.Options()
        file_name, _ = QFileDialog.getOpenFileName(self, "选择Python脚本", "", "Python Files (*.py);;All Files (*)", options=options)
        if file_name:
            self.script_path.setText(file_name)

    def select_resources(self):
        directory = QFileDialog.getExistingDirectory(self, "选择resources文件夹")
        if directory:
            self.resources_path.setText(directory)

    def generate_setup(self):
        script_path = self.script_path.text()
        if not script_path:
            QMessageBox.warning(self, '警告', '请先选择Python脚本。')
            return

        includes = self.includes_edit.text().strip()
        includes = includes.split(',') if includes else []

        excludes = self.excludes_edit.text().strip()
        excludes = excludes.split(',') if excludes else []

        resources_path = self.resources_path.text()
        resources_target_path = self.resources_target_path.text()
        include_files = []
        if resources_path and resources_target_path:
            include_files.append((resources_path, resources_target_path))

        name = self.name_edit.text().strip()
        version = self.version_edit.text().strip()
        description = self.description_edit.text().strip()

        if not name or not version or not description:
            QMessageBox.warning(self, '警告', 'name、version、description字段为必填项。')
            return

        setup_content = f'''# -*- coding: utf-8 -*-
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

executables = [Executable("{script_path}", base=base)]

setup(
    name="{name}",
    version="{version}",
    description="{description}",
    options=options,
    executables=executables
)
'''
        setup_file_path = os.path.join(os.path.dirname(script_path), 'setup.py')
        with open(setup_file_path, 'w', encoding='utf-8') as f:
            f.write(setup_content)

        QMessageBox.information(self, '成功', 'setup.py文件生成成功。')

    def start_pack(self):
        options = QFileDialog.Options()
        file_name, _ = QFileDialog.getOpenFileName(self, "选择setup.py文件", "", "Python Files (*.py);;All Files (*)", options=options)
        if file_name:
            self.pack_thread = PackThread(file_name)
            self.pack_thread.signal.connect(self.update_output)
            self.pack_thread.start()

    def update_output(self, text):
        self.output_text.append(text)
        self.status_bar.showMessage(text)

class PackThread(QThread):
    signal = pyqtSignal(str)

    def __init__(self, setup_file):
        super().__init__()
        self.setup_file = setup_file

    def run(self):
        self.signal.emit('开始打包...')
        process = subprocess.Popen(['python', self.setup_file, 'bdist_msi'], stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True)
        for line in process.stdout:
            self.signal.emit(line)
        self.signal.emit('打包完成。')

if __name__ == '__main__':
    app = QApplication(sys.argv)
    ex = SetupGenerator()
    ex.show()
    sys.exit(app.exec_())
