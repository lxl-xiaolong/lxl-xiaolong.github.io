import sys
import json
from PyQt5.QtCore import Qt
from PyQt5.QtWidgets import QApplication, QMainWindow, QPushButton, QGridLayout, QWidget, QLabel, QSpacerItem, QVBoxLayout, QSizePolicy
from resources.config.styles import get_stylesheet  # 导入样式文件

# 读取配置文件
def read_config(file_path):
    try:
        with open(file_path, 'r', encoding='utf-8') as file:
            return json.load(file)
    except FileNotFoundError:
        print(f"配置文件 {file_path} 未找到。")
        sys.exit(1)
    except json.JSONDecodeError:
        print(f"配置文件 {file_path} 格式错误。")
        sys.exit(1)

# 读取版权信息
def read_copyright(file_path):
    try:
        with open(file_path, 'r', encoding='utf-8') as file:
            return json.load(file)
    except FileNotFoundError:
        print(f"版权文件 {file_path} 未找到。")
        sys.exit(1)
    except json.JSONDecodeError:
        print(f"版权文件 {file_path} 格式错误。")
        sys.exit(1)

# 执行命令
def execute_command(command):
    import subprocess
    subprocess.Popen(command, shell=True)

# 主窗口
class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle('小龙WINDOWS系统工具箱')
        self.setGeometry(100, 100, 800, 600)

        # 应用样式
        self.setStyleSheet(get_stylesheet())

        # 设置布局
        central_widget = QWidget()
        self.setCentralWidget(central_widget)
        grid_layout = QGridLayout(central_widget)

        # 读取配置文件和版权信息
        config = read_config('resources\\config\\config.json')
        copyright = read_copyright('resources\\config\\copyright.json')

        # 创建按钮并添加到布局
        self.buttons = []
        for i, command in enumerate(config['commands']):
            button = QPushButton(command['name'])
            button.clicked.connect(lambda checked, cmd=command['command']: execute_command(cmd))
            grid_layout.addWidget(button, i // 4, i % 4)
            self.buttons.append(button)

        # 添加垂直拉伸项
        vertical_spacer = QSpacerItem(20, 40, QSizePolicy.Minimum, QSizePolicy.Expanding)
        grid_layout.addItem(vertical_spacer, i // 4 + 1, 0, 1, 4)

        # 添加版权信息
        copyright_label = QLabel(f"作者：{copyright['author']} 邮箱：{copyright['email']} 版本：{copyright['version']} 基于技术：{copyright['based_on']}")
        grid_layout.addWidget(copyright_label, i // 4 + 2, 0, 1, 4)

        # 响应式布局
        self.adjust_button_width()

    def adjust_button_width(self):
        max_width = max(button.sizeHint().width() for button in self.buttons)
        for button in self.buttons:
            button.setFixedWidth(max_width)

    def resizeEvent(self, event):
        self.adjust_button_width()
        super().resizeEvent(event)

if __name__ == '__main__':
    app = QApplication(sys.argv)
    window = MainWindow()
    window.show()
    sys.exit(app.exec_())
