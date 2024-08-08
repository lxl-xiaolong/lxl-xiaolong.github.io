# styles.py

def get_stylesheet():
    return """
    QPushButton {
        font-size: 14px;
        border-style: outset;
        border-width: 2px;
        border-radius: 10px;
        border-color: beige;
        font: bold;
        min-width: 10em;
        padding: 6px;
    }

    QPushButton:hover {
        background-color: #B0E0E6;
        border-style: inset;
    }

    QPushButton:pressed {
        background-color: #87CEFA;
        border-style: inset;
    }

    QLabel {
        font-size: 12px;
        color: #555;
        margin: 5px;
    }

    QMainWindow {
        background-color: #F5F5F5;
    }
    """
