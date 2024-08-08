# -*- coding: utf-8 -*-

from PyQt5.QtWidgets import QApplication

def apply_stylesheet(app):
    # 设置全局样式
    app.setStyleSheet("""
        QWidget {
            background-color: #f0f0f0;
        }
        QPushButton {
            background-color: #007bff;
            color: white;
            border-style: outset;
            border-width: 2px;
            border-radius: 10px;
            border-color: beige;
            font: bold 14px;
            min-width: 10em;
            padding: 6px;
        }
        QPushButton:hover {
            background-color: #0056b3;
            border-style: inset;
        }
        QPushButton:pressed {
            background-color: #004494;
            border-style: inset;
        }
        QLineEdit, QTextEdit {
            border: 1px solid #a0a0a0;
            border-radius: 5px;
            padding: 5px;
        }
        QLabel {
            font-size: 14px;
        }
        QStatusBar {
            font-size: 12px;
            color: #333;
        }
    """)
