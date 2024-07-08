import sys
import subprocess
from PyQt5.QtWidgets import QApplication, QWidget, QVBoxLayout, QLabel, QPushButton, QLineEdit, QListWidget, QListWidgetItem

class PowerSchemeManager(QWidget):
    def __init__(self):
        super().__init__()
        self.initUI()

    def initUI(self):
        self.setWindowTitle('电源方案管理')
        self.setGeometry(100, 100, 300, 400)

        # 布局
        layout = QVBoxLayout()

        # 标签
        self.label = QLabel('电源方案列表')
        layout.addWidget(self.label)

        # 电源方案列表
        self.listWidget = QListWidget()
        layout.addWidget(self.listWidget)

        # 刷新按钮
        self.refreshButton = QPushButton('刷新')
        self.refreshButton.clicked.connect(self.get_power_schemes)
        layout.addWidget(self.refreshButton)

        # 输入GUID的行编辑
        self.guidInput = QLineEdit()
        layout.addWidget(self.guidInput)

        # 删除按钮
        self.deleteButton = QPushButton('删除')
        self.deleteButton.clicked.connect(self.delete_power_scheme)
        layout.addWidget(self.deleteButton)

        self.setLayout(layout)

    def get_power_schemes(self):
        # 清空当前列表
        self.listWidget.clear()
        # 获取电源方案列表
        try:
            output = subprocess.check_output('powercfg /list', shell=True, text=True)
            schemes = output.split('GUID:')[1:]
            for scheme in schemes:
                guid = scheme.split('(')[0].strip()
                name = scheme.split('(')[1].split(')')[0].strip()
                item = QListWidgetItem(f"{name} ({guid})")
                self.listWidget.addItem(item)
        except subprocess.CalledProcessError as e:
            self.label.setText('获取电源方案出错')

    def delete_power_scheme(self):
        # 获取选中的电源方案GUID
        selected_items = self.listWidget.selectedItems()
        if not selected_items:
            self.label.setText('请选择一个电源方案')
            return
        guid = selected_items[0].text().split(' (')[1].split(')')[0]
        # 删除电源方案
        try:
            subprocess.check_output(f'powercfg /delete {guid}', shell=True, text=True)
            self.label.setText('电源方案删除成功')
            self.get_power_schemes()  # 刷新列表
        except subprocess.CalledProcessError as e:
            self.label.setText('电源方案删除失败')

if __name__ == '__main__':
    app = QApplication(sys.argv)
    manager = PowerSchemeManager()
    manager.show()
    sys.exit(app.exec_())
