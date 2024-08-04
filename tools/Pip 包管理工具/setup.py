# -*- coding: utf-8 -*-
import sys
from cx_Freeze import setup, Executable

build_exe_options = {
    "packages": [],
    "excludes": [],
    "include_files": [('D:/Develop/Python/Pip_包管理工具/resources', 'resources')],
    "include_msvcr": True
}

base = 'Win32GUI' if sys.platform=='win32' else None

options = {'build_exe': build_exe_options}

executables = [Executable("D:/Develop/Python/Pip_包管理工具/Pip_包管理工具.py", base=base)]

setup(
    name="Pip_包管理工具",
    version="1.0",
    description="Pip包管理工具是一个使用PyQt5库开发的桌面应用程序，它允许用户通过图形界面管理Python包。应用程序提供了升级pip版本、安装、卸载包以及列出所有已安装包的功能。",
    options=options,
    executables=executables
)
