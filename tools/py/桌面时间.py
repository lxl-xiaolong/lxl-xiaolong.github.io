import tkinter as tk
import time

# 设置字体和颜色
FONT_FAMILY = 'Helvetica'
CLOCK_FONT_SIZE = 48
DATE_FONT_SIZE = 24
BACKGROUND_COLOR = 'white'
FOREGROUND_COLOR = 'black'


def update_time():
    # 获取当前时间和日期
    current_time = time.strftime('%H:%M:%S')
    current_date = time.strftime('%Y-%m-%d')
    # 更新标签文字
    clock_label.config(text=current_time)
    date_label.config(text=current_date)
    # 每隔1000毫秒（1秒）调用一次update_time函数
    clock_label.after(1000, update_time)


# 创建主窗口
root = tk.Tk()
# 设置窗口标题
root.title("桌面时钟")

# 设置窗口的背景色
root.configure(bg=BACKGROUND_COLOR)

# 创建一个标签用于显示时间
clock_label = tk.Label(root, font=(FONT_FAMILY, CLOCK_FONT_SIZE), bg=BACKGROUND_COLOR, fg=FOREGROUND_COLOR)
# 将时间标签放置在窗口上
clock_label.grid(row=0, column=0, sticky='nsew')

# 创建一个标签用于显示日期
date_label = tk.Label(root, font=(FONT_FAMILY, DATE_FONT_SIZE), bg=BACKGROUND_COLOR, fg=FOREGROUND_COLOR)
# 将日期标签放置在窗口上
date_label.grid(row=1, column=0, sticky='nsew')

# 调用update_time函数开始更新时间和日期
update_time()

# 配置网格布局，使标签可以扩展
root.grid_rowconfigure(0, weight=1)
root.grid_rowconfigure(1, weight=1)
root.grid_columnconfigure(0, weight=1)

# 运行主循环
root.mainloop()
