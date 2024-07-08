import tkinter as tk
from tkinter import filedialog
import os
import re
import datetime

def add_timestamp_to_files(file_paths):
    """Add a timestamp to the end of each file in the list, replacing any existing timestamp."""
    timestamp_pattern = re.compile(r"_(\d{14})\.")
    timestamp = datetime.datetime.now().strftime("%Y%m%d%H%M%S")
    
    for file_path in file_paths:
        file_dir, file_name = os.path.split(file_path)
        # Remove existing timestamp if present
        new_file_name_without_timestamp = timestamp_pattern.sub('.', file_name)
        new_file_name = f"{new_file_name_without_timestamp.split('.')[0]}_{timestamp}.{new_file_name_without_timestamp.split('.')[-1]}"
        new_file_path = os.path.join(file_dir, new_file_name)
        os.rename(file_path, new_file_path)

def browse_files():
    """Let the user browse and select files, then add timestamp to the selected files."""
    file_paths = filedialog.askopenfilenames()
    if file_paths:
        add_timestamp_to_files(file_paths)
        label_result.config(text="时间戳已添加到文件名。")
    else:
        label_result.config(text="没有选择文件。")

# Create the main window
root = tk.Tk()
root.title("添加时间戳到文件名")

# Create a label
label_info = tk.Label(root, text="选择要添加时间戳的文件：")
label_info.pack()

# Create a button to browse files
button_browse = tk.Button(root, text="浏览文件", command=browse_files)
button_browse.pack()

# Create a label to show the result
label_result = tk.Label(root, text="")
label_result.pack()

# Run the GUI loop
root.mainloop()
