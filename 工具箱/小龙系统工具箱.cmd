::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWHreyHcjLQlHcCiNMmyGIrAP4/z0/9a3rVoYRtE3fYPX5pWKJMED+gv0ZsdN
::fBE1pAF6MU+EWHreyHcjLQlHcCiNMmyGIrAP4/z0/9a3rVoYRtE3fYPX5reUKuNd+la1FQ==
::fBE1pAF6MU+EWHreyHcjLQlHcCiNMmyGIrAP4/z0/9a3rVoYRtE3fYPX5qSdbvAAuyU=
::fBE1pAF6MU+EWHreyHcjLQlHcCiNMmyGIrAP4/z0/9a3rVoYRtE3fYPX5qaLLe8F7wv0ZsdN
::fBE1pAF6MU+EWHreyHcjLQlHcCiNMmyGIrAP4/z0/9a3rVoYRtE3fYPX5qOdbvAAuyU=
::fBE1pAF6MU+EWHreyHcjLQlHcCiNMmyGIrAP4/z0/9a3rVoYRtE3fYPX5q2NOuRd+la1FQ==
::fBE1pAF6MU+EWHreyHcjLQlHcCiNMmyGIrAP4/z0/9aDrF5TQPorGA==
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFDdbQgO+GG6pDaET+NT34O2I7EQeW4I=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSTk=
::eBoioBt6dFKZSTk=
::cRo6pxp7LAbNWATEpSI=
::egkzugNsPRvcWATEpSI=
::dAsiuh18IRvcCxnZtBNQ
::cRYluBh/LU+EWAjk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJjZksaHVTMbQs=
::ZQ05rAF9IBncCkqN+0xwdVsHAlTMbTv0V9U=
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

:: ------------------------------------    �ָ��ߣ�����Ϊ���������     -----------------------------------------
@echo off

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
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    REM ִ�е��˴����Ѿ���ȡ�˹���ԱȨ�ޣ�Ȼ��ø������


@echo off
CD /D %~DP0
setlocal enabledelayedexpansion
COLOR 0A
title С��windowsϵͳ������
CHCP 936
timeout /nobreak /t 2 > nul
:kai-shi
cls
echo.
echo.                                                      С��WINDOWSϵͳ������
echo.****************************************************************************************************************************************************************
echo.                                                    ���ڱ��ű��������Ҫ˵��
echo.****************************************************************************************************************************************************************
echo.
echo. 1. ��windowsϵͳ�����䣨���¼�ơ������䡿�ɱ������������ԣ�������
echo.
echo. 2. �������ԣ�������ű���
echo.
echo. 3. ���������ߣ���С�����������䣺2539223617@qq.com��
echo.
echo. 4. ���������ɱ������������ԣ���ɫ�޶���ȫ�����Է���ʹ�á�
echo.
echo. 5. ���棺δ��������ɣ�ͬ������������𽫱�����������ƽ⣬�޸ģ������޸�Ϊ������򣩣����������ˣ����������ã�лл����������
echo.
echo. 6. ������ʹ�ñ����������Ӧ����ǰ����������ѡ����Ϊ���������⣬����ʧ��ȸ���ԭ������ֵ�һ�����⣬���뱾���޹أ��ұ��˸Ų�����
echo.
echo. 7. ��ܰ��ʾ : ������������������ߣ��ĵ����ļ���ʱ����ǰ��������ԭ���ߣ����߿ɿ����ŵ���վ���أ���������������㼰����Ҫ����ʧ��
echo.
echo.****************************************************************************************************************************************************************
echo.
echo.                                    ʹ�ñ�����ǰ����Ҫ��ͬ����Ҫ˵���������޷���������
echo.
echo.                                           ͬ���밴 Y              ��ͬ���밴 N
echo.
set sm=
set /p sm=����ֱ�������Ӧ��ĸ�س�( Y / N )����
if not "%sm%"=="" set sm=%sm:~0,1%
if /i "%sm%"=="Y" goto next
if /i "%sm%"=="N" goto END
echo.
echo.������Ч������������...
timeout /nobreak /t 1 > nul
echo.
goto kai-shi


:next
cls
echo.
echo. ��ʾ��Ϣ��...
cls
echo.
echo. һ ������ȫ���ǲ��Ƕ������
echo.
echo. �ش����Ǹ���ȫ�ĳ��򹤾ߣ����ǲ���Ҳ���Ƕ������ÿ�����ܶ���������ʵ�����ԣ���������ʹ�á�
echo.
echo. �� ���б�������ϵͳ��Ӱ����
echo.
echo. �ش𣺱��������й��ܶ�ϵͳ��Ӱ��������Ժ��Բ��ƣ�����ֻ�ǰ�һЩ���ܾ����������ɹ�����ģ�
echo.
echo.       ��Щ���ܻ��������޸ģ��ı�ϵͳ���ú�ϵͳ�ļ������Զ�ϵͳ���Ӱ�켫�ͣ����ҷ��Ĳ�֪����
echo.
echo. �� ʹ�ñ�������Ҫע��ʲô��
echo.    
echo.    1. ���б�����ʱ���������Ȼ���뵽���ڱ��������Ҫ˵�������Ž����뵽��ҳ�棬������ϸ�Ķ������
echo.
echo.       ����󣬷��ɽ���������˵���
echo.
echo.    2. ���ڱ����򲿷ֹ�����Ҫ����ԱȨ�޲������У����Ա�����ʼ�᳢���Զ���ȡ����ԱȨ�ޡ��������˲���
echo.
echo.       �������ܳɹ���ȡ��ע���ǻ������ܣ�������֤��һ�����ԣ����������б�����ǰ������������Ҽ������ߣ�ѡ��
echo.
echo.       �Թ���Ա������С���Ȼ�����������ʹ�ñ����ߣ�����Ը�����
echo.
echo.    3. ��ѡ��ִ����Ӧ����ʱ��������ѡ������ù��ܶ�Ӧ����/��ĸ������ʱʱ�̿���������ʱ�˿��ڸ�ʲô�����Ҫ��Ϊ�Լ�������
echo.
echo.       �����ҡ�
echo.
echo.    4. �ù���ǰ������������ĸ������ʱ���Բ����ִ�Сд��
echo.
echo.    5. ���������������޸���������ݣ���Ϊ���������Ϊ������һ�����⼰����Ӱ�죬һ���뱾���޹أ��ұ��˸Ų�����
echo.
echo.   
echo.    ......��ʱû���дɶ�����������ӣ�~_~
echo.                                                                                   
echo.
echo.                                           Copyright (C) 2022 ��С�� 
echo.
echo.�������¼������������...                                                                                                                                 
pause>nul
goto MENU


:MENU
cls
echo.
echo. *******************************************************************************************************
echo.                                    
echo.  ��ǰʱ�䣺%time:~0,2%ʱ%time:~3,2%��%time:~6,2%��  
echo.
echo.  ��ǰ���ڣ�%date% 
echo.
echo.  ��ǰ������汾��2022-12-23 15:24�� 
echo.
echo.   windowsϵͳ����������·����%~DP0
echo.                                                                                                             
echo. *******************************************************************************************************
echo.
echo. *************************************    ��������Ҫִ�в���ǰ�����ֻ���ĸ��ţ����س�    ************************************
echo. 
echo. *********************************************** ��Ҫ�˳��������" / "�����س� ******************************************************
echo.
echo. ------------------------------------------------------------------------------------------------------------------------------------
echo.
echo.  ��������:
echo.
echo               0 ���������                        A �ٶȹؼ�������	                    K ��������									
echo.           
echo               1 ��������                          B ���ϵͳ������	                    L �鿴������ǰ������WI-FI���Ƽ�����
echo.											
echo               2 ϵͳ��Ϣ                          C �Ƴ�ϵͳ�Դ�Ӧ��(����ѡ��)              M ��ֹ����(Σ�չ���)									
echo.
echo               3 windows�ڴ����                   D ����DNS����                             N ɾ�����Բ���Ҫ�ĵ�Դ����   								
echo.
echo               4 ������Դ������                    E ����ͼ�����ݿ⻺��                      P �°�/�����Ҽ��˵����л�									
echo.	
echo               5 ��ջ���վ                        F ���������ͨ��                          Q ���΢���̵�򲻿�������									
echo.
echo               6 ������ʱ����ʾ/����ʾ����         G ���Խ�������޷����ӵ�����              R win��ͥ�������������
echo.
echo               7 ���������                        H �豸������                              S ����޷�����powershell�ű�����		
echo.
echo               8 �������                        I ������ʾ��                              T ж��/��װ΢���̵�		
echo.
echo               9 ˢ�������                        J �������                                U ��������dns
echo.
echo               O �������ù̶�/�Զ�ip��ַ���������롢���ء�dns��ַ�����Թ��ܣ�                Y �������������Ӧ������
echo.
echo               / �˳�����	
echo.
echo. ------------------------------------------------------------------------------------------------------------------------------------
echo.
echo. ע�� ������ �� P �� �°�/�����Ҽ��˵����л��������� win 11 ϵͳ��
echo.
echo         ���� �� 6 �� ������ʱ����ʾ/����ʾ����������ڳ� win 11 ����� windows ϵͳ��
echo.
echo. ************************************************************************************************************************************
echo.
set id=
set /p id=���������벢�س�����
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
if /i "%id%"=="Y" goto Y
if /i "%id%"=="/" goto END
echo.
echo.������Ч,����������...
timeout /nobreak /t 1 > nul
goto MENU


:0
cls
echo.
echo.�������������...
timeout /nobreak /t 1 > nul
start /max %windir%\system32\taskmgr.exe /7
echo.
echo.ִ����ϣ��Զ��������˵�...
timeout /nobreak /t 1 > nul
goto MENU

:1
cls
echo.
echo.�򿪴���������...
timeout /nobreak /t 1 > nul
%windir%\system32\cleanmgr.exe
echo.
echo.ִ����ϣ��Զ��������˵�...
timeout /nobreak /t 1 > nul
goto MENU

:2
cls
echo.
echo.��ϵͳ��Ϣ��...
timeout /nobreak /t 1 > nul
start /max %windir%\system32\msinfo32.exe
echo.
echo.ִ����ϣ��Զ��������˵�...
timeout /nobreak /t 1 > nul
goto MENU

:3
cls
echo.
echo.���ڴ������...
timeout /nobreak /t 1 > nul
%windir%\system32\MdSched.exe
echo.
echo.ִ����ϣ��Զ��������˵�...
timeout /nobreak /t 1 > nul
goto MENU

:4
cls
echo.
echo.������Դ��������...
timeout /nobreak /t 1 > nul
taskkill /f /IM explorer.exe
start explorer.exe
echo.
echo.ִ����ϣ��Զ��������˵�...
timeout /nobreak /t 1 > nul
goto MENU

:5
cls
echo.��ջ���վ��...
timeout /nobreak /t 1 > nul
cmd.exe /c "echo A|PowerShell.exe -NoProfile -Command Clear-RecycleBin"
echo. �����
timeout /nobreak /t 1 > nul
echo.
echo. ִ����ϣ��Զ��������˵�...
timeout /nobreak /t 1 > nul
goto MENU

:6
echo.
cls
echo.
echo �����ܿ�����������ʱ����ʾ/����ʾ���롣
echo.
echo ****************************** ������ʱ����ʾ/����ʾ�����޸Ĺ��� ****************************
echo.
echo.                     1. ʱ����ʾ����   2. ʱ�䲻��ʾ����   3. ������ҳ��            
echo.
echo.**********************************************************************************************
echo.
set shi-jian=
set /p shi-jian=����ֱ�����빦�ܶ�Ӧ���֣����س�( 1 - 3 )���� 
if not "%shi-jian%"=="" set shi-jian=%shi-jian:~0,1%
if /i "%shi-jian%"=="1" goto xs
if /i "%shi-jian%"=="2" goto bxs
if /i "%shi-jian%"=="3" goto zy
echo.
echo.������Ч������������...
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
goto MENU


:7
cls
echo.
echo.�򿪼����������......
timeout /nobreak /t 1 > nul
start /max %windir%\system32\compmgmt.msc /s
echo.
echo.�Ѵ�
timeout /nobreak /t 1 > nul
echo.
echo.ִ����ɣ����ڷ������˵������Ժ�......
timeout /nobreak /t 1 > nul
goto MENU

:8
cls
echo.
echo.���������......
timeout /nobreak /t 1 > nul
start /max gpedit.msc
echo.
echo.�Ѵ�
timeout /nobreak /t 1 > nul
echo.
echo.ִ����ɣ����ڷ������˵������Ժ�......
timeout /nobreak /t 1 > nul
goto MENU

:9
cls
echo.
echo.����ˢ�������......
timeout /nobreak /t 1 > nul
gpupdate /force
echo.
echo.��ˢ��
timeout /nobreak /t 1 > nul
echo.
echo.ִ����ϣ����ڷ������˵�......
timeout /nobreak /t 1 > nul
goto MENU

:A
cls
echo.
echo.׼����......
timeout /nobreak /t 1 > nul
echo.
set a=
set /p a=��������ؼ��֡���
timeout /nobreak /t 1 > nul
start https://www.baidu.com/s?wd=%a%
echo.
echo.������......
timeout /nobreak /t 1 > nul
echo.
echo.�����
timeout /t 1 /nobreak >nul
echo.
echo.ִ����ϣ��Զ��������˵�...
echo.
goto MENU

:B
cls
echo.
echo.��������ϵͳ�ļ������Լ��......
timeout /nobreak /t 1 > nul

cls

sfc /SCANNOW

:: ����޸�ϵͳ

Dism /Online /Cleanup-Image /ScanHealth

:: ɨ��ȫ��ϵͳ�ļ���ϵͳӳ���ļ��Ƿ���ٷ���һ��

Dism /Online /Cleanup-Image /CheckHealth

:: ����ļ����𻵳̶ȣ����һ�������֣�һ�����𻵿����޸������������ȫ�޷��޸�

DISM /Online /Cleanup-image /RestoreHealth

:: ������ϵͳӳ���ļ�����ٷ��ļ�����ͬ���ļ���ԭ�ɹٷ�ϵͳ��Դ�ļ�

sfc /SCANNOW

:: �ٴμ��
echo.
echo.�������¼������������...
pause>nul

cls
echo.
echo.ִ�����
timeout /nobreak /t 1 > nul
echo.
echo.���ڷ������˵������Ժ�......
timeout /nobreak /t 1 > nul
goto MENU


:C
cls
echo.
echo.׼����......
timeout /nobreak /t 1 > nul
cls
echo.
echo.
echo.
echo �Ƿ�����˲���? 
set put=
set /p put=�� Y ( �� ) / N ( �� ) ����

if not "%put%"=="" set put=%put:~0,1%
if /i "%put%"=="Y" goto TT
if /i "%put%"=="N" goto SS
echo.
echo.������Ч������������...
timeout /nobreak /t 1 > nul
echo.
goto C

:TT 
cls
echo.
echo.��������...
CLS
echo.
echo �����ܿ����Ƴ�windowsϵͳ����Ӧ��������ϵͳ����Ҫ����·��/λ�á����� ��D:\����\yczd.ps1
echo.
set /p yichu=�������빤�߽ű�����·��/λ�ã����س�����
PowerShell.exe -ExecutionPolicy Bypass -File "%yichu%"
PowerShell.exe -ExecutionPolicy UnRestricted -File "%yichu%"
echo.
echo.�������¼������������...
pause>nul
goto MENU
 
:SS
echo. 
echo.��ѡ���˲�������������������ҳ�棡
timeout /nobreak /t 1 > nul
echo.
goto MENU



:D
cls
echo.
echo.����ִ�У���ȴ�......
timeout /nobreak /t 1 > nul
echo.
echo.��ʼִ��
timeout /nobreak /t 1 > nul
ipconfig /flushdns
echo.
echo.
echo.ִ����ϣ��Զ��������˵�...
timeout /nobreak /t 1 > nul
echo.
goto MENU

:E
CLS
echo.
echo.׼����......
timeout /nobreak /t 1 > nul
cls
echo.
echo.
echo.
echo �����ܿ��Խ������ͼ�����⣬����ϵͳͼ�껺�����ݿ⣬ϵͳ���̼����ͼ�꣬ȥ��ͼ���ͷ�Ͷ��ơ�
echo.
echo.
echo.
echo.�������¼������������...
pause>nul
cls
echo.
echo.
echo.
echo.
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons" /v 29 /d "%systemroot%\system32\imageres.dll,197" /t reg_sz /f
echo.
:: �ر�Windows��ǳ���explorer
taskkill /f /im explorer.exe
echo.
:: ����ϵͳͼ�껺�����ݿ�
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
:: ���� ϵͳ���̼����ͼ��
echo Y|reg delete "HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" /v IconStreams
echo Y|reg delete "HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" /v PastIconsStream
:: ����Windows��ǳ���explorer
start explorer.exe
echo.
echo.OK!
timeout /nobreak /t 1 > nul
echo.
echo.�������¼������������...
pause>nul
goto MENU


:F
CLS
echo.
echo.
echo.
echo.
echo.
echo.
echo.ʹ���ɽ���Զ��ԭ����ζ����Ҫȷ�ϱ���Э��ջ��û�����⣬���Կ����á�ping 127.0.0.1������鱾�� TCP/IP Э�顣
echo.
echo.�������¼������������...
pause>nul
echo.
echo.׼����...
timeout /nobreak /t 1 > nul
echo.
echo.��ʼִ��...
timeout /nobreak /t 1 > nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.һ. �۲챾�����������Ƿ���ȷ
timeout /nobreak /t 1 > nul
cls
echo. 
echo.
echo.
echo.
echo.
echo.
echo.**********************************������������**********************************
echo.
echo.
ipconfig /all
echo.
echo.
echo.�������¼������������...
pause>nul

cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.��. ping 127.0.0.1.������Գɹ�������������TCP/IPЭ��İ�װ��IP��ַ���������������������������Բ��ɹ����ͱ�ʾTCP/IP�İ�װ�����ô��������⡣
echo.
echo.�������¼������������...
pause>nul
cls
echo.
echo. 
echo.
echo.
echo.
echo.
echo.
echo.��ʼping 127.0.0.1...
echo.
timeout /nobreak /t 1 > nul
echo.
echo.
echo.**********************************ping 127.0.0.1********************************
echo.
echo.
ping -n 15 -l 1500 127.0.0.1 | findstr /I "TTL"
echo.
echo.
echo.
echo.
if %errorlevel%==0 (echo     ��     TCP / IPЭ������) else (echo     X     TCP / IPЭ���쳣)
echo.
echo.
echo.
echo.
echo.�������¼������������...
pause>nul


cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.��. ������Բ��ɹ������ʾ�������û�װ�������⣬Ӧ���������豸��ͨѶ���ʽ��в��ԡ���鲢�ų���
echo.
echo.�������¼������������...
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
echo.��ʼPing����IP��ַ...
echo.
timeout /nobreak /t 1 > nul
echo.
echo.
echo.**********************************ping����IP��ַ********************************
echo.

set ip=
set /p ip=����ֱ�����뱾��IP��ַ�س�����
echo.
if /i "%ip%"=="" (goto inputting) else (goto pingIP)

:inputting
cls
echo.
echo.
echo.���������������ڹ���ˢ�º��������룡
timeout /nobreak /t 1 > nul
goto ip

:pingIP
cls
echo.
echo.
echo.�������� %ip% ,��ʼִ�в���...
timeout /nobreak /t 1 > nul
echo.
echo.
ping -n 15 -l 1500 "%ip%" | findstr /I "TTL"
echo.
echo.
echo.
echo.
if %errorlevel%==0 (echo     ��     ����IP����) else (echo     X     ����IP�쳣)
echo.
echo.
echo.
echo.
echo.�������¼������������...
pause>nul

cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.��. ping���ػ������������IP,������Գɹ����������������е�����������������ȷ��������յ�0������Ӧ����ô��ʾ�������벻��ȷ���������ô�������ϵͳ������;���߾������е�����·�����������в��ܹ�����Ӧ��
echo.
echo.�������¼������������...
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
echo.��ʼping���ػ������������IP...
echo.
timeout /nobreak /t 1 > nul
echo.
echo.
echo.***************************ping���ػ������������IP********************************
echo.
set wgip=
set /p wgip=�����������ػ������������IP���� 
if /i "%wgip%"=="" (goto wg) else (goto ipwg)
echo.

:wg
cls
echo.
echo.
echo.������Ч,���ڹ���ˢ�º���������...
timeout /nobreak /t 1 > nul
goto wgip

:ipwg
cls
echo.
echo.
echo.�������� %wgip% ,��ʼִ�в���...
echo.
echo.
ping -n 15 -l 1500 "%wgip%" | findstr /I "TTL" 
echo.
echo.
echo.
echo.
if %errorlevel%==0 (echo     ��     ����״̬����) else (echo     X     ����״̬�쳣)
echo.
echo.
echo.
echo.
echo.�������¼������������...
pause>nul


cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.��. pingԶ��IP������.����յ���ȷӦ�𣬱�ʾ�ɹ���ʹ����ȱʡ���ء����ڲ��������û����ʾ�ܹ��ɹ��ķ���Internet�������ų�ISP��DNS�������⣩��������ִ��Ping�������������Ƚ�����ת����IP��ַ��ͨ����ͨ��DNS�����������������ֹ��ϣ����ʾ����DNS��������IP��ַ���ò���ȷ�����������ʵ�DNS�������й��ϡ�
echo.
echo.�������¼������������...
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
echo.��ʼpingԶ��IP������...
timeout /nobreak /t 1 > nul
echo.
echo.
echo.************************************pingԶ��IP������*****************************
echo.
echo.
set waiwang=
set /p waiwang=����������ҪPing��Զ��IP������( ��  : www.baidu.com  ���� 36.152.44.95 )���� 
if /i "%waiwang%"=="" (goto ww) else (goto wang)
echo.

:ww
cls
echo.
echo.
echo.��������������ڹ���ˢ�º��������룡
timeout /nobreak /t 1 > nul
goto waiwang

:wang
cls
echo.
echo.
echo.�������� %waiwang% ,��ʼִ�в���...
timeout /nobreak /t 1 > nul
echo.
echo.
ping /n 15 /l 1400 "%waiwang%" | findstr /I "TTL"
echo.
echo.
echo.
echo.
if %errorlevel%==0 (echo     ��     ������������) else (echo     X     �޷���������) 
echo.
echo.
echo.
echo.
echo.�������¼������������...
pause>nul


:tracert
cls
echo.
echo.��ʼ����·�����...
timeout /nobreak /t 1 > nul
echo.
:: ��. ����·���������ʾ���ݰ�����Ŀ��������������·��.traceroute����Ļ����÷��ǣ���������ʾ������롰tracert host_name����tracert ip_address�������У�tracert��traceroute��Windows����ϵͳ�ϵĳƺ���
set tracert=
set /p tracert=�������� host_name (�� : www.baidu.com ) ���� IP_address ( �� : 36.152.44.95 ) �س�����  
if /i "%tracert%"=="" (goto host) else (goto address)

:host
cls
echo.
echo.
echo.��������������ڹ���ˢ�º��������룡
timeout /nobreak /t 1 > nul
goto tracert

:address
cls
echo.
echo.
echo.�������� %tracert% ,��ʼִ�в���...
timeout /nobreak /t 1 > nul
echo.
echo.
tracert "%tracert%" 
echo.
echo.
echo.
echo.��������5�У�
echo.
echo.��һ��  ������·���ĵ�n������ֵ�������Ÿ�·����·������ţ�
echo.
echo.�ڶ���  �ǵ�һ������ʱ�ӣ�
echo.
echo.������  �ǵڶ�������ʱ�ӣ�
echo.
echo.������  �ǵ���������ʱ�ӣ�
echo.
echo.������  ��·���������ּ�������˿ڵ�IP��ַ��
echo.
echo.ע  :   ���Դ���κθ�����·�������յ��ı�������3�������������еķ��鶪ʧ����
echo.
echo.        ���ڸ�·������������һ���Ǻţ������浽����̨·����������3�ε�����ʱ�䡣
echo.
echo.
echo.�������¼������������...
pause>nul
goto MENU


:G
cls
echo.
echo.��ʼ�����޸�����
timeout /nobreak /t 1 > nul
echo.��ɺ󣬽��Զ��������ĵ��ԣ������ڵ����������������ӵ�����
timeout /nobreak /t 1 > nul
netsh winsock reset
echo.OK!
timeout /nobreak /t 1 > nul
echo.�رճ��򣬲�������...
timeout /nobreak /t 1 > nul
shutdown -r -t 30
goto END


:H
cls
echo.
echo.���豸��������......
timeout /nobreak /t 1 > nul
echo.
start /max devmgmt.msc
echo.
echo.ִ����ϣ��Զ��������˵�...
timeout /nobreak /t 1 > nul
goto MENU


:I
cls
echo.
echo. Openning Cmd......
timeout /nobreak /t 1 > nul
cls
echo.
echo. ʹ�ý����󣬼��� ' exit ' �����˳�cmd������ʾ����
echo.
echo.�������¼������������...
pause>nul
echo.
cls
%windir%\system32\cmd.exe
echo.
timeout /nobreak /t 1 > nul
goto MENU



:J
CLS
ECHO.
ECHO.�򿪿��������...
timeout /nobreak /t 1 > nul
start /max %SystemRoot%\system32\control.exe
echo.
echo.�Ѵ�
timeout /nobreak /t 1 > nul
echo.
echo.ִ����ϣ��Զ��������˵�...
timeout /nobreak /t 1 > nul
goto MENU


:K
cls
echo.
echo.������������...
timeout /nobreak /t 1 > nul
rundll32.exe shell32.dll,Control_RunDLL ncpa.cpl
echo.
echo.ִ����ϣ��Զ��������˵�...
timeout /nobreak /t 1 > nul
goto MENU


:L
cls
echo.
echo.
echo.
echo.
echo. ��ȡ������WIFI���Ƽ�������...
timeout /nobreak /t 1 > nul
cls
echo.
echo.
echo.
echo.
echo ---------------------------------------------------------------------------------
echo.
echo.
netsh wlan show profiles
echo.
echo.
echo ---------------------------------------------------------------------------------
echo.
echo �������������ӹ���WI-FI�� /These are WI-FIs that have been connected before.
echo.
echo ������������һ��WI-FI�����֣�ע���Сд����/Please enter one of the names (case-sensitive).
echo.
set/p WI-FI-Name=
echo.
echo.
echo ---------------------------------------------------------------------------------
echo.
netsh wlan show profile name="%WI-FI-Name%" key=clear
echo.
echo ---------------------------------------------------------------------------------
echo.
echo.
echo.
echo.
echo �� �ؼ����� �����Ǵ�wifi�����롣/The key is the WiFi password.
echo.
echo.�����
timeout /nobreak /t 1 > nul
echo.
echo.�������¼������������...
pause>nul
goto MENU


:M
CLS
echo.
echo.���棺���ڴ˹��ܲ�������һ����δ֪Σ���ԣ���Ҫ���������Ķ���ͬ��ʹ����֪:
echo.
echo.                                     ʹ����֪
echo.
echo.*******************************************************************************************
echo.1. ʹ�ô˹���Ҫ��ʹ�����˽������һ���ļ��������֪ʶ�ͼ���
echo.
echo.2. ��Ϊʹ�ô˹��������,�����޷�ʹ��,���������������°�װϵͳ�Ļ�����ʹ��
echo.
echo.3. ��û�л��������֪ʶ�ͼ���,�ֲ��������װϵͳ,Ҳû����������ļ���,��ִ��Ҫʹ��
echo.
echo.   ���ֵ�һ�����⼰���,�������ге��������뱾���޹أ��ұ��˸Ų�����
echo.*******************************************************************************************
echo.
echo.                          ͬ��( Y )             ��ͬ��( N )
echo.
echo.���Ķ���ͬ���밴 ( "   Y   " );  ��ͬ���� ( "   N   " ).
echo.
set a=
set /p a=�����������Ӧ���  (  Y  /  N  )���� 
if not "%a%"=="" set a=%a:~0,1%
if /i "%a%"=="Y" goto open
if /i "%a%"=="N" goto MENU
echo.
echo.������Ч,����������...
timeout /nobreak /t 1 > nul
echo.
goto M


:open
cls
:: �г����н���
TASKLIST /V
echo.
set TK=
set /p TK=��������Ҫ������ �� ������ ���� �� PID ��[ ������ ], ����enter�س�����
if errorlevel 1 (
goto open
) else (
goto zhixing
)
:zhixing
TASKKILL /PID "%TK%" /T /F
TASKKILL /F /IM "%TK%" /T
echo.
echo.�������¼������������...
pause>nul
echo.
goto MENU      


:N
cls
echo.
:: ����ʹ�õ�Դ����
powercfg L
echo.
echo.
set PC=
set /p PC=��������Ҫɾ����Դ������  "   GUID  " , Ȼ��س�����
if errorlevel 1 (
goto N
) else (
goto jixu
)
:jixu
powercfg D "%PC%"
echo.
echo. ��ɾ����Դ������%PC%
echo.
echo.�������¼������������...
pause>nul
echo.
goto MENU




:O
CLS
ECHO.
echo �ù��ܿ��Ը��������ù̶�/�Զ�ip��ַ���������룬���أ�dns��ַ�����Թ��ܣ�
timeout /nobreak /t 1 > nul
ECHO.
echo  -------------------------------------------------------------------------------
echo.
echo  1. �����Զ�ip��ַ���������룬���أ�dns��ַ�������룺1
echo.
echo  2. ���ù̶�ip��ַ���������룬���أ�dns��ַ�������룺2
echo.
echo  3. �������˵��������룺3
echo.
echo  -------------------------------------------------------------------------------
echo.
set /p net-set=���������벢�س�����
if not "%net-set%"=="" set net-set=%net-set:~0,1%
if /i "%net-set%"=="1" goto dhcp
if /i "%net-set%"=="2" goto static
if /i "%net-set%"=="3" goto MENU
echo.
echo.������Ч������������...
timeout /nobreak /t 1 > nul
echo.
goto O

:dhcp
cls
echo.
echo ��ʼ����...
timeout /nobreak /t 1 > nul
echo.
ECHO.
echo ���õ��������������У�WLAN����̫�����������ӵȡ�
timeout /nobreak /t 1 > nul
ECHO.
echo ��ͬ�������û�������ͬ��һ��Ϊ���������ӡ���������ڡ�������塱���������ӡ���������ʾ��������ipconfig /all�п�����
timeout /nobreak /t 1 > nul
echo.
set /p name=�����������������Ʋ��س�����
timeout /nobreak /t 1 > nul
ECHO.
echo �Զ���ȡIP��ַ......
timeout /nobreak /t 1 > nul
ECHO.
netsh interface IP set address name="%name%" source=dhcp
ECHO.
echo �Զ���ȡDNS������......
timeout /nobreak /t 1 > nul
ECHO.
netsh interface IP set dns name="%name%" source=dhcp
ECHO.
Echo ���óɹ�.......
timeout /nobreak /t 1 > nul
ECHO.
echo ����ˢ������......
timeout /nobreak /t 1 > nul
ECHO.
ipconfig /flushdns
echo.
echo.�������¼������������...
timeout /nobreak /t 1 > nul
pause>nul
cls
ECHO.
echo.
echo ��ʾ�µ�����......
timeout /nobreak /t 1 > nul 
ECHO.
ipconfig /all
echo.
echo.������ϣ��������¼������������...
timeout /nobreak /t 1 > nul
pause>nul
goto O

:static
cls
echo.
echo ��ʼ����...
timeout /nobreak /t 1 > nul
echo.
echo ���õ��������������У�WLAN����̫�����������ӵȡ�
timeout /nobreak /t 1 > nul
ECHO.
echo ��ͬ�������û�������ͬ��һ��Ϊ���������ӡ���������ڡ�������塱���������ӡ���������ʾ��������ipconfig /all�п�����
timeout /nobreak /t 1 > nul
ECHO.
ECHO.
set /p name=�����������������Ʋ��س�����
timeout /nobreak /t 1 > nul
ECHO.
set /p addr=������IP��ַ���س�����
timeout /nobreak /t 1 > nul
ECHO.
set /p mask=�������������벢�س�����
timeout /nobreak /t 1 > nul
ECHO.
set /p gateway=���������ز��س�����
timeout /nobreak /t 1 > nul
ECHO.
set /p dns=��������ѡdns���س�����
timeout /nobreak /t 1 > nul
ECHO.
set /p dns1=�����뱸��dns1���س�����
timeout /nobreak /t 1 > nul
ECHO.
set /p dns2=�����뱸��dns2���س�����
timeout /nobreak /t 1 > nul
ECHO.
echo 
cls
echo.
echo.
echo �������룺
timeout /nobreak /t 1 > nul
ECHO.
echo           �����������ƣ�%name%
timeout /nobreak /t 1 > nul
ECHO.
echo           IP��ַ��%addr%
timeout /nobreak /t 1 > nul
ECHO.
echo           �������룺%mask%
timeout /nobreak /t 1 > nul
ECHO.
echo           ���أ�%gateway%
timeout /nobreak /t 1 > nul
ECHO.
echo           ��ѡdns��%dns%
timeout /nobreak /t 1 > nul
ECHO.
echo           ����dns1��%dns1%
timeout /nobreak /t 1 > nul
ECHO.
echo           ����dns2��%dns2%
timeout /nobreak /t 1 > nul
ECHO.
echo.�������¼������������...
timeout /nobreak /t 1 > nul
pause>nul
cls
echo.
echo.
echo ��ʼ������...
timeout /nobreak /t 1 > nul
ECHO.
netsh interface IP set address name="%name%" source=static addr="%addr%" mask="%mask%" gateway="%gateway%" gwmetric=0
ECHO.
echo IP��ַ����������������������.......
timeout /nobreak /t 1 > nul
ECHO.
netsh interface IP set dns name="%name%" source=static addr="%dns%" register=primary 
netsh interface IP add dns name="%name%" addr="%dns1%" index=2
netsh interface IP add dns name="%name%" addr="%dns2%" index=3
ECHO.
echo dns�������.......
timeout /nobreak /t 1 > nul
echo.
echo ����ˢ������......
timeout /nobreak /t 1 > nul
ECHO.
ipconfig /flushdns
echo.
echo.�������¼������������...
timeout /nobreak /t 1 > nul
pause>nul
cls
ECHO.
echo.
echo ��ʾ�µ�����......
timeout /nobreak /t 1 > nul 
ECHO.
ipconfig /all
echo.
echo.������ϣ��������¼������������...
timeout /nobreak /t 1 > nul
pause>nul
goto O




:P
cls
echo.
echo ������ֻ��Ҫ�㶯�����ͼ��̣��Ϳ��Իص�����win10�˵������߻ָ�win11�˵����� ע�� ��ֻ������ windows 11 ����
echo.
echo.ִ����Ӧ�����󲻻�������Ч�����������������ע���������ڱ�ҳ��������� �� 4 �� ������Դ��������Ч����
echo.
echo ****************************** �ص�win10/�ָ�win11�˵������� ****************************
echo.
echo			1. �ص�win10�˵���		2. �ָ�win11�˵���             
echo.
echo			3. �������˵�			4. ������Դ������
echo.
echo.*******************************************************************************************
echo.
set input=
set /p input=����ֱ�����빦�ܶ�Ӧ���֣����س�(1-4)���� 
if not "%input%"=="" set input=%input:~0,1%
if /i "%input%"=="1" goto HD
if /i "%input%"=="2" goto HF
if /i "%input%"=="3" goto MENU
if /i "%input%"=="4" goto CQ
echo.
echo.������Ч������������...
timeout /nobreak /t 1 > nul
echo.
goto P

:HD
cls
echo.
echo ����ִ�в���...
timeout /nobreak /t 1 > nul
reg add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve 
echo OK!
echo.�������¼������������...
pause>nul
goto P

:HF
cls
echo.
echo ����ִ�в���...
timeout /nobreak /t 1 > nul
reg delete "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /va /f
echo OK!
echo.�������¼������������...
pause>nul
goto P

:MENU
cls
echo.
echo �������˵���...
timeout /nobreak /t 1 > nul
goto MENU

:CQ
cls
echo.
taskkill /f /im explorer.exe
timeout /nobreak /t 1 > nul
start explorer.exe
ECHO OK!
timeout /nobreak /t 1 > nul
goto P



:Q
cls
echo.
echo.  ΢���̵�򲻿�����������ܣ�
echo.
echo.  ////////////////////////////////////////////////////////////////////
echo. 
echo.  ��������
echo.
echo.                              1.  ��internet���Ե�������
echo.
echo.                              2.  ���Ӧ���̵�Ļ���
echo.                              
echo.                              3.  ���²���Ӧ���̵�
echo.
echo.                              4.  �˳�
echo.
echo.  /////////////////////////////////////////////////////////////////////
echo.
set rw=
set /p rw=����ֱ�����빦�ܶ�Ӧ���֣����س� ( 1 - 4 )���� 
if not "%rw%"=="" set rw=%rw:~0,1%
if /i "%rw%"=="1" goto oe
if /i "%rw%"=="2" goto wo
if /i "%rw%"=="3" goto hree
if /i "%rw%"=="4" goto ex
echo.
echo.������Ч������������...
timeout /nobreak /t 1 > nul
echo.
goto Q

:oe
cls
echo.
echo.�ڴ򿪵� �� Internetѡ��  �� ���ڣ�����Ϸ��ġ��߼���һ������ѡ ��ʹ��SSL 3.0������ʹ�� TLS 1.0������ʹ�� TLS 1.1������ʹ�� TLS 1.2����Ӧ�ú�رճ�����������ԣ��鿴�ܷ������⡣
echo.
echo.�������¼������������...
pause>nul
echo.
start inetcpl.cpl
echo.OK!
timeout /nobreak /t 1 > nul
goto Q

:wo
cls
echo.
echo.���Ӧ���̵�Ļ���...
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
echo.���²������������...
timeout /nobreak /t 1 > nul
echo.
echo.�����ܿ������²���WindowsStore����Ҫ����·��/λ�ã����� ��D:\����\ws.ps1
echo.
set /p wse=�������빤�߽ű�ִ��·��/λ�ã����س�����
echo.
PowerShell.exe -ExecutionPolicy Bypass -File "%wse%"
PowerShell.exe -ExecutionPolicy UnRestricted -File "%wse%"
echo.�������¼������������...
pause>nul
goto Q

:ex
goto MENU



:R
cls
echo.
echo.���win��ͥ������������...
timeout /nobreak /t 1 > nul

pushd "%~dp0"
 
dir /b C:\Windows\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientExtensions-Package~3*.mum >List.txt
 
dir /b C:\Windows\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientTools-Package~3*.mum >>List.txt
 
for /f %%i in ('findstr /i . List.txt 2^>nul') do dism /online /norestart /add-package:"C:\Windows\servicing\Packages\%%i"

echo.����ӡ�
echo.
echo.�������¼������������...
pause>nul
goto MENU



:S
cls
echo.
echo. ׼����...
timeout /nobreak /t 1 > nul
CLS
echo.
echo.
echo.��������Ҫ����·��/λ�ã����� ��D:\����\ps.ps1
echo.
set /p jiaoben=�������빤�߽ű�ִ��·��/λ�ã����س�����
echo.
PowerShell.exe -ExecutionPolicy Bypass -File "%jiaoben%"
PowerShell.exe -ExecutionPolicy UnRestricted -File "%jiaoben%"
echo.
echo.�������¼������������...
pause>nul
goto MENU



:T
cls
echo.
echo.�ù��ܿ���ж��/��װ΢��Ӧ���̵ꡣ
echo.
echo.------------------------------------------------------ ������ -------------------------------------------------------
echo.
echo.						     1. ж���̵�
echo.
echo.						     2. ��װ�̵�
echo.
echo.						     3. �˳����������˵�
echo.
echo.---------------------------------------------------------------------------------------------------------------------
echo.
set remove=
set /p remove=����ֱ�����빦�ܶ�Ӧ���֣����س� ( 1 - 3 )���� 
if not "%remove%"=="" set remove=%remove:~0,1%
if /i "%remove%"=="1" goto remove1
if /i "%remove%"=="2" goto remove2
if /i "%remove%"=="3" goto remove3
echo.
echo.������Ч������������...
timeout /nobreak /t 1 > nul
echo.
goto T

:remove1
cls
echo.
echo. ��ʼж��...
timeout /nobreak /t 1 > nul
echo.
echo.�����ܿ���ж���̵꣬��Ҫ����·��/λ�ã����� ��D:\����\remove.ps1
echo.
set remove1=
set /p remove1=�������빤�߽ű�ִ��·��/λ�ã����س�����
echo.
PowerShell.exe -ExecutionPolicy Bypass -File "%remove1%"
PowerShell.exe -ExecutionPolicy UnRestricted -File "%remove1%"
echo.�������¼������������...
pause>nul
goto T

:remove2
cls
echo.
echo.��ʼ��װ...
echo.
echo.�����ܿ�����װ�̵꣬��Ҫ����·��/λ�ã����� ��D:\����\AddApp.ps1
echo.
set AddApp=
set /p AddApp=�������빤�߽ű�ִ��·��/λ�ã����س�����
echo.
PowerShell.exe -ExecutionPolicy Bypass -File "%AddApp%"
PowerShell.exe -ExecutionPolicy UnRestricted -File "%AddApp%"
echo.�������¼������������...
pause>nul
goto T

:remove3
cls
echo.
echo.�˳����������˵�...
timeout /nobreak /t 1 > nul
goto MENU




:U
cls
echo.
echo  �����ܿ�����������dns���Ա�����������ѵ�dns��ַ��
echo.
timeout /nobreak /t 1 > nul
echo  ��ʼ���ԣ�����ʱ����ܽϳ����������ĵȴ�����...
timeout /nobreak /t 1 > nul
echo.
IF EXIST dns.txt (
for /F %%I IN (dns.txt) DO PING %%I
) ELSE (
ECHO  dns.txt�����ڣ������´������ļ��������������˵������½��뱾�������ԣ�
timeout /nobreak /t 1 > nul
echo 114.114.114.114 > dns.txt
echo 114.114.115.115 >> dns.txt 
echo 114.114.114.119 >> dns.txt
echo 114.114.115.119 >> dns.txt
echo 114.114.114.110 >> dns.txt
echo 114.114.115.110 >> dns.txt
echo 223.5.5.5 >> dns.txt
echo 223.6.6.6 >> dns.txt
echo 180.76.76.76 >> dns.txt
echo 119.29.29.29 >> dns.txt
echo 182.254.116.116 >> dns.txt
echo 8.8.8.8 >> dns.txt
echo 8.8.4.4 >> dns.txt
echo 1.2.4.8 >> dns.txt
echo 210.2.4.8 >> dns.txt
)
echo.
echo  ��ɣ�
echo.
echo. �������¼������������...
pause>nul
goto MENU




:Y
cls
echo.
echo.�ù��ܾ����ܵذ���������������������Ӧ�����������⡣
echo.
echo.------------------------------------------------------ ������ -------------------------------------------------------
echo.
echo.						      1. ����Windows��Դ������
echo.
echo.						      2. ���²����������
echo.
echo.						      3. ��鲢�޸�Windows�ļ�
echo.
echo.						      4. �˳�
echo.
echo.---------------------------------------------------------------------------------------------------------------------
echo.
set rwl=
set /p rwl=����ֱ�����빦�ܶ�Ӧ���֣����س� ( 1 - 4 )���� 
if not "%rwl%"=="" set rwl=%rwl:~0,1%
if /i "%rwl%"=="1" goto one
if /i "%rwl%"=="2" goto two
if /i "%rwl%"=="3" goto three
if /i "%rwl%"=="4" goto four
echo.
echo.������Ч������������...
timeout /nobreak /t 1 > nul
echo.
goto Y

:one
cls
echo.
echo. ����Windows��Դ��������...
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
echo.���²������������...
echo.
echo.�����ܿ������²���windowsϵͳ�������̣���Ҫ����·��/λ�ã����� ��D:\����\czjc.ps1
echo.
set bushu=
set /p bushu=�������빤�߽ű�ִ��·��/λ�ã����س�����
echo.
PowerShell.exe -ExecutionPolicy Bypass -File "%bushu%"
PowerShell.exe -ExecutionPolicy UnRestricted -File "%bushu%"
echo.�������¼������������...
pause>nul
goto Y

:three
cls
echo.
echo.��鲢�޸�Windows�ļ�
timeout /nobreak /t 1 > nul
sfc /scannow
echo.
echo.OK!
timeout /nobreak /t 1 > nul
goto Y

:four
cls
echo.
echo.Returnning to MENU...
timeout /nobreak /t 1 > nul
goto MENU


:END
cls
echo.
echo.�˳�������......
timeout /nobreak /t 1 > nul
EXIT /B 0






