::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWHreyHcjLQlHcCWGMWK0OpEZ++Pv4Pq7JKTE0Sbb/389XEJppDvFb4E9PRPxNv+1aYIwPBRPewCYZgo4pVJBrG6GedeP4m8=
::fBE1pAF6MU+EWHreyHcjLQlHcCWGMWK0OpEZ++Pv4Pq7JKTE0Sbb/389XEJppDvFb4E9PRPxNv+1aYIwPBRPewCYZgo4pVJVpSqVJJb8
::fBE1pAF6MU+EWHreyHcjLQlHcCWGMWK0OpEZ++Pv4Pq7JKTE0Sbb/389XEJppDvFb4E9PRPxNv+1aYIwPBRPewCYZgo4pVJbtX6BedeP4m8=
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFDpQQQ2MAE+/Fb4I5/jHx96qjsvrs2bkrsdeBlQLzxFa1sIwtRDQJkZWl8wDQhJbcXI=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSTk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpSI=
::egkzugNsPRvcWATEpSI=
::dAsiuh18IRvcCxnZtBNQ
::cRYluBh/LU+EWAjk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJjZksaGkraXA==
::ZQ05rAF9IBncCkqN+0xwdVsHAlTMaiXiZg==
::ZQ05rAF9IAHYFVzEqQK1+PTdkv2VNWW+CaIPbzsgaDF4J5rY0Qfo/0EKug==
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQInIRVQQxORu7hhgW7jbT8+ag9QJYPMNA==
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATE5E0nLQlRSESAJSs/7k2ZOAdyMRPn
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDpQQQ2MAE+/Fb4I5/jHaQNeJ4n50xLZ/nk8Xm9YpSTKosA4lRPCJzNmHRvjhcWhaRulagAjuumRbeNeyEJLdooEnc9HN3e1y4r9WZrHhSU/b8R7HRDYVPtBeZo6GkDHVrYuEKwWEAM=
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
color 1F
title 小龙windows系统工具箱
mode con cols=180 lines=50
CHCP 936
timeout /nobreak /t 1 > nul


rem ------------------------------------分割线-----------------------------------------
rem ---------------------------------下面是主程序--------------------------------------


:kaishi
cls
echo.
echo.                                                      小龙WINDOWS系统工具箱
echo.******************************************************************************************************************************
echo.                                                    关于本脚本程序的重要说明
echo.******************************************************************************************************************************
echo.
echo.1. 本windows系统工具箱（以下简称‘ 工具箱 ’）由本人编写，测试，发布。
echo.
echo.2. 编写语言：批处理脚本。
echo.
echo.3. 本工具作者：刘小龙；作者邮箱：2539223617@qq.com。
echo.
echo.4. 本工具箱由本人编写并测试，绿色无毒安全，可以放心使用。
echo.
echo.5. 警告：未经本人许可，同意或者允许，请勿将本工具箱进行破解，修改（包括修改为恶意程序），传播，搬运，倒卖，盗用，谢谢配合与合作。
echo.
echo.6. 当您在使用本工具箱的功能前，请慎重选择，因为你的疏忽大意，操作失误等个人原因而出现的一切问题，均与本人无关，本人概不负责。
echo.
echo.7. 温馨提示 : 在下载所需软件，工具，文档（文件）时，请前往官网，原作者，或者可靠可信的网站下载，以免给您带来不便及损失。
echo.
echo.********************************************************************************************************************************
echo.
echo.                                    使用本工具前,需要同意重要说明,否则无法继续任何操作
echo.
echo.                                           同意请按 Y              不同意请按 N
echo.
set sm=
set /p sm=【请直接输入对应字母回车( Y / N )】
if not "%sm%"=="" set sm=%sm:~0,1%
if /i "%sm%"=="Y" goto next
if /i "%sm%"=="N" goto END
echo.
echo.输入无效，请重新输入...
timeout /nobreak /t 1 > nul
echo.
goto kaishi


:next
cls
echo.
echo. 显示信息中...
cls
echo.
echo. 一 本程序安全吗？是不是恶意程序？
echo.
echo. 回答：这是个安全的程序工具，不是病毒也不是恶意程序，每个功能都经过本人实机测试，请放心使用。
echo.
echo. 二 运行本程序会对系统有影响吗？
echo.
echo. 回答：本程序所有功能对系统的影响基本可以忽略不计，本人只是把一些功能经过整合做成工具箱的，
echo.
echo.       这些功能基本不会修改,改变系统设置和系统文件,所以对系统造成影响极低,望各位周知。
echo.
echo. 三 使用本程序需要注意什么？
echo.    
echo.    1. 运行本程序时，程序首先会进入到关于本程序的说明，接着自动进入到本面，仔细阅读帮助信息及注意
echo.
echo.       事项后，方可进入程序主菜单。
echo.
echo.    2. 由于本程序部分功能需要管理员权限才能运行,所以本程序开始会尝试自动获取管理员权限.经本人测试
echo.
echo.       基本都能成功获取(注意是基本都能,并不保证是一定可以),所以运行本工具前,请鼠标右键本工具,选择
echo.
echo.       以管理员身份运行。当然，如果不用本工具,请忽略本条。
echo.
echo.    3. 在选择执行功能时，请慎重选择并输入功能对应数字，字母，时时刻刻知道你在干嘛，不要因为自己的问题
echo.
echo.       来找我。
echo.
echo.    4. 功能前的序号如果是字母，输入时可以不区分大小写。
echo.
echo.    5. 本程序切勿擅自修改里面的内容，因为你的这种行为发生的意外，不良影响一律与本人无关，本人概不负责。
echo.
echo.   
echo.    ......暂时没想好写啥，想好了再添加，~_~
echo.                                                                                   
echo.
echo.                                           Copyright (C) 2022 刘小龙 
echo.
echo.按键盘任意键继续...                                                                                                                                 
pause>nul
goto menu


:menu
cls
echo.
echo. ///////////////////////////////////////////////////////////////////////////////////////////// 
echo.                                    
echo. 时间：%time:~0,2%时%time:~3,2%分%time:~6,2%秒  
echo.
echo. 日期：%date% 
echo.
echo. 工具箱版本：2022-09-17 15:24版 
echo.
echo. windows系统工具箱运行路径：%~dp0
echo.                                                                                                             
echo. /////////////////////////////////////////////////////////////////////////////////////////////
echo.
echo.******************************    请您输入要执行操作前的数字或字母序号,再按回车键    ************************************
echo.
echo.*********************************************** 若要退出,请键入" / " ****************************************************
echo.
echo. 程序功能:
echo.
echo 		0 任务管理器			A 百度关键词搜索			K 网络连接									
echo.           
echo 		1 磁盘清理			B 检查系统完整性			L 获取过去已连接WIFI名称及密码
echo.											
echo 		2 系统信息			C 移除系统自带应用(谨慎选择)		M 终止进程(危险功能)									
echo.
echo 		3 windows内存诊断		D 清理DNS缓存				N 删除电脑不需要的电源方案   								
echo.
echo 		4 重启资源管理器		E 清理图标数据库缓存			P win10/win11右键菜单栏切换									
echo.	
echo 		5 清空回收站			F 检查网络连通性			Q 解决微软商店打不开的问题									
echo.
echo 		6 任务栏时间显示/不显示到秒	G 尝试解决网络无法连接的问题		R win家庭版添加组策略组件
echo.
echo 		7 计算机管理			H 设备管理器				Y 解决任务栏无响应的问题		
echo.
echo 		8 打开组策略			I 命令提示符		
echo.
echo 		9 刷新组策略			J 控制面板				/ 退出程序	
echo.
echo.
echo. 注意 ：功能 “ P ” win10 / win11 右键菜单栏切换仅适用于 windows 11 系统 ！
echo.
echo.***********************************************************************************************************************
echo.
set id=
set /p id=【请你输入并回车】
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
if /i "%id%"=="P" goto P
if /i "%id%"=="Q" goto Q
if /i "%id%"=="R" goto R
if /i "%id%"=="Y" goto Y
if /i "%id%"=="/" goto END
echo.
echo.输入无效,请重新输入...
timeout /nobreak /t 1 > nul
goto menu


:0
cls
echo.
echo.打开任务管理器中...
timeout /nobreak /t 1 > nul
start /max %windir%\system32\taskmgr.exe /7
echo.
echo.执行完毕,自动返回主菜单...
timeout /nobreak /t 1 > nul
goto menu

:1
cls
echo.
echo.打开磁盘清理中...
timeout /nobreak /t 1 > nul
%windir%\system32\cleanmgr.exe
echo.
echo.执行完毕,自动返回主菜单...
timeout /nobreak /t 1 > nul
goto menu

:2
cls
echo.
echo.打开系统信息中...
timeout /nobreak /t 1 > nul
start /max %windir%\system32\msinfo32.exe
echo.
echo.执行完毕,自动返回主菜单...
timeout /nobreak /t 1 > nul
goto menu

:3
cls
echo.
echo.打开内存诊断中...
timeout /nobreak /t 1 > nul
%windir%\system32\MdSched.exe
echo.
echo.执行完毕,自动返回主菜单...
timeout /nobreak /t 1 > nul
goto menu

:4
cls
echo.
echo.重启资源管理器中...
timeout /nobreak /t 1 > nul
taskkill /f /IM explorer.exe
start explorer.exe
echo.
echo.执行完毕,自动返回主菜单...
timeout /nobreak /t 1 > nul
goto menu

:5
cls
echo.清空回收站中...
timeout /nobreak /t 1 > nul
cmd.exe /c "echo A|PowerShell.exe -NoProfile -Command Clear-RecycleBin"
echo. 已清空
timeout /nobreak /t 1 > nul
echo.
echo. 执行完毕,自动返回主菜单...
timeout /nobreak /t 1 > nul
goto menu

:6
echo.
cls
echo.
echo 本功能可以让任务栏时间显示/不显示到秒。
echo.
echo ****************************** 任务栏时间显示/不显示到秒修改工具 ****************************
echo.
echo.                     1. 时间显示到秒   2. 时间不显示到秒   3. 返回主页面            
echo.
echo.**********************************************************************************************
echo.
set shijian=
set /p shijian=【请直接输入功能对应数字，并回车( 1 - 3 )】 
if not "%shijian%"=="" set shijian=%shijian:~0,1%
if /i "%shijian%"=="1" goto xs
if /i "%shijian%"=="2" goto bxs
if /i "%shijian%"=="3" goto zy
echo.
echo.输入无效，请重新输入...
timeout /nobreak /t 1 > nul
echo.
goto 6

:xs
cls
@echo off
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowSecondsInSystemClock /t REG_DWORD /d 1 /f
TASKKILL /F /IM explorer.exe
echo.
echo restar explorer.exe
timeout /nobreak /t 1 > nul
start %windir%\explorer.exe
echo.
echo.ok
timeout /nobreak /t 1 > nul
goto 6

:bxs
cls
reg delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowSecondsInSystemClock /t REG_DWORD /d 1 /f
TASKKILL /F /IM explorer.exe
echo.
echo restar explorer.exe
timeout /nobreak /t 1 > nul
START %windir%\explorer.exe
echo.
echo.ok!
timeout /nobreak /t 1 > nul
goto 6

:zy
cls
goto menu


:7
cls
echo.
echo.打开计算机管理中......
timeout /nobreak /t 1 > nul
start /max %windir%\system32\compmgmt.msc /s
echo.
echo.已打开
timeout /nobreak /t 1 > nul
echo.
echo.执行完成,正在返回主菜单，请稍后......
timeout /nobreak /t 1 > nul
goto menu

:8
cls
echo.
echo.打开组策略中......
timeout /nobreak /t 1 > nul
start /max gpedit.msc
echo.
echo.已打开
timeout /nobreak /t 1 > nul
echo.
echo.执行完成,正在返回主菜单，请稍后......
timeout /nobreak /t 1 > nul
goto menu

:9
cls
echo.
echo.正在刷新组策略......
timeout /nobreak /t 1 > nul
gpupdate /force
echo.
echo.已刷新
timeout /nobreak /t 1 > nul
echo.
echo.执行完毕,正在返回主菜单......
timeout /nobreak /t 1 > nul
goto menu

:A
cls
echo.
echo.准备中......
timeout /nobreak /t 1 > nul
echo.
set a=
set /p a=【请输入关键字】
timeout /nobreak /t 1 > nul
start https://www.baidu.com/s?wd=%a%
echo.
echo.搜索中......
timeout /nobreak /t 1 > nul
echo.
echo.已完成
timeout /t 1 /nobreak >nul
echo.
echo.执行完毕,自动返回主菜单...
echo.
goto menu

:B
cls
echo.
echo.即将运行系统文件完整性检查......
timeout /nobreak /t 1 > nul

cls

sfc /SCANNOW

rem 检查修复系统

Dism /Online /Cleanup-Image /ScanHealth

rem 扫描全部系统文件和系统映像文件是否与官方版一致

Dism /Online /Cleanup-Image /CheckHealth

rem 检查文件的损坏程度，结果一般有两种：一般性损坏可以修复和情况严重完全无法修复

DISM /Online /Cleanup-image /RestoreHealth

rem 联网将系统映像文件中与官方文件不相同的文件还原成官方系统的源文件

sfc /SCANNOW

rem 再次检查
echo.
echo.按键盘任意键继续...
pause>nul

cls
echo.
echo.执行完成
timeout /nobreak /t 1 > nul
echo.
echo.正在返回主菜单，请稍后......
timeout /nobreak /t 1 > nul
goto menu


:C
cls
echo.
echo.准备中......
timeout /nobreak /t 1 > nul
echo.
echo.
echo.
echo 是否继续此操作? 
set put=
set /p put=【Y / N】

if not "%put%"=="" set put=%put:~0,1%
if /i "%put%"=="Y" goto T
if /i "%put%"=="N" goto S
echo.
echo.输入无效，请重新输入...
timeout /nobreak /t 1 > nul
echo.
goto C

:T 
cls
echo.
echo.继续操作...
echo.
echo 本功能可以移除windows系统内置应用来精简系统，需要输入路径/位置。例如 ：D:\桌面\yczd.ps1
echo.
set /p yichu=【请输入工具脚本运行路径/位置，并回车】
powershell.exe -executionpolicy remotesigned -File "%yichu%"
echo.
echo.按键盘任意键继续...
pause>nul
goto menu
 
:S
echo. 
echo.您选择了不继续操作，将返回主页面！
timeout /nobreak /t 1 > nul
echo.
goto menu



:D
cls
echo.
echo.即将执行，请等待......
timeout /nobreak /t 1 > nul
echo.
echo.开始执行
timeout /nobreak /t 1 > nul
ipconfig /renew
ipconfig /release
ipconfig /flushdns
echo.
echo. 已完成，建议重启你的电脑。
timeout /nobreak /t 1 > nul
echo.
echo.执行完毕,自动返回主菜单...
timeout /nobreak /t 1 > nul
echo.
goto menu

:E
CLS
echo.
echo.准备中......
timeout /nobreak /t 1 > nul
cls
echo.
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons" /v 29 /d "%systemroot%\system32\imageres.dll,197" /t reg_sz /f
echo.
rem 关闭Windows外壳程序explorer
taskkill /f /im explorer.exe
echo.
rem 清理系统图标缓存数据库
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
rem 清理 系统托盘记忆的图标
echo Y|reg delete "HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" /v IconStreams
echo Y|reg delete "HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" /v PastIconsStream
rem 重启Windows外壳程序explorer
start explorer.exe
echo.
echo.OK!
timeout /nobreak /t 1 > nul
echo.
echo.按键盘任意键继续...
pause>nul
goto menu


:F
CLS
echo.
echo.
echo.
echo.
echo.
echo.
echo.使用由近及远的原则意味着先要确认本机协议栈有没有问题，所以可以用「ping 127.0.0.1」来检查本机 TCP/IP 协议。
echo.
echo.按键盘任意键继续...
pause>nul
echo.
echo.准备中...
timeout /nobreak /t 1 > nul
echo.
echo.开始执行...
timeout /nobreak /t 1 > nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.一. 观察本地网络设置是否正确
timeout /nobreak /t 1 > nul
cls
echo. 
echo.
echo.
echo.
echo.
echo.
echo.**********************************本地网络配置**********************************
echo.
echo.
ipconfig /all
echo.
echo.
echo.按键盘任意键继续...
pause>nul

cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.二. ping 127.0.0.1.如果测试成功，表明网卡、TCP/IP协议的安装、IP地址、子网掩码的设置正常。如果测试不成功，就表示TCP/IP的安装或设置存在有问题。
echo.
echo.按键盘任意键继续...
pause>nul
cls
echo.
echo. 
echo.
echo.
echo.
echo.
echo.
echo.开始ping 127.0.0.1...
echo.
timeout /nobreak /t 1 > nul
echo.
echo.
echo.**********************************ping 127.0.0.1********************************
echo.
echo.
ping -n 15 -l 1500 127.0.0.1|findstr /I "TTL"
echo.
echo.
echo.
echo.
if %errorlevel%==0 (echo     √     TCP/IP协议正常) else (echo     X     TCP/IP协议异常)
echo.
echo.
echo.
echo.
echo.按键盘任意键继续...
pause>nul


cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.三. 如果测试不成功，则表示本地配置或安装存在问题，应当对网络设备和通讯介质进行测试、检查并排除。
echo.
echo.按键盘任意键继续...
pause>nul

:ip
cls
echo.
echo. 
echo.
echo.
echo.
echo.
echo.
echo.开始Ping本机IP地址...
echo.
timeout /nobreak /t 1 > nul
echo.
echo.
echo.**********************************ping本机IP地址********************************
echo.

set ip=
set /p ip=【请直接输入本机IP地址回车】 
echo.
if /i "%ip%"=="" (goto inputting) else (goto pingIP)

:inputting
cls
echo.
echo.
echo.您的输入有误，请在功能刷新后重新输入！
timeout /nobreak /t 1 > nul
goto ip

:pingIP
cls
echo.
echo.
echo.您输入了 %ip% ,开始执行操作...
timeout /nobreak /t 1 > nul
echo.
echo.
ping -n 15 -l 1500 "%ip%"|findstr /I "TTL"
echo.
echo.
echo.
echo.
if %errorlevel%==0 (echo     √     本机IP正常) else (echo     X     本机IP异常)
echo.
echo.
echo.
echo.
echo.按键盘任意键继续...
pause>nul

cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.四. ping网关或局域网内其他IP,如果测试成功，表明本地网络中的网卡和载体运行正确。但如果收到0个回送应答，那么表示子网掩码不正确或网卡配置错误或电缆系统有问题;或者局域网中的网关路由器正在运行并能够做出应答。
echo.
echo.按键盘任意键继续...
pause>nul

:wgip
cls
echo.
echo. 
echo.
echo.
echo.
echo.
echo.
echo.开始ping网关或局域网内其他IP...
echo.
timeout /nobreak /t 1 > nul
echo.
echo.
echo.***************************ping网关或局域网内其他IP********************************
echo.
set wgip=
set /p wgip=【请输入网关或局域网内其他IP】 
if /i "%wgip%"=="" (goto wg) else (goto ipwg)
echo.

:wg
cls
echo.
echo.
echo.输入无效,请在功能刷新后重新输入...
timeout /nobreak /t 1 > nul
goto wgip

:ipwg
cls
echo.
echo.
echo.您输入了 %wgip% ,开始执行操作...
echo.
echo.
ping -n 20 -l 1500 "%wgip%"|findstr /I "TTL" 
echo.
echo.
echo.
echo.
if %errorlevel%==0 (echo     √     网关状态正常) else (echo     X     网关状态异常)
echo.
echo.
echo.
echo.
echo.按键盘任意键继续...
pause>nul


cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.五. ping远程IP或域名.如果收到正确应答，表示成功的使用了缺省网关。对于拨号上网用户则表示能够成功的访问Internet（但不排除ISP的DNS会有问题）。对域名执行Ping命令，计算机必须先将域名转换成IP地址，通常是通过DNS服务器。如果这里出现故障，则表示本机DNS服务器的IP地址配置不正确，或它所访问的DNS服务器有故障。
echo.
echo.按键盘任意键继续...
pause>nul

:waiwang
cls
echo.
echo. 
echo.
echo.
echo.
echo.
echo.
echo.开始ping远程IP或域名...
timeout /nobreak /t 1 > nul
echo.
echo.
echo.************************************ping远程IP或域名*****************************
echo.
echo.
set waiwang=
set /p waiwang=【请输入需要Ping的远程IP或域名  ( 如  : www.baidu.com  或者 36.152.44.95 )】 
if /i "%waiwang%"=="" (goto ww) else (goto wang)
echo.

:ww
cls
echo.
echo.
echo.你的输入有误，请在工具刷新后重新输入！
timeout /nobreak /t 1 > nul
goto waiwang

:wang
cls
echo.
echo.
echo.您输入了 %waiwang% ,开始执行操作...
timeout /nobreak /t 1 > nul
echo.
echo.
ping /n 20 /l 1400 "%waiwang%"|findstr /I "TTL"
echo.
echo.
echo.
echo.
if %errorlevel%==0 (echo     √     外网连接正常) else (echo     X     无法连接外网) 
echo.
echo.
echo.
echo.
echo.按键盘任意键继续...
pause>nul


:tracert
cls
echo.
echo.开始测量路由情况...
timeout /nobreak /t 1 > nul
echo.
rem 六. 测量路由情况，显示数据包到达目的主机所经过的路径.traceroute命令的基本用法是，在命令提示符后键入“tracert host_name”或“tracert ip_address”，其中，tracert是traceroute在Windows操作系统上的称呼。
set tracert=
set /p tracert=【请输入 host_name (如 : www.baidu.com ) 或者 IP_address ( 如 : 36.152.44.95 ) 回车】  
if /i "%tracert%"=="" (goto host) else (goto address)

:host
cls
echo.
echo.
echo.你的输入有误，请在工具刷新后重新输入！
timeout /nobreak /t 1 > nul
goto tracert

:address
cls
echo.
echo.
echo.您输入了 %tracert% ,开始执行操作...
timeout /nobreak /t 1 > nul
echo.
echo.
tracert "%tracert%" 
echo.
echo.
echo.
echo.结果输出有5列：
echo.
echo.第一列  是描述路径的第n跳的数值，即沿着该路径的路由器序号；
echo.
echo.第二列  是第一次往返时延；
echo.
echo.第三列  是第二次往返时延；
echo.
echo.第四列  是第三次往返时延；
echo.
echo.第五列  是路由器的名字及其输入端口的IP地址。
echo.
echo.注  :   如果源从任何给定的路由器接收到的报文少于3条（由于网络中的分组丢失），
echo.
echo.        会在该路由器号码后面放一个星号，并报告到达那台路由器的少于3次的往返时间。
echo.
echo.
echo.按键盘任意键继续...
pause>nul
goto menu


:G
cls
echo.
echo.开始尝试修复网络
timeout /nobreak /t 1 > nul
echo.完成后，将自动重启您的电脑，请您在电脑重启后，重新连接到网络
timeout /nobreak /t 1 > nul
netsh winsock reset
echo.OK!
timeout /nobreak /t 1 > nul
echo.关闭程序，并重启中...
timeout /nobreak /t 1 > nul
shutdown -r -t 30
goto END


:H
cls
echo.
echo.打开设备管理器中......
timeout /nobreak /t 1 > nul
echo.
start /max devmgmt.msc
echo.
echo.执行完毕,自动返回主菜单...
timeout /nobreak /t 1 > nul
goto menu


:I
cls
echo.
echo.Openning Cmd......
timeout /nobreak /t 1 > nul
echo.
cls
%windir%\system32\cmd.exe
echo.
echo.按键盘任意键继续...
pause>nul
goto menu



:J
CLS
ECHO.
ECHO.打开控制面板中...
timeout /nobreak /t 1 > nul
start /max %SystemRoot%\system32\control.exe
echo.
echo.已打开
timeout /nobreak /t 1 > nul
echo.
echo.执行完毕,自动返回主菜单...
timeout /nobreak /t 1 > nul
goto menu


:K
cls
echo.
echo.打开网络连接中...
timeout /nobreak /t 1 > nul
rundll32.exe shell32.dll,Control_RunDLL ncpa.cpl
echo.
echo.执行完毕,自动返回主菜单...
timeout /nobreak /t 1 > nul
goto menu


:L
cls
echo.
echo.获取已连接WIFI名称及密码中...
timeout /nobreak /t 1 > nul
cls
rem 使用两个嵌套的for，第一个for获取所有已连接的wifi，第二个for遍历获取每一个wifi并取得密码
 
rem 需要使用for中的变量，需要使用如下setlocal及延迟环境变量扩展，否则%%a的变量无法使用
 
setlocal enableextensions enabledelayedexpansion  
echo 系统已连接wifi列表
 
rem wifi的递增编号
set count=0
echo        wifi序号                    wifi名称                     wifi密码
echo        --------------------------------------------------------------------
 
rem 获取所有已连wifi的列表，并用冒号：过滤“所有用户配置文件”的前后
 
for /f "usebackq delims=: tokens=1-2" %%a in (`netsh wlan show profiles ^| findstr "所有用户配置文件"`) do (
 
rem %%b为查询出来的解析后的第二个值：wifi ssid，赋值给临时变量wifiname
    set "wifiname=%%b"
 
rem 初始化wifi 密码为空
    set wifikey=
 
rem wifi列表的序号自增1
    set /a count+=1
    for /f "usebackq delims=: tokens=1-2" %%m in (`netsh wlan show profile name^=%%b key^=clear ^| findstr "关键内容"`) do (
 
rem 用冒号隔开解析后的第二个值是密码，赋值给临时变量wifikey
        set "wifikey=%%n"
    )
 
rem 打印出来       序号                     wifi名称                  wifi密码
echo              !count!                  !wifiname!                 !wifikey!
)
rem 核心是通过外层for循环遍历出每一个wifi名称，内层for循环遍历每一个wifi名称的密码
echo.已完成
timeout /nobreak /t 1 > nul
echo.
echo.按键盘任意键继续...
pause>nul
goto menu


:M
CLS
echo.
echo.警告：由于此功能操作具有一定的未知危险性,若要继续,请阅读并同意使用须知:
echo.
echo.                                     使用须知
echo.
echo.************************************************************************************
echo.1. 使用此功能要求使用者了解或掌握一定的计算机基础知识和技能
echo.
echo.2. 因为使用此功能误操作,导致无法使用,有能力给电脑重新安装系统的伙伴可以使用
echo.
echo.3. 既没有基本计算机知识和技能,又不会给电脑装系统,也没有其他方面的技能,若执意要使用
echo.
echo.   出现的一切问题及后果,由你自行承担，均与与本人无关，且本人概不负责
echo.************************************************************************************
echo.
echo.                          同意( Y )             不同意( N )
echo.
echo.已阅读并同意请按 ( "   Y   " );  不同意则按 ( "   N   " ).
echo.
set a=
set /p a=【请你输入对应序号  (  Y  /  N  )】 
if not "%a%"=="" set a=%a:~0,1%
if /i "%a%"=="Y" goto open
if /i "%a%"=="N" goto menu
echo.
echo.输入无效,请重新输入...
timeout /nobreak /t 1 > nul
echo.
goto M


:open
cls
rem 列出所有进程
tasklist
echo.
set tk=
set /p tk=【请输入要删除的进程名或PID , 然后回车】 
echo.
taskkill /f /im %tk%
echo.
if %errorlevel%==0 (goto open) else (goto false)
timeout /nobreak /t 1 > nul

:false
cls
echo.
echo 执行失败！若继续，请在下面输入Y，退出请输入N
echo.
echo              Y 继续		N 退出 
echo. 
set id=
set /p id=【请输入（ 输入 Y / N ）】
if not "%id%"=="" set id=%id:~0,1%
if /i "%id%"=="Y" goto open
if /i "%id%"=="N" goto menu 
echo.
echo.输入无效,请重新输入...
timeout /nobreak /t 1 > nul
echo.
goto false       


:N
cls
echo.
rem 所有使用电源方案
powercfg L
echo.
echo.
set pc=
set /p pc=【请输入要删除电源方案的  "   GUID  " , 然后回车】 
echo.
powercfg D %pc%
if %errorlevel%==0 (goto N) else (goto fs)
timeout /nobreak /t 1 > nul

:fs
cls
echo.
echo 执行失败！若继续，请在下面输入Y，退出请输入N
echo.
echo              Y 继续		N 退出 
echo. 
set id=
set /p id=【请输入（ 输入 Y / N ）】
if not "%id%"=="" set id=%id:~0,1%
if /i "%id%"=="Y" goto N
if /i "%id%"=="N" goto menu       
echo.
echo.输入无效，请重新输入...
timeout /nobreak /t 1 > nul
goto fs


:P
cls
echo.
echo 本功能只需要你动动鼠标和键盘，就可以回到经典win10菜单栏或者恢复win11菜单栏（ 注意 ：只适用于 windows 11 ）。
echo.
echo.执行相应操作后不会立即生效，请您重启计算机，注销，或者在本页面输入序号 “ 4 ” 重启资源管理器生效设置
echo.
echo ****************************** 回到win10/恢复win11菜单栏工具 ****************************
echo.
echo			1. 回到win10菜单栏		2. 恢复win11菜单栏             
echo.
echo			3. 返回主菜单			4. 重启资源管理器
echo.
echo.***************************************************************************************
echo.
set input=
set /p input=【请直接输入功能对应数字，并回车(1-4)】 
if not "%input%"=="" set input=%input:~0,1%
if /i "%input%"=="1" goto HD
if /i "%input%"=="2" goto HF
if /i "%input%"=="3" goto MENU
if /i "%input%"=="4" goto CQ
echo.
echo.输入无效，请重新输入...
timeout /nobreak /t 1 > nul
echo.
goto P

:HD
cls
echo.
echo 正在执行操作...
timeout /nobreak /t 1 > nul
reg add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve 
echo OK!
echo.按键盘任意键继续...
pause>nul
GOTO RUNNING

:HF
cls
echo.
echo 正在执行操作...
timeout /nobreak /t 1 > nul
reg delete "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /va /f
echo OK!
echo.按键盘任意键继续...
pause>nul
GOTO RUNNING

:MENU
cls
echo.
echo 返回主菜单中...
timeout /nobreak /t 1 > nul
goto menu

:CQ
cls
echo.
taskkill /f /im explorer.exe
timeout /nobreak /t 1 > nul
start explorer.exe
ECHO OK!
timeout /nobreak /t 1 > nul
GOTO RUNNING



:Q
cls
echo.
echo.微软商店打不开试试这个功能！
echo.
echo.////////////////////////////////////////////////////////////////////
echo.
echo.功能区：
echo.
echo.                              1.  打开internet属性调整设置
echo.
echo.                              2.  清空应用商店的缓存
echo.                              
echo.                              3.  重新部署应用商店
echo.
echo.                              4.  退出
echo.
echo./////////////////////////////////////////////////////////////////////
echo.
set rw=
set /p rw=【请直接输入功能对应数字，并回车 ( 1 - 4 )】 
if not "%rw%"=="" set rw=%rw:~0,1%
if /i "%rw%"=="1" goto oe
if /i "%rw%"=="2" goto wo
if /i "%rw%"=="3" goto hree
if /i "%rw%"=="4" goto ex
echo.
echo.输入无效，请重新输入...
timeout /nobreak /t 1 > nul
echo.
goto Q

:oe
cls
echo.
echo.在打开的 “ Internet选项  ” 窗口，点击上方的“高级”一栏，勾选 “使用SSL 3.0”、”使用 TLS 1.0“、”使用 TLS 1.1“、”使用 TLS 1.2“，应用后关闭程序后，重启电脑，查看能否解决问题。
echo.
echo.按键盘任意键继续...
pause>nul
echo.
start inetcpl.cpl
echo.OK!
timeout /nobreak /t 1 > nul
goto Q

:wo
cls
echo.
echo.清空应用商店的缓存...
timeout /nobreak /t 1 > nul
echo.
wsreset.exe
echo.
echo.OK!
timeout /nobreak /t 1 > nul
goto Q

:hree
cls
echo.
echo.重新部署操作进程中...
timeout /nobreak /t 1 > nul
echo.
echo.本功能可以重新部署WindowsStore，需要输入路径/位置，例如 ：D:\桌面\ws.ps1
echo.
set /p wse=【请输入工具脚本执行路径/位置，并回车】
echo.
powershell.exe -executionpolicy remotesigned -File "%wse%"
echo.按键盘任意键继续...
pause>nul
goto Q

:ex
goto menu



:R
cls
echo.
echo.添加win家庭版组策略组件中...
timeout /nobreak /t 1 > nul

pushd "%~dp0"
 
dir /b C:\Windows\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientExtensions-Package~3*.mum >List.txt
 
dir /b C:\Windows\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientTools-Package~3*.mum >>List.txt
 
for /f %%i in ('findstr /i . List.txt 2^>nul') do dism /online /norestart /add-package:"C:\Windows\servicing\Packages\%%i"

echo.已添加。
echo.
echo.按键盘任意键继续...
pause>nul
goto menu



:Y
cls
echo.
echo.该功能尽可能地帮你解决任务栏卡死，无响应等任务栏问题。
echo.
echo.------------------------------------------------------ 功能区 -------------------------------------------------------
echo.
echo.						      1. 重启Windows资源管理器
echo.
echo.						      2. 重新部署操作进程
echo.
echo.						      3. 检查并修复Windows文件
echo.
echo.						      4. 退出
echo.
echo.---------------------------------------------------------------------------------------------------------------------
echo.
set rwl=
set /p rwl=【请直接输入功能对应数字，并回车 ( 1 - 4 )】 
if not "%rwl%"=="" set rwl=%rwl:~0,1%
if /i "%rwl%"=="1" goto one
if /i "%rwl%"=="2" goto two
if /i "%rwl%"=="3" goto three
if /i "%rwl%"=="4" goto four
echo.
echo.输入无效，请重新输入...
timeout /nobreak /t 1 > nul
echo.
goto Y

:one
cls
echo.
echo. 重启Windows资源管理器中...
timeout /nobreak /t 1 > nul
taskkill /f /im explorer.exe
timeout /nobreak /t 1 > nul
start explorer.exe
echo.OK!
timeout /nobreak /t 1 > nul
goto Y

:two
cls
echo.
echo.重新部署操作进程中...
echo.
echo.本功能可以重新部署windows系统操作进程，需要输入路径/位置，例如 ：D:\桌面\czjc.ps1
echo.
set bushu=
set /p bushu=【请输入工具脚本执行路径/位置，并回车】
echo.
powershell.exe -executionpolicy remotesigned -File "%bushu%"
echo.按键盘任意键继续...
pause>nul
goto Y

:three
cls
echo.
echo.检查并修复Windows文件
timeout /nobreak /t 1 > nul
sfc /scannow
echo.
echo.OK!
timeout /nobreak /t 1 > nul
goto Y

:four
cls
echo.
echo.Returnning to menu...
timeout /nobreak /t 1 > nul
goto menu


:END
cls
echo.
echo.退出程序中......
timeout /nobreak /t 1 > nul
exit






