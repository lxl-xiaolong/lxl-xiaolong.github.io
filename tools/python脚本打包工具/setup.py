# -*- coding: utf-8 -*-
import sys
from cx_Freeze import setup, Executable

build_exe_options = {
    "packages": [],
    "excludes": [],
    "include_files": [],
    "include_msvcr": True
}

base = 'Win32GUI' if sys.platform=='win32' else None

options = {'build_exe': build_exe_options}

executables = [Executable("D:/Develop/Python/python脚本打包工具/python脚本打包工具.py", base=base)]

setup(
    name="python脚本打包工具",
    version="1.0",
    description="python脚本打包为可执行文件",
    options=options,
    executables=executables
)
