import sys
import json
from PyQt5.QtWidgets import QApplication, QMainWindow, QPushButton, QGridLayout, QWidget, QVBoxLayout, QStatusBar, QLabel, QSpacerItem, QSizePolicy
from PyQt5.QtGui import QFont
from PyQt5.QtCore import Qt

class SystemToolbox(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle('小龙WINDOWS系统工具箱')
        self.setGeometry(100, 100, 800, 600)
        self.initUI()

    def initUI(self):
        # Load commands from config.json
        with open('resources\\config.json', 'r', encoding='utf-8') as f:
            config = json.load(f)
            self.commands = config['commands']

        # Create central widget and layout
        central_widget = QWidget()
        self.setCentralWidget(central_widget)
        grid_layout = QGridLayout()

        # Create buttons and add to grid layout
        for index, command in enumerate(self.commands):
            button = QPushButton(command['name'])
            button.setFont(QFont('Arial', 12))
            button.clicked.connect(lambda checked, cmd=command['command']: self.run_command(cmd))
            row = index // 4
            col = index % 4
            grid_layout.addWidget(button, row, col)

        # Add vertical spacer
        vertical_spacer = QSpacerItem(20, 40, QSizePolicy.Minimum, QSizePolicy.Expanding)
        grid_layout.addItem(vertical_spacer, len(self.commands) // 4 + 1, 0, 1, 4)

        # Add copyright information
        copyright_label = QLabel('作者：刘小龙\n邮箱：2539223617@qq.com\nBased on Python Pyqt5\n版本：小龙WINDOWS系统工具箱 version 1.0')
        grid_layout.addWidget(copyright_label, len(self.commands) // 4 + 2, 0, 1, 4)

        # Create a vertical layout and add the grid layout
        vertical_layout = QVBoxLayout(central_widget)
        vertical_layout.addLayout(grid_layout)

        # Add status bar
        self.statusBar = QStatusBar()
        self.setStatusBar(self.statusBar)

    def run_command(self, command):
        # Update status bar
        self.statusBar.showMessage(f'Running: {command}')
        # Execute the command
        import subprocess
        subprocess.Popen(command, shell=True)

if __name__ == '__main__':
    app = QApplication(sys.argv)
    ex = SystemToolbox()
    ex.show()
    sys.exit(app.exec_())
