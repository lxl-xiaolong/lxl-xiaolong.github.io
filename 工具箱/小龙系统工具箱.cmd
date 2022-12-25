::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWHreyHcjLQlHcCiNMmyGIrAP4/z0/9a3rVoYRtE3fYPX5pWKJMED+gv0ZsdN
::fBE1pAF6MU+EWHreyHcjLQlHcCiNMmyGIrAP4/z0/9a3rVoYRtE3fYPX5reUKuNd+la1FQ==
::fBE1pAF6MU+EWHreyHcjLQlHcCiNMmyGIrAP4/z0/9a3rVoYRtE3fYPX5qSdbvAAuyU=
::fBE1pAF6MU+EWHreyHcjLQlHcCiNMmyGIrAP4/z0/9a3rVoYRtE3fYPX5qaLLe8F7wv0ZsdN
::fBE1pAF6MU+EWHreyHcjLQlHcCiNMmyGIrAP4/z0/9a3rVoYRtE3fYPX5qOdbvAAuyU=
::fBE1pAF6MU+EWHreyHcjLQlHcCiNMmyGIrAP4/z0/9a3rVoYRtE3fYPX5q2NOuRd+la1FQ==
::fBE1pAF6MU+EWHreyHcjLQlHcCiNMmyGIrAP4/z0/9aDrF5TXew2GA==
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFDdbQgO+GG6pDaET+NT34O2I7EQeW4I=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSTk=
::eBoioBt6dFKZSTk=
::cRo6pxp7LAbNWATEpSI=
::egkzugNsPRvcWATEpSI=
::dAsiuh18IRvcCxnZtBNQ
::cRYluBh/LU+EWAjk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJjZksaHVTMbgs=
::ZQ05rAF9IBncCkqN+0xwdVsHAlTMbTv0VNU=
::ZQ05rAF9IAHYFVzEqQK1+PTdkv2VNWW+CaIPbzsgaDF4J5rY0Qfo/0EKug==
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQInIRVQQxORu7hhgW7jbT8+ag9QJYPMNA==
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATExE0nLQlRSESgJSs/7k2ZOAdyMRPn
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDdbQgO+GG6pDaET+NR+PwUOfLQKXew7d5jIXWdVpzvsb5Ih8HP6UbSL1s4UCXs=
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983

:: ------------------------------------    分割线：以下为主程序代码     -----------------------------------------

@ECHO OFF

CD /D "%~DP0"

MSG %username% 感谢您使用本人制作的windows系统工具箱！
MSG %username% 使用中有任何问题，记得联系我！
MSG %username% 联系方式1（qq邮箱：2539223617@qq.com）
MSG %username% 联系方式2（微信号：Pisces_Mar14_LXL）

:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
    IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    ECHO Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    ECHO Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    ECHO UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    REM 执行到此处就已经获取了管理员权限，然后该干嘛干嘛

setlocal enableextensions enabledelayedexpansion

@COLOR 3E
TITLE 小龙windows系统工具箱
CHCP 936>nul
timeout /t 2 /nobreak >NUL
:kai-shi
CLS
ECHO.
ECHO.                                                      小龙WINDOWS系统工具箱
ECHO.****************************************************************************************************************************************************************
ECHO.                                                    关于本脚本程序的重要说明
ECHO.****************************************************************************************************************************************************************
ECHO.
ECHO. 1. 本windows系统工具箱（以下简称【工具箱】由本人制作，测试，发布。
ECHO.
ECHO. 2. 制作语言：批处理脚本、部分PowerShell脚本。
ECHO.
ECHO. 3. 本工具作者：刘小龙；作者邮箱：2539223617@qq.com。
ECHO.
ECHO. 4. 本工具箱由本人制作并测试，绿色无毒安全，可以放心使用。
ECHO.
ECHO. 5. 警告：未经本人许可，同意或者允许，请勿将本工具箱进行破解，修改（包括修改为恶意程序），传播，搬运，倒卖，盗用，谢谢配合与合作。
ECHO.
ECHO. 6. 当您在使用本工具箱的相应功能前，请您慎重选择，因为你的疏忽大意，操作失误等个人原因而出现的一切问题，均与本人无关，且本人概不负责。
ECHO.
ECHO. 7. 温馨提示 : 在下载所需软件，工具，文档（文件）时，请前往官网，原作者，或者可靠可信的网站下载，以免给您带来不便及不必要的损失。
ECHO.
ECHO.****************************************************************************************************************************************************************
ECHO.
ECHO.                                    使用本工具前，需要您同意重要说明，否则无法继续操作
ECHO.
ECHO.                                           同意请按 Y              不同意请按 N
ECHO.
set sm=
set /p sm=【请直接输入对应字母回车( Y / N )】：
if not "%sm%"=="" set sm=%sm:~0,1%
if /i "%sm%"=="Y" goto next
if /i "%sm%"=="N" goto END
ECHO.
ECHO.输入无效，请重新输入...
timeout /t 2 /nobreak >NUL
ECHO.
goto kai-shi


:next
CLS
ECHO.
ECHO. 显示信息中...
CLS
ECHO.
ECHO. 一 本程序安全吗？是不是恶意程序？
ECHO.
ECHO. 回答：这是个安全的程序工具，不是病毒也不是恶意程序，每个功能都经过本人实机测试，请您放心使用。
ECHO.
ECHO. 二 运行本程序会对系统有影响吗？
ECHO.
ECHO. 回答：本程序所有功能对系统的影响基本可以忽略不计，本人只是把一些功能经过整合做成工具箱的，
ECHO.
ECHO.       这些功能基本不会修改，改变系统设置和系统文件，所以对系统造成影响极低，请大家放心并知晓。
ECHO.
ECHO. 三 使用本程序需要注意什么？
ECHO.    
ECHO.    1. 运行本程序时，程序首先会进入到关于本程序的重要说明，接着将进入到本页面，在您仔细阅读帮相关
ECHO.
ECHO.       事项后，方可进入程序主菜单。
ECHO.
ECHO.    2. 由于本程序部分功能需要管理员权限才能运行，所以本程序开始会尝试自动获取管理员权限。经过本人测试
ECHO.
ECHO.       基本都能成功获取（注意是基本都能，并不保证是一定可以），所以运行本工具前，还请您鼠标右键本工具，选择
ECHO.
ECHO.       以管理员身份运行。当然，如果不打算使用本工具，请忽略该条。
ECHO.
ECHO.    3. 在选择执行相应功能时，请慎重选择并输入该功能对应数字/字母，并且时时刻刻清楚，你此时此刻在干什么，最后不要因为自己的问题
ECHO.
ECHO.       来找我。
ECHO.
ECHO.    4. 该功能前的序号如果是字母，输入时可以不区分大小写。
ECHO.
ECHO.    5. 本程序切勿擅自修改里面的内容，因为你的这种行为发生的一切问题及不良影响，一律与本人无关，且本人概不负责。
ECHO.
ECHO.   
ECHO.    ......暂时没想好写啥，想好了再添加，~_~
ECHO.                                                                                   
ECHO.
ECHO.                                           Copyright (C) 2022 刘小龙 
ECHO.
ECHO.请您按下键盘任意键继续...                                                                                                                                 
PAUSE>NUL
goto MENU


:MENU
CLS
ECHO.
ECHO. *******************************************************************************************************
ECHO.                                    
ECHO.  当前时间：%time:~0,2%时%time:~3,2%分%time:~6,2%秒  
ECHO.
ECHO.  当前日期：%date% 
ECHO.
ECHO.  当前工具箱版本：2022-12-25 下午12:15版 
ECHO.
ECHO.  windows系统工具箱运行路径：%~DP0
ECHO.                                                                                                             
ECHO. *******************************************************************************************************
ECHO.
ECHO. *************************************    请您输入要执行操作前的数字或字母序号，并回车    ************************************
ECHO. 
ECHO. *********************************************** 若要退出，请键入" / "，并回车 ******************************************************
ECHO.
ECHO. ------------------------------------------------------------------------------------------------------------------------------------
ECHO.
ECHO.  程序功能区:
ECHO.
ECHO               0 任务管理器                        A 百度关键词搜索	                    K 网络连接									
ECHO.           
ECHO               1 磁盘清理                          B 检查系统完整性	                    L 查看电脑以前已连接WI-FI名称及密码
ECHO.											
ECHO               2 系统信息                          C 移除系统自带应用(谨慎选择)              M 终止进程(危险功能)									
ECHO.
ECHO               3 windows内存诊断                   D 清理DNS缓存                             N 删除电脑不需要的电源方案   								
ECHO.
ECHO               4 重启资源管理器                    E 清理图标数据库缓存                      P 新版/经典右键菜单栏切换									
ECHO.	
ECHO               5 清空回收站                        F 检查网络连通性                          Q 解决微软商店打不开的问题									
ECHO.
ECHO               6 任务栏时间显示/不显示到秒         G 尝试解决网络无法连接的问题              R win家庭版添加组策略组件
ECHO.
ECHO               7 计算机管理                        H 设备管理器                              S 解决无法运行powershell脚本问题		
ECHO.
ECHO               8 打开组策略                        I 命令提示符                              T 卸载/重装微软商店		
ECHO.
ECHO               9 刷新组策略                        J 控制面板                                U 批量测试dns
ECHO.
ECHO               O 电脑设置固定/自动ip地址、子网掩码、网关、dns地址（测试功能）                V 安全的清理C（系统）盘 
ECHO.
ECHO               Y 解决任务栏无响应的问题            / 退出程序	
ECHO.
ECHO. ------------------------------------------------------------------------------------------------------------------------------------
ECHO.
ECHO. 注意 ：功能 “ P ” 新版/经典右键菜单栏切换仅适用于 win 11 系统！
ECHO.
ECHO         功能 “ 6 ” 任务栏时间显示/不显示到秒仅适用于除 win 11 以外的 windows 系统！
ECHO.
ECHO. ************************************************************************************************************************************
ECHO.
set id=
set /p id=【请您输入并回车】：
if not "%id%"=="" set id=%id:~0,1%
if /i "%id%"=="0" goto 0
if /i "%id%"=="1" goto 1
if /i "%id%"=="2" goto 2
if /i "%id%"=="3" goto 3
if /i "%id%"=="4" goto 4
if /i "%id%"=="5" goto 5
if /i "%id%"=="6" goto 6
if /i "%id%"=="7" goto 7
if /i "%id%"=="8" goto 8
if /i "%id%"=="9" goto 9
if /i "%id%"=="A" goto A
if /i "%id%"=="B" goto B
if /i "%id%"=="C" goto C
if /i "%id%"=="D" goto D
if /i "%id%"=="E" goto E
if /i "%id%"=="F" goto F
if /i "%id%"=="G" goto G
if /i "%id%"=="H" goto H
if /i "%id%"=="I" goto I
if /i "%id%"=="J" goto J
if /i "%id%"=="K" goto K
if /i "%id%"=="L" goto L
if /i "%id%"=="M" goto M
if /i "%id%"=="N" goto N
if /i "%id%"=="O" goto O
if /i "%id%"=="P" goto P
if /i "%id%"=="Q" goto Q
if /i "%id%"=="R" goto R
if /i "%id%"=="S" goto S
if /i "%id%"=="T" goto T
if /i "%id%"=="U" goto U
if /i "%id%"=="V" goto V
if /i "%id%"=="Y" goto Y
if /i "%id%"=="/" goto END
ECHO.
ECHO.输入无效,请重新输入...
timeout /t 2 /nobreak >NUL
goto MENU


:0
CLS
ECHO.
ECHO.打开任务管理器中...
timeout /t 2 /nobreak >NUL
start /max %windir%\system32\taskmgr.exe /7
ECHO.
ECHO.执行完毕，自动返回主菜单...
timeout /t 2 /nobreak >NUL
goto MENU

:1
CLS
ECHO.
ECHO.打开磁盘清理中...
timeout /t 2 /nobreak >NUL
%windir%\system32\cleanmgr.exe
ECHO.
ECHO.执行完毕，自动返回主菜单...
timeout /t 2 /nobreak >NUL
goto MENU

:2
CLS
ECHO.
ECHO.打开系统信息中...
timeout /t 2 /nobreak >NUL
start /max %windir%\system32\msinfo32.exe
ECHO.
ECHO.执行完毕，自动返回主菜单...
timeout /t 2 /nobreak >NUL
goto MENU

:3
CLS
ECHO.
ECHO.打开内存诊断中...
timeout /t 2 /nobreak >NUL
%windir%\system32\MdSched.exe
ECHO.
ECHO.执行完毕，自动返回主菜单...
timeout /t 2 /nobreak >NUL
goto MENU

:4
CLS
ECHO.
ECHO.重启资源管理器中...
timeout /t 2 /nobreak >NUL
taskkill /f /IM explorer.exe
start explorer.exe
ECHO.
ECHO.执行完毕，自动返回主菜单...
timeout /t 2 /nobreak >NUL
goto MENU

:5
CLS
ECHO.清空回收站中...
timeout /t 2 /nobreak >NUL
cmd.exe /c "ECHO A|PowerShell.exe -NoProfile -Command Clear-RecycleBin"
ECHO. 已清空
timeout /t 2 /nobreak >NUL
ECHO.
ECHO. 执行完毕，自动返回主菜单...
timeout /t 2 /nobreak >NUL
goto MENU

:6
ECHO.
CLS
ECHO.
ECHO 本功能可以让任务栏时间显示/不显示到秒。
ECHO.
ECHO ****************************** 任务栏时间显示/不显示到秒修改工具 ****************************
ECHO.
ECHO.                     1. 时间显示到秒   2. 时间不显示到秒   3. 返回主页面            
ECHO.
ECHO.**********************************************************************************************
ECHO.
set shi-jian=
set /p shi-jian=【请直接输入功能对应数字，并回车( 1 - 3 )】： 
if not "%shi-jian%"=="" set shi-jian=%shi-jian:~0,1%
if /i "%shi-jian%"=="1" goto xs
if /i "%shi-jian%"=="2" goto bxs
if /i "%shi-jian%"=="3" goto zy
ECHO.
ECHO.输入无效，请重新输入...
timeout /t 2 /nobreak >NUL
ECHO.
goto 6

:xs
CLS
@ECHO off
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowSecondsInSystemClock /t REG_DWORD /d 1 /f
TASKKILL /F /IM explorer.exe
ECHO.
ECHO restar explorer.exe
timeout /t 2 /nobreak >NUL
start %windir%\explorer.exe
ECHO.
ECHO.ok
timeout /t 2 /nobreak >NUL
goto 6

:bxs
CLS
reg delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowSecondsInSystemClock /t REG_DWORD /d 1 /f
TASKKILL /F /IM explorer.exe
ECHO.
ECHO restar explorer.exe
timeout /t 2 /nobreak >NUL
START %windir%\explorer.exe
ECHO.
ECHO.ok!
timeout /t 2 /nobreak >NUL
goto 6

:zy
CLS
goto MENU


:7
CLS
ECHO.
ECHO.打开计算机管理中......
timeout /t 2 /nobreak >NUL
start /max %windir%\system32\compmgmt.msc /s
ECHO.
ECHO.已打开
timeout /t 2 /nobreak >NUL
ECHO.
ECHO.执行完成，正在返回主菜单，请稍后......
timeout /t 2 /nobreak >NUL
goto MENU

:8
CLS
ECHO.
ECHO.打开组策略中......
timeout /t 2 /nobreak >NUL
start /max gpedit.msc
ECHO.
ECHO.已打开
timeout /t 2 /nobreak >NUL
ECHO.
ECHO.执行完成，正在返回主菜单，请稍后......
timeout /t 2 /nobreak >NUL
goto MENU

:9
CLS
ECHO.
ECHO.正在刷新组策略......
timeout /t 2 /nobreak >NUL
gpupdate /force
ECHO.
ECHO.已刷新
timeout /t 2 /nobreak >NUL
ECHO.
ECHO.执行完毕，正在返回主菜单......
timeout /t 2 /nobreak >NUL
goto MENU

:A
CLS
ECHO.
ECHO.准备中......
timeout /t 2 /nobreak >NUL
ECHO.
set a=
set /p a=【请输入关键字】：
timeout /t 2 /nobreak >NUL
start https://www.baidu.com/s?wd=%a%
ECHO.
ECHO.搜索中......
timeout /t 2 /nobreak >NUL
ECHO.
ECHO.已完成
timeout /t 1 /nobreak >nul
ECHO.
ECHO.执行完毕，自动返回主菜单...
ECHO.
goto MENU

:B
CLS
ECHO.
ECHO.即将运行系统文件完整性检查......
timeout /t 2 /nobreak >NUL

CLS

sfc /SCANNOW

:: 检查修复系统

Dism /Online /Cleanup-Image /ScanHealth

:: 扫描全部系统文件和系统映像文件是否与官方版一致

Dism /Online /Cleanup-Image /CheckHealth

:: 检查文件的损坏程度，结果一般有两种：一般性损坏可以修复和情况严重完全无法修复

DISM /Online /Cleanup-image /RestoreHealth

:: 联网将系统映像文件中与官方文件不相同的文件还原成官方系统的源文件

sfc /SCANNOW

:: 再次检查
ECHO.
ECHO.请您按下键盘任意键继续...
PAUSE>NUL

CLS
ECHO.
ECHO.执行完成
timeout /t 2 /nobreak >NUL
ECHO.
ECHO.正在返回主菜单，请稍后......
timeout /t 2 /nobreak >NUL
goto MENU


:C
CLS
ECHO.
ECHO.准备中......
timeout /t 2 /nobreak >NUL
CLS
ECHO.
ECHO.
ECHO.
ECHO 是否继续此操作? 
set put=
set /p put=【 Y ( 是 ) / N ( 否 ) 】：

if not "%put%"=="" set put=%put:~0,1%
if /i "%put%"=="Y" goto TT
if /i "%put%"=="N" goto SS
ECHO.
ECHO.输入无效，请重新输入...
timeout /t 2 /nobreak >NUL
ECHO.
goto C

:TT 
CLS
ECHO.
ECHO.继续操作...
CLS
ECHO.
ECHO 本功能可以移除windows系统内置应用来精简系统，需要输入路径/位置。例如 ：D:\桌面\yczd.ps1
ECHO.
set /p yichu=【请输入工具脚本运行路径/位置，并回车】：
PowerShell.exe -ExecutionPolicy Bypass -File "%yichu%"
PowerShell.exe -ExecutionPolicy UnRestricted -File "%yichu%"
ECHO.
ECHO.请您按下键盘任意键继续...
PAUSE>NUL
goto MENU
 
:SS
ECHO. 
ECHO.您选择了不继续操作，将返回主页面！
timeout /t 2 /nobreak >NUL
ECHO.
goto MENU



:D
CLS
ECHO.
ECHO.即将执行，请等待......
timeout /t 2 /nobreak >NUL
ECHO.
ECHO.开始执行
timeout /t 2 /nobreak >NUL
ipconfig /flushdns
ECHO.
ECHO.
ECHO.执行完毕，自动返回主菜单...
timeout /t 2 /nobreak >NUL
ECHO.
goto MENU

:E
CLS
ECHO.
ECHO.准备中......
timeout /t 2 /nobreak >NUL
CLS
ECHO.
ECHO.
ECHO.
ECHO 本功能可以解决桌面图标问题，清理系统图标缓存数据库，系统托盘记忆的图标，去除图标箭头和盾牌。
ECHO.
ECHO.
ECHO.
ECHO.请您按下键盘任意键继续...
PAUSE>NUL
CLS
ECHO.
ECHO.
ECHO.
ECHO.
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons" /v 29 /d "%systemroot%\system32\imageres.dll,197" /t reg_sz /f
ECHO.
:: 关闭Windows外壳程序explorer
taskkill /f /im explorer.exe
ECHO.
:: 清理系统图标缓存数据库
attrib -h -s -r "%userprofile%\AppData\Local\iconcache.db" 
attrib /s /d -h -s -r "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\*"
del "%userprofile%\AppData\Local\iconcache.db" /f /q
del /f "%userprofile%\AppData\Local\IconCache.db"
del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_32.db"
del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_96.db"
del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_102.db"
del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_256.db"
del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_1024.db"
del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_idx.db"
del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_sr.db"
:: 清理 系统托盘记忆的图标
ECHO Y|reg delete "HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" /v IconStreams
ECHO Y|reg delete "HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" /v PastIconsStream
:: 重启Windows外壳程序explorer
start explorer.exe
ECHO.
ECHO.OK!
timeout /t 2 /nobreak >NUL
ECHO.
ECHO.请您按下键盘任意键继续...
PAUSE>NUL
goto MENU


:F
CLS
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.使用由近及远的原则意味着先要确认本机协议栈有没有问题，所以可以用「ping 127.0.0.1」来检查本机 TCP/IP 协议。
ECHO.
ECHO.请您按下键盘任意键继续...
PAUSE>NUL
ECHO.
ECHO.准备中...
timeout /t 2 /nobreak >NUL
ECHO.
ECHO.开始执行...
timeout /t 2 /nobreak >NUL
CLS
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.一. 观察本地网络设置是否正确
timeout /t 2 /nobreak >NUL
CLS
ECHO. 
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.**********************************本地网络配置**********************************
ECHO.
ECHO.
ipconfig /all
ECHO.
ECHO.
ECHO.请您按下键盘任意键继续...
PAUSE>NUL

CLS
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.二. ping 127.0.0.1.如果测试成功，表明网卡、TCP/IP协议的安装、IP地址、子网掩码的设置正常。如果测试不成功，就表示TCP/IP的安装或设置存在有问题。
ECHO.
ECHO.请您按下键盘任意键继续...
PAUSE>NUL
CLS
ECHO.
ECHO. 
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.开始ping 127.0.0.1...
ECHO.
timeout /t 2 /nobreak >NUL
ECHO.
ECHO.
ECHO.**********************************ping 127.0.0.1********************************
ECHO.
ECHO.
ping -n 15 -l 1500 127.0.0.1 | findstr /I "TTL"
ECHO.
ECHO.
ECHO.
ECHO.
if %errorlevel%==0 (ECHO     √     TCP / IP协议正常) else (ECHO     X     TCP / IP协议异常)
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.请您按下键盘任意键继续...
PAUSE>NUL


CLS
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.三. 如果测试不成功，则表示本地配置或安装存在问题，应当对网络设备和通讯介质进行测试、检查并排除。
ECHO.
ECHO.请您按下键盘任意键继续...
PAUSE>NUL

:ip
CLS
ECHO.
ECHO. 
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.开始Ping本机IP地址...
ECHO.
timeout /t 2 /nobreak >NUL
ECHO.
ECHO.
ECHO.**********************************ping本机IP地址********************************
ECHO.

set ip=
set /p ip=【请直接输入本机IP地址回车】：
ECHO.
if /i "%ip%"=="" (goto inputting) else (goto pingIP)

:inputting
CLS
ECHO.
ECHO.
ECHO.您的输入有误，请在功能刷新后重新输入！
timeout /t 2 /nobreak >NUL
goto ip

:pingIP
CLS
ECHO.
ECHO.
ECHO.您输入了 %ip% ,开始执行操作...
timeout /t 2 /nobreak >NUL
ECHO.
ECHO.
ping -n 15 -l 1500 "%ip%" | findstr /I "TTL"
ECHO.
ECHO.
ECHO.
ECHO.
if %errorlevel%==0 (ECHO     √     本机IP正常) else (ECHO     X     本机IP异常)
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.请您按下键盘任意键继续...
PAUSE>NUL

CLS
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.四. ping网关或局域网内其他IP,如果测试成功，表明本地网络中的网卡和载体运行正确。但如果收到0个回送应答，那么表示子网掩码不正确或网卡配置错误或电缆系统有问题;或者局域网中的网关路由器正在运行并能够做出应答。
ECHO.
ECHO.请您按下键盘任意键继续...
PAUSE>NUL

:wgip
CLS
ECHO.
ECHO. 
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.开始ping网关或局域网内其他IP...
ECHO.
timeout /t 2 /nobreak >NUL
ECHO.
ECHO.
ECHO.***************************ping网关或局域网内其他IP********************************
ECHO.
set wgip=
set /p wgip=【请输入网关或局域网内其他IP】： 
if /i "%wgip%"=="" (goto wg) else (goto ipwg)
ECHO.

:wg
CLS
ECHO.
ECHO.
ECHO.输入无效,请在功能刷新后重新输入...
timeout /t 2 /nobreak >NUL
goto wgip

:ipwg
CLS
ECHO.
ECHO.
ECHO.您输入了 %wgip% ,开始执行操作...
ECHO.
ECHO.
ping -n 15 -l 1500 "%wgip%" | findstr /I "TTL" 
ECHO.
ECHO.
ECHO.
ECHO.
if %errorlevel%==0 (ECHO     √     网关状态正常) else (ECHO     X     网关状态异常)
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.请您按下键盘任意键继续...
PAUSE>NUL


CLS
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.五. ping远程IP或域名.如果收到正确应答，表示成功的使用了缺省网关。对于拨号上网用户则表示能够成功的访问Internet（但不排除ISP的DNS会有问题）。对域名执行Ping命令，计算机必须先将域名转换成IP地址，通常是通过DNS服务器。如果这里出现故障，则表示本机DNS服务器的IP地址配置不正确，或它所访问的DNS服务器有故障。
ECHO.
ECHO.请您按下键盘任意键继续...
PAUSE>NUL

:waiwang
CLS
ECHO.
ECHO. 
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.开始ping远程IP或域名...
timeout /t 2 /nobreak >NUL
ECHO.
ECHO.
ECHO.************************************ping远程IP或域名*****************************
ECHO.
ECHO.
set waiwang=
set /p waiwang=【请输入需要Ping的远程IP或域名( 如  : www.baidu.com  或者 36.152.44.95 )】： 
if /i "%waiwang%"=="" (goto ww) else (goto wang)
ECHO.

:ww
CLS
ECHO.
ECHO.
ECHO.你的输入有误，请在工具刷新后重新输入！
timeout /t 2 /nobreak >NUL
goto waiwang

:wang
CLS
ECHO.
ECHO.
ECHO.您输入了 %waiwang% ,开始执行操作...
timeout /t 2 /nobreak >NUL
ECHO.
ECHO.
ping /n 15 /l 1400 "%waiwang%" | findstr /I "TTL"
ECHO.
ECHO.
ECHO.
ECHO.
if %errorlevel%==0 (ECHO     √     外网连接正常) else (ECHO     X     无法连接外网) 
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.请您按下键盘任意键继续...
PAUSE>NUL


:tracert
CLS
ECHO.
ECHO.开始测量路由情况...
timeout /t 2 /nobreak >NUL
ECHO.
:: 六. 测量路由情况，显示数据包到达目的主机所经过的路径.traceroute命令的基本用法是，在命令提示符后键入“tracert host_name”或“tracert ip_address”，其中，tracert是traceroute在Windows操作系统上的称呼。
set tracert=
set /p tracert=【请输入 host_name (如 : www.baidu.com ) 或者 IP_address ( 如 : 36.152.44.95 ) 回车】：  
if /i "%tracert%"=="" (goto host) else (goto address)

:host
CLS
ECHO.
ECHO.
ECHO.你的输入有误，请在工具刷新后重新输入！
timeout /t 2 /nobreak >NUL
goto tracert

:address
CLS
ECHO.
ECHO.
ECHO.您输入了 %tracert% ,开始执行操作...
timeout /t 2 /nobreak >NUL
ECHO.
ECHO.
tracert "%tracert%" 
ECHO.
ECHO.
ECHO.
ECHO.结果输出有5列：
ECHO.
ECHO.第一列  是描述路径的第n跳的数值，即沿着该路径的路由器序号；
ECHO.
ECHO.第二列  是第一次往返时延；
ECHO.
ECHO.第三列  是第二次往返时延；
ECHO.
ECHO.第四列  是第三次往返时延；
ECHO.
ECHO.第五列  是路由器的名字及其输入端口的IP地址。
ECHO.
ECHO.注  :   如果源从任何给定的路由器接收到的报文少于3条（由于网络中的分组丢失），
ECHO.
ECHO.        会在该路由器号码后面放一个星号，并报告到达那台路由器的少于3次的往返时间。
ECHO.
ECHO.
ECHO.请您按下键盘任意键继续...
PAUSE>NUL
goto MENU


:G
CLS
ECHO.
ECHO.开始尝试修复网络
timeout /t 2 /nobreak >NUL
ECHO.完成后，将自动重启您的电脑，请您在电脑重启后，重新连接到网络
timeout /t 2 /nobreak >NUL
netsh winsock reset
ECHO.OK!
timeout /t 2 /nobreak >NUL
ECHO.关闭程序，并重启中...
timeout /t 2 /nobreak >NUL
shutdown -r -t 30
goto END


:H
CLS
ECHO.
ECHO.打开设备管理器中......
timeout /t 2 /nobreak >NUL
ECHO.
start /max devmgmt.msc
ECHO.
ECHO.执行完毕，自动返回主菜单...
timeout /t 2 /nobreak >NUL
goto MENU


:I
CLS
ECHO.
ECHO. Openning Cmd......
timeout /t 2 /nobreak >NUL
CLS
ECHO.
ECHO. 使用结束后，键入 ' exit ' 即可退出cmd命令提示符！
ECHO.
ECHO.请您按下键盘任意键继续...
PAUSE>NUL
ECHO.
CLS
%windir%\system32\cmd.exe
ECHO.
timeout /t 2 /nobreak >NUL
goto MENU



:J
CLS
ECHO.
ECHO.打开控制面板中...
timeout /t 2 /nobreak >NUL
start /max %SystemRoot%\system32\control.exe
ECHO.
ECHO.已打开
timeout /t 2 /nobreak >NUL
ECHO.
ECHO.执行完毕，自动返回主菜单...
timeout /t 2 /nobreak >NUL
goto MENU


:K
CLS
ECHO.
ECHO.打开网络连接中...
timeout /t 2 /nobreak >NUL
rundll32.exe shell32.dll,Control_RunDLL ncpa.cpl
ECHO.
ECHO.执行完毕，自动返回主菜单...
timeout /t 2 /nobreak >NUL
goto MENU


:L
CLS
ECHO.
ECHO.
ECHO.
ECHO.
ECHO. 获取电脑以往已连接WIFI名称及密码中...
timeout /t 2 /nobreak >NUL
CLS
ECHO.
ECHO.
ECHO.
ECHO.
ECHO ---------------------------------------------------------------------------------
ECHO.
netsh wlan show profiles
ECHO =====================================
ECHO.
set /p name=Please input your WiFi name（【 所有用户配置文件 】后面的为WI-FI名称 ）：
netsh wlan show profiles name="%name%" key=clear 
ECHO.
ECHO =====================================
ECHO.
ECHO ---------------------------------------------------------------------------------
ECHO.
ECHO.
ECHO. " %name% " 的WI-FI密码为 " 关键内容 " 后面的字符串。
ECHO.
ECHO.
ECHO.已完成
timeout /t 2 /nobreak >NUL
ECHO.
ECHO.请您按下键盘任意键继续...
PAUSE>NUL
goto MENU


:M
CLS
ECHO.
ECHO.警告：由于此功能操作具有一定的未知危险性，若要继续，请阅读并同意使用须知:
ECHO.
ECHO.                                     使用须知
ECHO.
ECHO.*******************************************************************************************
ECHO.1. 使用此功能要求使用者了解或掌握一定的计算机基础知识和技能
ECHO.
ECHO.2. 因为使用此功能误操作,导致无法使用,有能力给电脑重新安装系统的伙伴可以使用
ECHO.
ECHO.3. 既没有基本计算机知识和技能,又不会给电脑装系统,也没有其他方面的技能,若执意要使用
ECHO.
ECHO.   出现的一切问题及后果,由你自行承担，均与与本人无关，且本人概不负责
ECHO.*******************************************************************************************
ECHO.
ECHO.                          同意( Y )             不同意( N )
ECHO.
ECHO.已阅读并同意请按 ( "   Y   " );  不同意则按 ( "   N   " ).
ECHO.
set a=
set /p a=【请你输入对应序号  (  Y  /  N  )】： 
if not "%a%"=="" set a=%a:~0,1%
if /i "%a%"=="Y" goto open
if /i "%a%"=="N" goto MENU
ECHO.
ECHO.输入无效,请重新输入...
timeout /t 2 /nobreak >NUL
ECHO.
goto M


:open
CLS
:: 列出所有进程
TASKLIST /V
ECHO.
set TK=
set /p TK=【请输入要结束的 ‘ 进程名 ’或 ‘ PID ’[ 进程码 ], 并按enter回车】：
if errorlevel 1 (
goto open
) else (
goto zhixing
)
:zhixing
TASKKILL /PID "%TK%" /T /F
TASKKILL /F /IM "%TK%" /T
ECHO.
ECHO.请您按下键盘任意键继续...
PAUSE>NUL
ECHO.
goto MENU      


:N
CLS
ECHO.
:: 所有使用电源方案
powercfg L
ECHO.
ECHO.
set PC=
set /p PC=【请输入要删除电源方案的  "   GUID  " , 然后回车】：
if errorlevel 1 (
goto N
) else (
goto jixu
)
:jixu
powercfg D "%PC%"
ECHO.
ECHO. 已删除电源方案：%PC%
ECHO.
ECHO.请您按下键盘任意键继续...
PAUSE>NUL
ECHO.
goto MENU




:O
CLS
ECHO.
ECHO 该功能可以给电脑设置固定/自动ip地址，子网掩码，网关，dns地址（测试功能）
timeout /t 2 /nobreak >NUL
ECHO.
ECHO  -------------------------------------------------------------------------------
ECHO.
ECHO  1. 设置自动ip地址，子网掩码，网关，dns地址，请输入：1
ECHO.
ECHO  2. 设置固定ip地址，子网掩码，网关，dns地址，请输入：2
ECHO.
ECHO  3. 返回主菜单，请输入：3
ECHO.
ECHO  -------------------------------------------------------------------------------
ECHO.
set /p net-set=【请您输入并回车】：
if not "%net-set%"=="" set net-set=%net-set:~0,1%
if /i "%net-set%"=="1" goto dhcp
if /i "%net-set%"=="2" goto static
if /i "%net-set%"=="3" goto MENU
ECHO.
ECHO.输入无效，请重新输入...
timeout /t 2 /nobreak >NUL
ECHO.
goto O

:dhcp
CLS
ECHO.
ECHO 开始配置...
timeout /t 2 /nobreak >NUL
ECHO.
ECHO.
ECHO 常用的网络连接名称有：WLAN，以太网，本地连接等。
timeout /t 2 /nobreak >NUL
ECHO.
ECHO 不同电脑设置会有所不同，一般为“本地连接”。你可以在“控制面板”“网络连接”或命令提示符下输入ipconfig /all中看到。
timeout /t 2 /nobreak >NUL
ECHO.
set /p name=【输入网络连接名称并回车】：
timeout /t 2 /nobreak >NUL
ECHO.
ECHO 自动获取IP地址......
timeout /t 2 /nobreak >NUL
ECHO.
netsh interface IP set address name="%name%" source=dhcp
ECHO.
ECHO 自动获取DNS服务器......
timeout /t 2 /nobreak >NUL
ECHO.
netsh interface IP set dns name="%name%" source=dhcp
ECHO.
ECHO 设置成功.......
timeout /t 2 /nobreak >NUL
ECHO.
ECHO 正在刷新设置......
timeout /t 2 /nobreak >NUL
ECHO.
ipconfig /flushdns
ECHO.
ECHO.请您按下键盘任意键继续...
timeout /t 2 /nobreak >NUL
PAUSE>NUL
CLS
ECHO.
ECHO.
ECHO 显示新的设置......
timeout /t 2 /nobreak >NUL 
ECHO.
ipconfig /all
ECHO.
ECHO.设置完毕，请您按下键盘任意键继续...
timeout /t 2 /nobreak >NUL
PAUSE>NUL
goto O

:static
CLS
ECHO.
ECHO 开始配置...
timeout /t 2 /nobreak >NUL
ECHO.
ECHO 常用的网络连接名称有：WLAN，以太网，本地连接等。
timeout /t 2 /nobreak >NUL
ECHO.
ECHO 不同电脑设置会有所不同，一般为“本地连接”。你可以在“控制面板”“网络连接”或命令提示符下输入ipconfig /all中看到。
timeout /t 2 /nobreak >NUL
ECHO.
ECHO.
set /p name=【输入网络连接名称并回车】：
timeout /t 2 /nobreak >NUL
ECHO.
set /p addr=【输入IP地址并回车】：
timeout /t 2 /nobreak >NUL
ECHO.
set /p mask=【输入子网掩码并回车】：
timeout /t 2 /nobreak >NUL
ECHO.
set /p gateway=【输入网关并回车】：
timeout /t 2 /nobreak >NUL
ECHO.
set /p dns=【输入首选dns并回车】：
timeout /t 2 /nobreak >NUL
ECHO.
set /p dns1=【输入备用dns1并回车】：
timeout /t 2 /nobreak >NUL
ECHO.
set /p dns2=【输入备用dns2并回车】：
timeout /t 2 /nobreak >NUL
ECHO.
ECHO 
CLS
ECHO.
ECHO.
ECHO 您已输入：
timeout /t 2 /nobreak >NUL
ECHO.
ECHO           网络连接名称：%name%
timeout /t 2 /nobreak >NUL
ECHO.
ECHO           IP地址：%addr%
timeout /t 2 /nobreak >NUL
ECHO.
ECHO           子网掩码：%mask%
timeout /t 2 /nobreak >NUL
ECHO.
ECHO           网关：%gateway%
timeout /t 2 /nobreak >NUL
ECHO.
ECHO           首选dns：%dns%
timeout /t 2 /nobreak >NUL
ECHO.
ECHO           备用dns1：%dns1%
timeout /t 2 /nobreak >NUL
ECHO.
ECHO           备用dns2：%dns2%
timeout /t 2 /nobreak >NUL
ECHO.
ECHO.请您按下键盘任意键继续...
timeout /t 2 /nobreak >NUL
PAUSE>NUL
CLS
ECHO.
ECHO.
ECHO 开始配置中...
timeout /t 2 /nobreak >NUL
ECHO.
netsh interface IP set address name="%name%" source=static addr="%addr%" mask="%mask%" gateway="%gateway%" gwmetric=0
ECHO.
ECHO IP地址、子网掩码和网关设置完成.......
timeout /t 2 /nobreak >NUL
ECHO.
netsh interface IP set dns name="%name%" source=static addr="%dns%" register=primary 
netsh interface IP add dns name="%name%" addr="%dns1%" index=2
netsh interface IP add dns name="%name%" addr="%dns2%" index=3
ECHO.
ECHO dns设置完成.......
timeout /t 2 /nobreak >NUL
ECHO.
ECHO 正在刷新设置......
timeout /t 2 /nobreak >NUL
ECHO.
ipconfig /flushdns
ECHO.
ECHO.请您按下键盘任意键继续...
timeout /t 2 /nobreak >NUL
PAUSE>NUL
CLS
ECHO.
ECHO.
ECHO 显示新的设置......
timeout /t 2 /nobreak >NUL 
ECHO.
ipconfig /all
ECHO.
ECHO.设置完毕，请您按下键盘任意键继续...
timeout /t 2 /nobreak >NUL
PAUSE>NUL
goto O




:P
CLS
ECHO.
ECHO 本功能只需要你动动鼠标和键盘，就可以回到经典win10菜单栏或者恢复win11菜单栏（ 注意 ：只适用于 windows 11 ）。
ECHO.
ECHO.执行相应操作后不会立即生效，请您重启计算机，注销，或者在本页面输入序号 “ 4 ” 重启资源管理器生效设置
ECHO.
ECHO ****************************** 回到win10/恢复win11菜单栏工具 ****************************
ECHO.
ECHO			1. 回到win10菜单栏		2. 恢复win11菜单栏             
ECHO.
ECHO			3. 返回主菜单			4. 重启资源管理器
ECHO.
ECHO.*******************************************************************************************
ECHO.
set input=
set /p input=【请直接输入功能对应数字，并回车(1-4)】： 
if not "%input%"=="" set input=%input:~0,1%
if /i "%input%"=="1" goto HD
if /i "%input%"=="2" goto HF
if /i "%input%"=="3" goto MENU
if /i "%input%"=="4" goto CQ
ECHO.
ECHO.输入无效，请重新输入...
timeout /t 2 /nobreak >NUL
ECHO.
goto P

:HD
CLS
ECHO.
ECHO 正在执行操作...
timeout /t 2 /nobreak >NUL
reg add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve 
ECHO OK!
ECHO.请您按下键盘任意键继续...
PAUSE>NUL
goto P

:HF
CLS
ECHO.
ECHO 正在执行操作...
timeout /t 2 /nobreak >NUL
reg delete "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /va /f
ECHO OK!
ECHO.请您按下键盘任意键继续...
PAUSE>NUL
goto P

:MENU
CLS
ECHO.
ECHO 返回主菜单中...
timeout /t 2 /nobreak >NUL
goto MENU

:CQ
CLS
ECHO.
taskkill /f /im explorer.exe
timeout /t 2 /nobreak >NUL
start explorer.exe
ECHO OK!
timeout /t 2 /nobreak >NUL
goto P



:Q
CLS
ECHO.
ECHO.  微软商店打不开试试这个功能！
ECHO.
ECHO.  ////////////////////////////////////////////////////////////////////
ECHO. 
ECHO.  功能区：
ECHO.
ECHO.                              1.  打开internet属性调整设置
ECHO.
ECHO.                              2.  清空应用商店的缓存
ECHO.                              
ECHO.                              3.  重新部署应用商店
ECHO.
ECHO.                              4.  退出
ECHO.
ECHO.  /////////////////////////////////////////////////////////////////////
ECHO.
set rw=
set /p rw=【请直接输入功能对应数字，并回车 ( 1 - 4 )】： 
if not "%rw%"=="" set rw=%rw:~0,1%
if /i "%rw%"=="1" goto oe
if /i "%rw%"=="2" goto wo
if /i "%rw%"=="3" goto hree
if /i "%rw%"=="4" goto ex
ECHO.
ECHO.输入无效，请重新输入...
timeout /t 2 /nobreak >NUL
ECHO.
goto Q

:oe
CLS
ECHO.
ECHO.在打开的 “ Internet选项  ” 窗口，点击上方的“高级”一栏，勾选 “使用SSL 3.0”、”使用 TLS 1.0“、”使用 TLS 1.1“、”使用 TLS 1.2“，应用后关闭程序后，重启电脑，查看能否解决问题。
ECHO.
ECHO.请您按下键盘任意键继续...
PAUSE>NUL
ECHO.
start inetcpl.cpl
ECHO.OK!
timeout /t 2 /nobreak >NUL
goto Q

:wo
CLS
ECHO.
ECHO.清空应用商店的缓存...
timeout /t 2 /nobreak >NUL
ECHO.
wsreset.exe
ECHO.
ECHO.OK!
timeout /t 2 /nobreak >NUL
goto Q

:hree
CLS
ECHO.
ECHO.重新部署操作进程中...
timeout /t 2 /nobreak >NUL
ECHO.
ECHO.本功能可以重新部署WindowsStore，需要输入路径/位置，例如 ：D:\桌面\ws.ps1
ECHO.
set /p wse=【请输入工具脚本执行路径/位置，并回车】：
ECHO.
PowerShell.exe -ExecutionPolicy Bypass -File "%wse%"
PowerShell.exe -ExecutionPolicy UnRestricted -File "%wse%"
ECHO.请您按下键盘任意键继续...
PAUSE>NUL
goto Q

:ex
goto MENU



:R
CLS
ECHO.
ECHO.添加win家庭版组策略组件中...
timeout /t 2 /nobreak >NUL

pushd "%~dp0"
 
dir /b C:\Windows\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientExtensions-Package~3*.mum >List.txt
 
dir /b C:\Windows\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientTools-Package~3*.mum >>List.txt
 
for /f %%i in ('findstr /i . List.txt 2^>nul') do dism /online /norestart /add-package:"C:\Windows\servicing\Packages\%%i"

ECHO.已添加。
ECHO.
ECHO.请您按下键盘任意键继续...
PAUSE>NUL
goto MENU



:S
CLS
ECHO.
ECHO. 准备中...
timeout /t 2 /nobreak >NUL
CLS
ECHO.
ECHO.
ECHO.本功能需要输入路径/位置，例如 ：D:\桌面\ps.ps1
ECHO.
set /p jiaoben=【请输入工具脚本执行路径/位置，并回车】：
ECHO.
PowerShell.exe -ExecutionPolicy Bypass -File "%jiaoben%"
PowerShell.exe -ExecutionPolicy UnRestricted -File "%jiaoben%"
ECHO.
ECHO.请您按下键盘任意键继续...
PAUSE>NUL
goto MENU



:T
CLS
ECHO.
ECHO.该功能可以卸载/重装微软应用商店。
ECHO.
ECHO.------------------------------------------------------ 功能区 -------------------------------------------------------
ECHO.
ECHO.						     1. 卸载商店
ECHO.
ECHO.						     2. 重装商店
ECHO.
ECHO.						     3. 退出并返回主菜单
ECHO.
ECHO.---------------------------------------------------------------------------------------------------------------------
ECHO.
set remove=
set /p remove=【请直接输入功能对应数字，并回车 ( 1 - 3 )】： 
if not "%remove%"=="" set remove=%remove:~0,1%
if /i "%remove%"=="1" goto remove1
if /i "%remove%"=="2" goto remove2
if /i "%remove%"=="3" goto remove3
ECHO.
ECHO.输入无效，请重新输入...
timeout /t 2 /nobreak >NUL
ECHO.
goto T

:remove1
CLS
ECHO.
ECHO. 开始卸载...
timeout /t 2 /nobreak >NUL
ECHO.
ECHO.本功能可以卸载商店，需要输入路径/位置，例如 ：D:\桌面\remove.ps1
ECHO.
set remove1=
set /p remove1=【请输入工具脚本执行路径/位置，并回车】：
ECHO.
PowerShell.exe -ExecutionPolicy Bypass -File "%remove1%"
PowerShell.exe -ExecutionPolicy UnRestricted -File "%remove1%"
ECHO.请您按下键盘任意键继续...
PAUSE>NUL
goto T

:remove2
CLS
ECHO.
ECHO.开始重装...
ECHO.
ECHO.本功能可以重装商店，需要输入路径/位置，例如 ：D:\桌面\AddApp.ps1
ECHO.
set AddApp=
set /p AddApp=【请输入工具脚本执行路径/位置，并回车】：
ECHO.
PowerShell.exe -ExecutionPolicy Bypass -File "%AddApp%"
PowerShell.exe -ExecutionPolicy UnRestricted -File "%AddApp%"
ECHO.请您按下键盘任意键继续...
PAUSE>NUL
goto T

:remove3
CLS
ECHO.
ECHO.退出并返回主菜单...
timeout /t 2 /nobreak >NUL
goto MENU




:U
CLS
ECHO.
ECHO  本功能可以批量测试dns，以备让您设置最佳的dns地址。
ECHO.
timeout /t 2 /nobreak >NUL
ECHO  开始测试，测试时间可能较长，请您耐心等待结束...
timeout /t 2 /nobreak >NUL
ECHO.
IF EXIST dns.ini (
for /F %%I IN (dns.ini) DO PING %%I
) ELSE (
ECHO  dns.ini不存在，已重新创建该文件。请您返回主菜单后，重新进入本功能重试！
timeout /t 2 /nobreak >NUL
ECHO 114.114.114.114 > dns.ini
ECHO 114.114.115.115 >> dns.ini 
ECHO 114.114.114.119 >> dns.ini
ECHO 114.114.115.119 >> dns.ini
ECHO 114.114.114.110 >> dns.ini
ECHO 114.114.115.110 >> dns.ini
ECHO 223.5.5.5 >> dns.ini
ECHO 223.6.6.6 >> dns.ini
ECHO 180.76.76.76 >> dns.ini
ECHO 119.29.29.29 >> dns.ini
ECHO 182.254.116.116 >> dns.ini
ECHO 8.8.8.8 >> dns.ini
ECHO 8.8.4.4 >> dns.ini
ECHO 1.2.4.8 >> dns.ini
ECHO 210.2.4.8 >> dns.ini
)
ECHO.
ECHO  完成！
ECHO.
ECHO. 请您按下键盘任意键继续...
PAUSE>NUL
goto MENU




:V
CLS
ECHO.
ECHO.  本功能可以安全的清理C（系统）盘，比如：C盘temp临时文件、安装软件解压后的临时文件、删除SoftwareDistribution里面download文件资料等。
timeout /t 2 /nobreak >NUL
ECHO.
ECHO   清理时间可能较长，请耐心等待...
timeout /t 2 /nobreak >NUL
CLS
ECHO.
ECHO.
del /f /s /q %systemdrive%\*.tmp
del /f /s /q %systemdrive%\*._mp
del /f /s /q %systemdrive%\*.log
del /f /s /q %systemdrive%\*.gid
del /f /s /q %systemdrive%\*.chk
del /f /s /q %systemdrive%\*.old
del /f /s /q %systemdrive%\recycled\*.*
del /f /s /q %windir%\*.bak
del /f /s /q %windir%\prefetch\*.*
rd /f /s /q %windir%\temp & md %windir%\temp
del /f /q %userprofile%\cookies\*.*
del /f /q %userprofile%\recent\*.*
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*"
del /f /s /q "%userprofile%\Local Settings\Temp\*.*"
del /f /s /q "%userprofile%\recent\*.*"
RD %TEMP% /F /S /Q
MKDIR %TEMP% 
del /f /s /q "%systemroot%\Softwaredistribution"
ECHO.
ECHO.
ECHO  完成！
timeout /t 2 /nobreak >NUL
ECHO.
ECHO. 请您按下键盘任意键继续...
PAUSE>NUL
goto MENU




:Y
CLS
ECHO.
ECHO.  该功能尽可能地帮你解决任务栏卡死，无响应等任务栏问题。
ECHO.
ECHO.------------------------------------------------------ 功能区 -------------------------------------------------------
ECHO.
ECHO.						      1. 重启Windows资源管理器
ECHO.
ECHO.						      2. 重新部署操作进程
ECHO.
ECHO.						      3. 检查并修复Windows文件
ECHO.
ECHO.						      4. 退出
ECHO.
ECHO.---------------------------------------------------------------------------------------------------------------------
ECHO.
set rwl=
set /p rwl=【请直接输入功能对应数字，并回车 ( 1 - 4 )】： 
if not "%rwl%"=="" set rwl=%rwl:~0,1%
if /i "%rwl%"=="1" goto one
if /i "%rwl%"=="2" goto two
if /i "%rwl%"=="3" goto three
if /i "%rwl%"=="4" goto four
ECHO.
ECHO.输入无效，请重新输入...
timeout /t 2 /nobreak >NUL
ECHO.
goto Y

:one
CLS
ECHO.
ECHO. 重启Windows资源管理器中...
timeout /t 2 /nobreak >NUL
taskkill /f /im explorer.exe
timeout /t 2 /nobreak >NUL
start explorer.exe
ECHO.OK!
timeout /t 2 /nobreak >NUL
goto Y

:two
CLS
ECHO.
ECHO.重新部署操作进程中...
ECHO.
ECHO.本功能可以重新部署windows系统操作进程，需要输入路径/位置，例如 ：D:\桌面\czjc.ps1
ECHO.
set bushu=
set /p bushu=【请输入工具脚本执行路径/位置，并回车】：
ECHO.
PowerShell.exe -ExecutionPolicy Bypass -File "%bushu%"
PowerShell.exe -ExecutionPolicy UnRestricted -File "%bushu%"
ECHO.
ECHO.请您按下键盘任意键继续...
PAUSE>NUL
goto Y

:three
CLS
ECHO.
ECHO.检查并修复Windows文件
timeout /t 2 /nobreak >NUL
sfc /scannow
ECHO.
ECHO.OK!
timeout /t 2 /nobreak >NUL
goto Y

:four
CLS
ECHO.
ECHO.Returnning to MENU...
timeout /t 2 /nobreak >NUL
goto MENU


:END
CLS
ECHO.
ECHO.退出程序中......
timeout /t 2 /nobreak >NUL
EXIT






