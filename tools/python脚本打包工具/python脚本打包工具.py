import sys
import os
import threading
from PyQt5.QtWidgets import QApplication, QMainWindow, QPushButton, QLabel, QLineEdit, QTextEdit, QFileDialog, QStatusBar, QVBoxLayout, QWidget, QMessageBox
from PyQt5.QtCore import QThread, pyqtSignal

class SetupGenerator(QMainWindow):
    def __init__(self):
        super().__init__()
        self.initUI()

    def initUI(self):
        self.setWindowTitle('Python脚本打包工具')
        self.setGeometry(100, 100, 600, 400)

        layout = QVBoxLayout()

        # 上传Python脚本按钮
        self.uploadButton = QPushButton('上传Python脚本', self)
        self.uploadButton.clicked.connect(self.uploadScript)
        layout.addWidget(self.uploadButton)

        # 输入字段
        self.nameLabel = QLabel('名称:', self)
        self.nameEdit = QLineEdit(self)
        layout.addWidget(self.nameLabel)
        layout.addWidget(self.nameEdit)

        self.versionLabel = QLabel('版本:', self)
        self.versionEdit = QLineEdit(self)
        layout.addWidget(self.versionLabel)
        layout.addWidget(self.versionEdit)

        self.descriptionLabel = QLabel('描述:', self)
        self.descriptionEdit = QLineEdit(self)
        layout.addWidget(self.descriptionLabel)
        layout.addWidget(self.descriptionEdit)

        self.includesLabel = QLabel('includes:', self)
        self.includesEdit = QLineEdit(self)
        layout.addWidget(self.includesLabel)
        layout.addWidget(self.includesEdit)

        self.excludesLabel = QLabel('excludes:', self)
        self.excludesEdit = QLineEdit(self)
        layout.addWidget(self.excludesLabel)
        layout.addWidget(self.excludesEdit)

        # 选择资源文件夹按钮
        self.resourcesButton = QPushButton('选择resources文件夹源路径', self)
        self.resourcesButton.clicked.connect(self.selectResources)
        layout.addWidget(self.resourcesButton)

        self.resourcesTargetLabel = QLabel('打包后resources文件夹目标路径:', self)
        self.resourcesTargetEdit = QLineEdit(self)
        layout.addWidget(self.resourcesTargetLabel)
        layout.addWidget(self.resourcesTargetEdit)

        # 生成setup.py文件按钮
        self.generateButton = QPushButton('生成setup.py文件', self)
        self.generateButton.clicked.connect(self.generateSetupFile)
        layout.addWidget(self.generateButton)

        # 开始打包按钮
        self.packButton = QPushButton('开始打包', self)
        self.packButton.clicked.connect(self.startPack)
        layout.addWidget(self.packButton)

        # 打包输出文本框
        self.outputTextEdit = QTextEdit(self)
        self.outputTextEdit.setReadOnly(True)
        layout.addWidget(self.outputTextEdit)

        # 状态栏
        self.statusBar = QStatusBar()
        self.setStatusBar(self.statusBar)

        container = QWidget()
        container.setLayout(layout)
        self.setCentralWidget(container)

        self.scriptPath = None
        self.resourcesPath = None

    def uploadScript(self):
        options = QFileDialog.Options()
        fileName, _ = QFileDialog.getOpenFileName(self, "上传Python脚本", "", "Python Files (*.py);;All Files (*)", options=options)
        if fileName:
            self.scriptPath = fileName
            self.statusBar.showMessage(f"脚本上传成功: {fileName}")

    def selectResources(self):
        folderName = QFileDialog.getExistingDirectory(self, "选择resources文件夹源路径")
        if folderName:
            self.resourcesPath = folderName
            self.statusBar.showMessage(f"资源文件夹选择成功: {folderName}")

    def generateSetupFile(self):
        if not self.scriptPath:
            QMessageBox.warning(self, '错误', '请先上传Python脚本。')
            return

        name = self.nameEdit.text()
        version = self.versionEdit.text()
        description = self.descriptionEdit.text()
        includes = self.includesEdit.text().split(',') if self.includesEdit.text() else []
        excludes = self.excludesEdit.text().split(',') if self.excludesEdit.text() else []
        include_files = [(self.resourcesPath, self.resourcesTargetEdit.text())] if self.resourcesPath and self.resourcesTargetEdit.text() else []

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

executables = [Executable("{self.scriptPath}", base=base)]

setup(
    name="{name}",
    version="{version}",
    description="{description}",
    options=options,
    executables=executables
)
'''

        setup_path = os.path.join(os.path.dirname(self.scriptPath), 'setup.py')
        with open(setup_path, 'w', encoding='utf-8') as file:
            file.write(setup_content)
        self.statusBar.showMessage(f"setup.py文件生成成功: {setup_path}")

    def startPack(self):
        if not self.scriptPath:
            QMessageBox.warning(self, '错误', '请先上传Python脚本。')
            return

        setup_path = os.path.join(os.path.dirname(self.scriptPath), 'setup.py')
        if not os.path.exists(setup_path):
            QMessageBox.warning(self, '错误', '请先生成setup.py文件。')
            return

        self.packThread = PackThread(setup_path)
        self.packThread.output.connect(self.appendOutput)
        self.packThread.start()

    def appendOutput(self, text):
        self.outputTextEdit.append(text)

class PackThread(QThread):
    output = pyqtSignal(str)

    def __init__(self, setup_path):
        super().__init__()
        self.setup_path = setup_path

    def run(self):
        os.chdir(os.path.dirname(self.setup_path))
        process = os.popen(f'python {self.setup_path} build')
        while True:
            line = process.readline()
            if not line:
                break
            self.output.emit(line.strip())

if __name__ == '__main__':
    app = QApplication(sys.argv)
    ex = SetupGenerator()
    ex.show()
    sys.exit(app.exec_())
