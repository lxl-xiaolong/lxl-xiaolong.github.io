import sys
import subprocess
import json
from PyQt5.QtWidgets import *
from PyQt5.QtCore import QThread, pyqtSignal

# pip源配置文件路径
PIP_SOURCES_FILE = 'pip_sources.json'

# 主窗口类
class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()
        self.initUI()

    def initUI(self):
        self.setWindowTitle('Pip包管理工具')

        # 创建UI组件
        self.pip_source_combo = QComboBox()
        self.load_pip_sources()
        
        self.upgrade_pip_button = QPushButton('升级pip版本')
        self.upgrade_pip_button.clicked.connect(self.upgrade_pip)
        
        self.install_package_button = QPushButton('安装包')
        self.install_package_input = QLineEdit()
        self.install_package_button.clicked.connect(self.install_package)
        
        self.uninstall_package_button = QPushButton('卸载包')
        self.uninstall_package_input = QLineEdit()
        self.uninstall_package_button.clicked.connect(self.uninstall_package)
        
        self.list_packages_button = QPushButton('列出所有包的版本信息')
        self.list_packages_button.clicked.connect(self.list_packages)
        
        self.upgrade_pip_output_text = QTextEdit()
        self.install_output_text = QTextEdit()
        self.uninstall_output_text = QTextEdit()
        self.list_packages_text = QTextEdit()

        # 设置布局
        layout = QVBoxLayout()
        layout.addWidget(self.pip_source_combo)
        layout.addWidget(self.upgrade_pip_button)
        layout.addWidget(self.install_package_input)
        layout.addWidget(self.install_package_button)
        layout.addWidget(self.uninstall_package_input)
        layout.addWidget(self.uninstall_package_button)
        layout.addWidget(self.list_packages_button)
        layout.addWidget(self.upgrade_pip_output_text)
        layout.addWidget(self.install_output_text)
        layout.addWidget(self.uninstall_output_text)
        layout.addWidget(self.list_packages_text)

        central_widget = QWidget()
        central_widget.setLayout(layout)
        self.setCentralWidget(central_widget)

    def load_pip_sources(self):
        # 读取pip源配置文件
        with open(PIP_SOURCES_FILE, 'r', encoding='utf-8') as f:
            sources = json.load(f)
            for source in sources:
                self.pip_source_combo.addItem(source['name'], source['url'])

    def run_command(self, command):
        # 创建并启动命令线程
        self.thread = CommandThread(command)
        self.thread.output_signal.connect(self.append_output)
        self.thread.error_signal.connect(self.append_error)
        self.thread.start()

    def append_output(self, text):
        # 将输出添加到对应的文本框
        self.sender().output_text.append(text)

    def append_error(self, text):
        # 将错误信息添加到对应的文本框
        self.sender().error_text.append(text)

    def upgrade_pip(self):
        self.upgrade_pip_output_text.clear()
        source_url = self.pip_source_combo.currentData()
        command = ['python', '-m', 'pip', 'install', '-U', 'pip', '-i', source_url]
        self.run_command(command)
        self.thread.output_text = self.upgrade_pip_output_text
        self.thread.error_text = self.upgrade_pip_output_text

    def install_package(self):
        self.install_output_text.clear()
        package_name = self.install_package_input.text()
        source_url = self.pip_source_combo.currentData()
        command = ['python', '-m', 'pip', 'install', package_name, '-i', source_url]
        self.run_command(command)
        self.thread.output_text = self.install_output_text
        self.thread.error_text = self.install_output_text

    def uninstall_package(self):
        self.uninstall_output_text.clear()
        package_name = self.uninstall_package_input.text()
        command = ['python', '-m', 'pip', 'uninstall', package_name, '-y']
        self.run_command(command)
        self.thread.output_text = self.uninstall_output_text
        self.thread.error_text = self.uninstall_output_text

    def list_packages(self):
        self.list_packages_text.clear()
        command = ['python', '-m', 'pip', 'list']
        self.run_command(command)
        self.thread.output_text = self.list_packages_text
        self.thread.error_text = self.list_packages_text

    def closeEvent(self, event):
        self.thread.terminate()
        super().closeEvent(event)

# 命令线程类
class CommandThread(QThread):
    output_signal = pyqtSignal(str)
    error_signal = pyqtSignal(str)

    def __init__(self, command):
        super().__init__()
        self.command = command
        self.output_text = None
        self.error_text = None

    def run(self):
        try:
            process = subprocess.Popen(self.command, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
            for line in process.stdout:
                self.output_signal.emit(line)
            for line in process.stderr:
                self.error_signal.emit(line)
        except Exception as e:
            self.error_signal.emit(str(e))

# 主函数
def main():
    app = QApplication(sys.argv)
    main_window = MainWindow()
    main_window.show()
    sys.exit(app.exec_())

if __name__ == '__main__':
    main()
