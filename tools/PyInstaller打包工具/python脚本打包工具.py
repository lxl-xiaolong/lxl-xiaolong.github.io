import sys
import os
import subprocess
from PyQt5.QtWidgets import QApplication, QMainWindow, QPushButton, QVBoxLayout, QHBoxLayout, QLabel, QLineEdit, QFileDialog, QTextEdit, QWidget
from PyQt5.QtCore import QThread, pyqtSignal

class PackThread(QThread):
    output_signal = pyqtSignal(str)

    def __init__(self, py_file, distpath, workpath, specpath):
        super().__init__()
        self.py_file = py_file
        self.distpath = distpath
        self.workpath = workpath
        self.specpath = specpath

    def run(self):
        # 发送开始打包信号
        self.output_signal.emit('开始打包Python脚本...')

        # 构造命令
        cmd = f'pyinstaller --noconfirm --onefile --windowed "{self.py_file}" --distpath "{self.distpath}" --workpath "{self.workpath}" --specpath "{self.specpath}"'

        # 打包Python脚本
        process = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, shell=True, text=True)

        while process.poll() is None:
            output = process.stdout.readline()
            self.output_signal.emit(output.strip())

        self.output_signal.emit('打包完成！')

class PyInstallerGUI(QMainWindow):
    def __init__(self):
        super().__init__()
        self.initUI()
        self.pack_thread = None

    def initUI(self):
        self.setGeometry(100, 100, 600, 400)
        self.setWindowTitle('Python脚本打包工具')

        # 布局
        layout = QVBoxLayout()

        # 选择Python脚本
        self.py_file_label = QLabel('Python脚本：')
        self.py_file_lineedit = QLineEdit()
        self.py_file_button = QPushButton('选择文件')
        self.py_file_button.clicked.connect(self.select_py_file)
        layout.addWidget(self.py_file_label)
        layout.addWidget(self.py_file_lineedit)
        layout.addWidget(self.py_file_button)

        # 输出路径
        self.distpath_label = QLabel('输出路径：')
        self.distpath_lineedit = QLineEdit('output')
        self.distpath_button = QPushButton('选择文件夹')
        self.distpath_button.clicked.connect(self.select_distpath)
        layout.addWidget(self.distpath_label)
        layout.addWidget(self.distpath_lineedit)
        layout.addWidget(self.distpath_button)

        # 工作路径
        self.workpath_label = QLabel('工作路径：')
        self.workpath_lineedit = QLineEdit(f'{os.path.expanduser("~")}/build')
        layout.addWidget(self.workpath_label)
        layout.addWidget(self.workpath_lineedit)

        # spec文件路径
        self.specpath_label = QLabel('spec文件路径：')
        self.specpath_lineedit = QLineEdit(f'{os.path.expanduser("~")}/spec')
        layout.addWidget(self.specpath_label)
        layout.addWidget(self.specpath_lineedit)

        # 打包按钮
        self.pack_button = QPushButton('开始打包')
        self.pack_button.clicked.connect(self.pack_py_file)
        layout.addWidget(self.pack_button)

        # 输出文本框
        self.output_textedit = QTextEdit()
        self.output_textedit.setReadOnly(True)
        layout.addWidget(self.output_textedit)

        # 设置中心布局
        central_widget = QWidget()
        central_widget.setLayout(layout)
        self.setCentralWidget(central_widget)

    def select_py_file(self):
        file_name, _ = QFileDialog.getOpenFileName(self, '选择Python脚本', '', 'Python Files (*.py);;All Files (*)')
        if file_name:
            self.py_file_lineedit.setText(file_name)

    def select_distpath(self):
        dir_name = QFileDialog.getExistingDirectory(self, '选择输出文件夹', '')
        if dir_name:
            self.distpath_lineedit.setText(dir_name)

    def pack_py_file(self):
        py_file = self.py_file_lineedit.text()
        distpath = self.distpath_lineedit.text()
        workpath = self.workpath_lineedit.text()
        specpath = self.specpath_lineedit.text()

        if not py_file:
            self.output_textedit.append('请选择Python脚本！')
            return

        if not os.path.exists(distpath):
            os.makedirs(distpath)

        if not os.path.exists(workpath):
            os.makedirs(workpath)

        if not os.path.exists(specpath):
            os.makedirs(specpath)

        self.pack_thread = PackThread(py_file, distpath, workpath, specpath)
        self.pack_thread.output_signal.connect(self.update_output)
        self.pack_thread.start()

    def update_output(self, output):
        self.output_textedit.append(output)

if __name__ == '__main__':
    app = QApplication(sys.argv)
    gui = PyInstallerGUI()
    gui.show()
    sys.exit(app.exec_())
