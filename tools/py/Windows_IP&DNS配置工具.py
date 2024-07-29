import sys
import subprocess
import ctypes
from PyQt5.QtWidgets import QApplication, QWidget, QVBoxLayout, QLabel, QLineEdit, QPushButton, QComboBox, QGroupBox, \
    QMessageBox


# 请求管理员权限
def is_admin():
    try:
        return ctypes.windll.shell32.IsUserAnAdmin()
    except:
        return False


if not is_admin():
    # 重新启动程序作为管理员
    ctypes.windll.shell32.ShellExecuteW(None, "runas", sys.executable, " ".join(sys.argv), None, 1)
    sys.exit(1)


class IPConfigurator(QWidget):
    def __init__(self):
        super().__init__()
        self.initUI()

    def initUI(self):
        self.setGeometry(300, 300, 350, 200)
        self.setWindowTitle('IP 配置工具')

        # 布局
        layout = QVBoxLayout()

        # 输入字段
        self.name_field = QLineEdit("以太网 2")
        self.addr_field = QLineEdit("100.101.0.19")
        self.mask_field = QLineEdit("255.255.255.0")
        self.gateway_field = QLineEdit("100.101.0.1")
        self.dns1_field = QLineEdit()
        self.dns2_field = QLineEdit()

        # 输入字段布局
        fields_layout = QVBoxLayout()
        fields_layout.addWidget(QLabel("接口名称:"))
        fields_layout.addWidget(self.name_field)
        fields_layout.addWidget(QLabel("IP地址:"))
        fields_layout.addWidget(self.addr_field)
        fields_layout.addWidget(QLabel("子网掩码:"))
        fields_layout.addWidget(self.mask_field)
        fields_layout.addWidget(QLabel("网关:"))
        fields_layout.addWidget(self.gateway_field)
        fields_layout.addWidget(QLabel("首选DNS:"))
        fields_layout.addWidget(self.dns1_field)
        fields_layout.addWidget(QLabel("备用DNS:"))
        fields_layout.addWidget(self.dns2_field)

        fields_group = QGroupBox("网络配置")
        fields_group.setLayout(fields_layout)

        # 操作按钮
        self.config_button = QPushButton("配置IP")
        self.config_button.clicked.connect(self.configure_ip)

        # 配置类型
        self.config_type = QComboBox()
        self.config_type.addItem("静态IP")
        self.config_type.addItem("动态IP")

        # 添加到主布局
        layout.addWidget(fields_group)
        layout.addWidget(self.config_type)
        layout.addWidget(self.config_button)

        self.setLayout(layout)

    def configure_ip(self):
        name = self.name_field.text()
        addr = self.addr_field.text()
        mask = self.mask_field.text()
        gateway = self.gateway_field.text()
        dns1 = self.dns1_field.text()
        dns2 = self.dns2_field.text()
        config_type = self.config_type.currentText()

        commands = []
        if config_type == "静态IP":
            commands.append(f"netsh interface ipv4 set address \"{name}\" static {addr} {mask} {gateway}")
            if dns1:
                commands.append(f"netsh interface ipv4 set dns \"{name}\" static {dns1}")
            if dns2:
                commands.append(f"netsh interface ipv4 add dns \"{name}\" {dns2}")
        else:
            commands.append(f"netsh interface ip set address \"{name}\" dhcp")
            commands.append(f"netsh interface ip set dns \"{name}\" dhcp")

        for command in commands:
            self.run_command(command)

        # 配置完成后显示消息框
        QMessageBox.information(self, "配置完成", "网络配置已成功应用。")

    def run_command(self, command):
        # 在这里执行系统命令
        try:
            subprocess.run(command, shell=True, check=True)
            print(f"命令执行成功: {command}")
        except subprocess.CalledProcessError as e:
            print(f"命令执行失败: {e.output.decode(sys.getdefaultencoding())}")


if __name__ == '__main__':
    app = QApplication(sys.argv)
    ex = IPConfigurator()
    ex.show()
    sys.exit(app.exec_())
