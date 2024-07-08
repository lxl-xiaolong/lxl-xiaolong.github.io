import sys
import subprocess
from PyQt5.QtWidgets import QApplication, QMainWindow, QWidget, QVBoxLayout, QPushButton, QLineEdit, QLabel, QComboBox
import os

class PipManager(QMainWindow):
    def __init__(self):
        super().__init__()

        # 设置窗口标题和大小
        self.setWindowTitle('Pip 包管理工具')
        self.setGeometry(100, 100, 300, 200)

        # 创建一个垂直布局
        layout = QVBoxLayout()

        # 添加一个按钮来升级pip
        self.upgrade_pip_button = QPushButton('升级pip')
        self.upgrade_pip_button.clicked.connect(self.upgrade_pip)
        layout.addWidget(self.upgrade_pip_button)

        # 添加一个下拉列表来选择pip源
        self.pip_source_label = QLabel('选择pip源：')
        layout.addWidget(self.pip_source_label)
        self.pip_sources = QComboBox()
        self.load_pip_sources()  # 从文件加载pip源
        layout.addWidget(self.pip_sources)

        # 添加一个文本框和一个按钮来安装包
        self.package_name_label = QLabel('安装包名：')
        layout.addWidget(self.package_name_label)
        self.package_name_input = QLineEdit()
        layout.addWidget(self.package_name_input)
        self.install_package_button = QPushButton('安装包')
        self.install_package_button.clicked.connect(self.install_package)
        layout.addWidget(self.install_package_button)

        # 创建一个中心小部件并将其布局设置为之前创建的布局
        central_widget = QWidget()
        central_widget.setLayout(layout)
        self.setCentralWidget(central_widget)

    def load_pip_sources(self):
        # 从文件加载pip源
        sources_file = 'pip_sources.txt'
        if os.path.exists(sources_file):
            with open(sources_file, 'r') as file:
                sources = file.readlines()
                sources = [source.strip() for source in sources if source.strip()]  # 去除空行和前后的空格
                self.pip_sources.addItems(sources)

    def upgrade_pip(self):
        # 使用用户选择的源升级pip
        source = self.pip_sources.currentText()
        try:
            subprocess.run(['python', '-m', 'pip', 'install', '-U', 'pip', '-i', source])
            self.show_message("pip 升级成功")
        except FileNotFoundError:
            self.show_message("错误：找不到 'python' 命令")

    def install_package(self):
        package_name = self.package_name_input.text()
        if package_name:
            # 使用选定的源安装包
            source = self.pip_sources.currentText()
            try:
                subprocess.run(['python', '-m', 'pip', 'install', '-i', source, package_name])
                self.show_message(f"{package_name} 安装成功")
            except FileNotFoundError:
                self.show_message("错误：找不到 'python' 命令")

    def show_message(self, message):
        # 显示消息框
        from PyQt5.QtWidgets import QMessageBox
        msg_box = QMessageBox()
        msg_box.setWindowTitle("信息")
        msg_box.setText(message)
        msg_box.setIcon(QMessageBox.Information)
        msg_box.setStandardButtons(QMessageBox.Ok)
        msg_box.exec_()

if __name__ == '__main__':
    app = QApplication(sys.argv)
    window = PipManager()
    window.show()
    sys.exit(app.exec_())
