import os
import shutil
from tkinter import Tk, Button, Listbox, filedialog, Checkbutton, Label, Scrollbar, StringVar, YES, BOTH, END


def organize_files(directory, ignore_files):
    # 获取指定目录下的所有文件
    for filename in os.listdir(directory):
        # 如果文件在忽略列表中，则跳过
        if filename in ignore_files:
            continue
        # 获取文件后缀
        file_extension = os.path.splitext(filename)[1]
        # 如果后缀不为空
        if file_extension:
            # 创建以文件后缀为名的文件夹
            folder_name = file_extension[1:]  # 移除点号
            folder_path = os.path.join(directory, folder_name)
            if not os.path.exists(folder_path):
                os.makedirs(folder_path)
            # 移动文件到相应文件夹
            shutil.move(os.path.join(directory, filename), os.path.join(folder_path, filename))


def select_directory():
    # 打开文件夹选择对话框
    directory = filedialog.askdirectory()
    if directory:
        directory_var.set(directory)
        update_file_list(directory)


def update_file_list(directory):
    # 清空列表框
    file_list.delete(0, END)
    # 获取指定目录下的所有文件
    files = [f for f in os.listdir(directory) if os.path.isfile(os.path.join(directory, f))]
    # 将文件添加到列表框
    for file in files:
        file_list.insert(END, file)


def toggle_ignore_file():
    # 获取当前选中的文件
    selection = file_list.curselection()
    # 获取选中的文件名
    selected_files = [file_list.get(i) for i in selection]
    # 检查文件是否已在忽略列表中
    for file in selected_files:
        if file in ignore_files:
            ignore_files.remove(file)
        else:
            ignore_files.append(file)


def start_organizing():
    directory = directory_var.get()
    if directory:
        organize_files(directory, ignore_files)
        status_label.config(text="文件整理完成！")


# 创建主窗口
root = Tk()
root.title("文件整理工具")

# 创建变量
directory_var = StringVar()
ignore_files = []

# 创建按钮，用于选择文件夹
select_button = Button(root, text="选择文件夹", command=select_directory)
select_button.pack(pady=10)

# 创建列表框和滚动条
file_list = Listbox(root, selectmode='multiple')
scrollbar = Scrollbar(root, orient='vertical', command=file_list.yview)
file_list.config(yscrollcommand=scrollbar.set)
scrollbar.pack(side='right', fill='y')
file_list.pack(side='left', fill='both', expand=YES)

# 创建检查按钮，用于切换忽略文件
toggle_ignore_button = Button(root, text="切换忽略文件", command=toggle_ignore_file)
toggle_ignore_button.pack(pady=10)

# 创建开始整理按钮
start_button = Button(root, text="开始整理", command=start_organizing)
start_button.pack(pady=10)

# 创建状态标签
status_label = Label(root, text="")
status_label.pack(pady=10)

# 运行主循环
root.mainloop()
