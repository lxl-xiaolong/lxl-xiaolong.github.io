import sys
import subprocess
from PyQt5.QtCore import QThread, pyqtSignal
from PyQt5.QtWidgets import QApplication, QMainWindow, QPushButton, QTextEdit, QLineEdit, QComboBox, QVBoxLayout, QWidget, QMessageBox

class CommandThread(QThread):
    signal_output = pyqtSignal(str)
    signal_finished = pyqtSignal()

    def __init__(self, command):
        super().__init__()
        self.command = command

    def run(self):
        try:
            process = subprocess.Popen(self.command, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True, bufsize=1)
            while True:
                line = process.stdout.readline()
                if not line:
                    break
                self.signal_output.emit(line.strip())
            process.stdout.close()
            process.wait()
        except Exception as e:
            self.signal_output.emit(str(e))
        finally:
            self.signal_finished.emit()

class PipManager(QMainWindow):
    def __init__(self):
        super().__init__()
        self.running_command = False
        self.initUI()

    def initUI(self):
        self.setWindowTitle('Pip Manager')
        self.setGeometry(100, 100, 600, 400)

        self.outputTextEdit = QTextEdit()
        self.outputTextEdit.setReadOnly(True)

        self.packageLineEdit = QLineEdit()

        self.sourceComboBox = QComboBox()
        self.load_sources()

        self.upgradePipButton = QPushButton('升级pip版本')
        self.upgradePipButton.clicked.connect(self.upgrade_pip)

        self.installButton = QPushButton('安装包')
        self.installButton.clicked.connect(self.install_package)

        self.uninstallButton = QPushButton('卸载包')
        self.uninstallButton.clicked.connect(self.uninstall_package)

        self.freezeButton = QPushButton('列出所有包的版本信息')
        self.freezeButton.clicked.connect(self.freeze_packages)

        self.clearButton = QPushButton('清除输出')
        self.clearButton.clicked.connect(self.clear_output)

        self.cancelButton = QPushButton('取消')
        self.cancelButton.clicked.connect(self.cancel_command)
        self.cancelButton.setEnabled(False)

        layout = QVBoxLayout()
        layout.addWidget(self.sourceComboBox)
        layout.addWidget(self.packageLineEdit)
        layout.addWidget(self.upgradePipButton)
        layout.addWidget(self.installButton)
        layout.addWidget(self.uninstallButton)
        layout.addWidget(self.freezeButton)
        layout.addWidget(self.clearButton)
        layout.addWidget(self.cancelButton)
        layout.addWidget(self.outputTextEdit)

        centralWidget = QWidget()
        centralWidget.setLayout(layout)
        self.setCentralWidget(centralWidget)

    def load_sources(self):
        import json
        with open('resources\\pip_sources.json', 'r', encoding='utf-8') as file:
            sources = json.load(file)
            for source in sources:
                self.sourceComboBox.addItem(source['name'], source['url'])

    def show_output(self, output):
        self.outputTextEdit.append(output)

    def show_error(self, error):
        QMessageBox.critical(self, '错误', error)

    def run_command(self, command):
        if self.running_command:
            return
        self.running_command = True
        self.disable_ui_elements()
        self.commandThread = CommandThread(command)
        self.commandThread.signal_output.connect(self.show_output)
        self.commandThread.signal_finished.connect(self.command_finished)
        self.commandThread.start()

    def upgrade_pip(self):
        pip_source = self.sourceComboBox.currentData()
        self.run_command(['python', '-m', 'pip', 'install', '-U', 'pip', '-i', pip_source])

    def install_package(self):
        package_name = self.packageLineEdit.text().strip()
        if not package_name:
            self.show_error('请输入要安装的包名')
            return
        pip_source = self.sourceComboBox.currentData()
        self.run_command(['python', '-m', 'pip', 'install', '-U', package_name, '-i', pip_source])

    def uninstall_package(self):
        package_name = self.packageLineEdit.text().strip()
        if not package_name:
            self.show_error('请输入要卸载的包名')
            return
        self.run_command(['python', '-m', 'pip', 'uninstall', package_name, '-y'])

    def freeze_packages(self):
        self.run_command(['python', '-m', 'pip', 'freeze'])

    def clear_output(self):
        self.outputTextEdit.clear()

    def cancel_command(self):
        if self.running_command:
            self.commandThread.terminate()
            self.commandThread = None
            self.running_command = False
            self.enable_ui_elements()

    def command_finished(self):
        self.running_command = False
        self.enable_ui_elements()

    def disable_ui_elements(self):
        self.sourceComboBox.setEnabled(False)
        self.packageLineEdit.setEnabled(False)
        self.upgradePipButton.setEnabled(False)
        self.installButton.setEnabled(False)
        self.uninstallButton.setEnabled(False)
        self.freezeButton.setEnabled(False)
        self.clearButton.setEnabled(False)
        self.cancelButton.setEnabled(True)

    def enable_ui_elements(self):
        self.sourceComboBox.setEnabled(True)
        self.packageLineEdit.setEnabled(True)
        self.upgradePipButton.setEnabled(True)
        self.installButton.setEnabled(True)
        self.uninstallButton.setEnabled(True)
        self.freezeButton.setEnabled(True)
        self.clearButton.setEnabled(True)
        self.cancelButton.setEnabled(False)

if __name__ == '__main__':
    app = QApplication(sys.argv)
    mainWin = PipManager()
    mainWin.show()
    sys.exit(app.exec_())
