import sys
import json
from PyQt5.QtWidgets import QApplication, QMainWindow, QPushButton, QVBoxLayout, QGridLayout, QWidget, QLabel, QSpacerItem, QSizePolicy

class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle('小龙WINDOWS系统工具箱')
        self.setGeometry(100, 100, 800, 600)
        self.initUI()

    def initUI(self):
        # Load config and copyright data
        with open('resources\\config\\config.json', 'r', encoding='utf-8') as config_file:
            self.config_data = json.load(config_file)
        with open('resources\\config\\copyright.json', 'r', encoding='utf-8') as copyright_file:
            self.copyright_data = json.load(copyright_file)

        # Create central widget and layout
        central_widget = QWidget()
        self.setCentralWidget(central_widget)
        grid_layout = QGridLayout()
        central_widget.setLayout(grid_layout)

        # Add buttons
        for index, command in enumerate(self.config_data['commands']):
            button = QPushButton(command['name'])
            button.clicked.connect(lambda checked, cmd=command['command']: self.execute_command(cmd))
            row = index // 4
            col = index % 4
            grid_layout.addWidget(button, row, col)

        # Add vertical spacer
        vertical_spacer = QSpacerItem(20, 40, QSizePolicy.Minimum, QSizePolicy.Expanding)
        grid_layout.addItem(vertical_spacer, len(self.config_data['commands']) // 4 + 1, 0, 1, 4)

        # Add copyright information
        copyright_label = QLabel(f"作者：{self.copyright_data['author']}  邮箱：{self.copyright_data['email']}  版本：{self.copyright_data['version']}  基于技术：{self.copyright_data['based_on']}")
        grid_layout.addWidget(copyright_label, len(self.config_data['commands']) // 4 + 2, 0, 1, 4)

    def execute_command(self, command):
        import subprocess
        subprocess.Popen(command, shell=True)

if __name__ == '__main__':
    app = QApplication(sys.argv)
    main_window = MainWindow()
    main_window.show()
    sys.exit(app.exec_())
