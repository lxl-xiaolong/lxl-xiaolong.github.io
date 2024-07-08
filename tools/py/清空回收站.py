import tkinter as tk
from tkinter import messagebox
import subprocess

def clear_recycle_bin():
    # 显示确认对话框
    if messagebox.askyesno("确认", "您确定要清空回收站吗？\n\n此操作将永久删除回收站中的所有内容。"):
        # 如果用户点击“是”，则执行清空回收站的命令
        try:
            # 使用 subprocess.run 执行命令，确保 shell 参数为 True
            result = subprocess.run(["cmd.exe", "/c", "echo y | powershell Clear-RecycleBin"], shell=True, check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
            messagebox.showinfo("成功", "回收站已成功清空。")
        except subprocess.CalledProcessError as e:
            # 如果命令执行失败，捕获 CalledProcessError 异常
            messagebox.showerror("错误", f"清空回收站时发生错误。\n\n错误信息：\n{e.stderr}")
        except Exception as e:
            # 捕获其他可能的异常
            messagebox.showerror("异常", f"执行过程中发生异常。\n\n异常信息：\n{str(e)}")
    else:
        # 如果用户点击“否”，则显示取消信息
        messagebox.showinfo("取消", "清空回收站的操作已取消。")

# 创建主窗口
root = tk.Tk()
root.title("清空回收站")
root.geometry("400x200")  # 设置窗口大小
root.resizable(False, False)  # 禁止调整窗口大小

# 添加清空按钮
clear_button = tk.Button(root, text="清空回收站", command=clear_recycle_bin, bg="red", fg="white")
clear_button.pack(pady=20)

# 启动GUI
root.mainloop()
