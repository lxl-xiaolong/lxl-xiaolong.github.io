import tkinter as tk
from tkinter import filedialog, messagebox
import subprocess
import os
import re

def browse_file():
    file_path = filedialog.askopenfilename()
    if file_path:
        # 只保留xxx.py形式的文件名
        script_name = os.path.splitext(os.path.basename(file_path))[0]
        # 设置entry_script的值
        entry_script.delete(0, tk.END)
        entry_script.insert(0, script_name)

def browse_dir():
    dir_path = filedialog.askdirectory()
    entry_build_dir.delete(0, tk.END)
    entry_build_dir.insert(0, dir_path)

def validate_input():
    app_name = entry_name.get()
    app_version = entry_version.get()
    script_name = entry_script.get()
    python_version = entry_python_version.get().strip()
    build_dir = entry_build_dir.get()
    file_paths = entry_files.get(1.0, tk.END).split('\n')

    if not app_name or not app_version or not script_name or not build_dir:
        messagebox.showerror("错误", "请填写所有必填字段！")
        return False

    if not re.match(r"\d+\.\d+(\.\d+)?", python_version):
        messagebox.showerror("错误", "Python版本格式不正确！")
        return False

    for file_path in file_paths:
        if file_path and not os.path.isfile(file_path):
            messagebox.showerror("错误", f"文件不存在：{file_path}")
            return False

    return True

def create_installer():
    if not validate_input():
        return

    # 获取用户输入的Python版本，如果未输入，则使用默认值3.11.9
    python_version = entry_python_version.get().strip()
    if not python_version:
        python_version = "3.11.9"
    if not re.match(r"\d+\.\d+(\.\d+)?", python_version):
        messagebox.showerror("错误", "Python版本格式不正确！")
        return

    # 获取其他输入变量
    app_name = entry_name.get()
    app_version = entry_version.get()
    script_name = entry_script.get()
    build_dir = entry_build_dir.get()
    file_paths = entry_files.get(1.0, tk.END).split('\n')

    # 确保entry_point是模块:函数的形式
    entry_point = f"{script_name}:py"

    # 创建配置文件
    cfg_content = f"""
[Application]
name={app_name}
version={app_version}
entry_point={entry_point}

[Python]
version={python_version}

[Include]
"""
    for file_path in file_paths:
        if file_path.strip():  # 排除空行
            cfg_content += f"files={file_path.strip()}\n"

    cfg_content += f"""

[Build]
directory={build_dir}
"""

    cfg_file = "installer.cfg"
    with open(cfg_file, "w") as f:
        f.write(cfg_content)

    try:
        subprocess.check_call(['pynsist', cfg_file])
        messagebox.showinfo("成功", "安装程序创建成功！")
    except subprocess.CalledProcessError:
        messagebox.showerror("错误", "创建安装程序时发生错误。")

# 创建GUI和事件绑定等代码
app = tk.Tk()
app.title("PyNSist Installer Builder")

frame = tk.Frame(app)
frame.pack(padx=10, pady=10)

label_name = tk.Label(frame, text="应用名称:")
label_name.grid(row=0, column=0, sticky="e")
entry_name = tk.Entry(frame)
entry_name.grid(row=0, column=1)

label_version = tk.Label(frame, text="版本:")
label_version.grid(row=1, column=0, sticky="e")
entry_version = tk.Entry(frame)
entry_version.grid(row=1, column=1)

label_script = tk.Label(frame, text="Python脚本:")
label_script.grid(row=2, column=0, sticky="e")
entry_script = tk.Entry(frame)
entry_script.grid(row=2, column=1)
button_browse_script = tk.Button(frame, text="浏览", command=browse_file)
button_browse_script.grid(row=2, column=2)

label_python_version = tk.Label(frame, text="Python版本:")
label_python_version.grid(row=3, column=0, sticky="e")
entry_python_version = tk.Entry(frame)
entry_python_version.grid(row=3, column=1)
entry_python_version.insert(0, "3.11.9")  # 设置默认值为3.11.9

label_build_dir = tk.Label(frame, text="构建目录:")
label_build_dir.grid(row=4, column=0, sticky="e")
entry_build_dir = tk.Entry(frame)
entry_build_dir.grid(row=4, column=1)
button_browse_dir = tk.Button(frame, text="浏览", command=browse_dir)
button_browse_dir.grid(row=4, column=2)

label_files = tk.Label(frame, text="其他文件:")
label_files.grid(row=5, column=0, sticky="e")
entry_files = tk.Text(frame, height=5)
entry_files.grid(row=5, column=1, pady=10)
button_browse_files = tk.Button(frame, text="上传其他文件", command=browse_file)
button_browse_files.grid(row=5, column=2)

button_create = tk.Button(frame, text="创建安装程序", command=create_installer)
button_create.grid(row=6, column=1, pady=10)

app.mainloop()
