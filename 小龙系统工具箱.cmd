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

:: ------------------------------------    �ָ��ߣ�����Ϊ���������     -----------------------------------------

@ECHO OFF

CD /D "%~DP0"

MSG %username% ��л��ʹ�ñ���������windowsϵͳ�����䣡
MSG %username% ʹ�������κ����⣬�ǵ���ϵ�ң�
MSG %username% ��ϵ��ʽ1��qq���䣺2539223617@qq.com��
MSG %username% ��ϵ��ʽ2��΢�źţ�Pisces_Mar14_LXL��

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
    REM ִ�е��˴����Ѿ���ȡ�˹���ԱȨ�ޣ�Ȼ��ø������

setlocal enableextensions enabledelayedexpansion

@COLOR 3E
TITLE С��windowsϵͳ������
CHCP 936>nul
timeout /t 2 /nobreak >NUL
:kai-shi
CLS
ECHO.
ECHO.                                                      С��WINDOWSϵͳ������
ECHO.****************************************************************************************************************************************************************
ECHO.                                                    ���ڱ��ű��������Ҫ˵��
ECHO.****************************************************************************************************************************************************************
ECHO.
ECHO. 1. ��windowsϵͳ�����䣨���¼�ơ������䡿�ɱ������������ԣ�������
ECHO.
ECHO. 2. �������ԣ�������ű�������PowerShell�ű���
ECHO.
ECHO. 3. ���������ߣ���С�����������䣺2539223617@qq.com��
ECHO.
ECHO. 4. ���������ɱ������������ԣ���ɫ�޶���ȫ�����Է���ʹ�á�
ECHO.
ECHO. 5. ���棺δ��������ɣ�ͬ������������𽫱�����������ƽ⣬�޸ģ������޸�Ϊ������򣩣����������ˣ����������ã�лл����������
ECHO.
ECHO. 6. ������ʹ�ñ����������Ӧ����ǰ����������ѡ����Ϊ���������⣬����ʧ��ȸ���ԭ������ֵ�һ�����⣬���뱾���޹أ��ұ��˸Ų�����
ECHO.
ECHO. 7. ��ܰ��ʾ : ������������������ߣ��ĵ����ļ���ʱ����ǰ��������ԭ���ߣ����߿ɿ����ŵ���վ���أ���������������㼰����Ҫ����ʧ��
ECHO.
ECHO.****************************************************************************************************************************************************************
ECHO.
ECHO.                                    ʹ�ñ�����ǰ����Ҫ��ͬ����Ҫ˵���������޷���������
ECHO.
ECHO.                                           ͬ���밴 Y              ��ͬ���밴 N
ECHO.
set sm=
set /p sm=����ֱ�������Ӧ��ĸ�س�( Y / N )����
if not "%sm%"=="" set sm=%sm:~0,1%
if /i "%sm%"=="Y" goto next
if /i "%sm%"=="N" goto END
ECHO.
ECHO.������Ч������������...
timeout /t 2 /nobreak >NUL
ECHO.
goto kai-shi


:next
CLS
ECHO.
ECHO. ��ʾ��Ϣ��...
CLS
ECHO.
ECHO. һ ������ȫ���ǲ��Ƕ������
ECHO.
ECHO. �ش����Ǹ���ȫ�ĳ��򹤾ߣ����ǲ���Ҳ���Ƕ������ÿ�����ܶ���������ʵ�����ԣ���������ʹ�á�
ECHO.
ECHO. �� ���б�������ϵͳ��Ӱ����
ECHO.
ECHO. �ش𣺱��������й��ܶ�ϵͳ��Ӱ��������Ժ��Բ��ƣ�����ֻ�ǰ�һЩ���ܾ����������ɹ�����ģ�
ECHO.
ECHO.       ��Щ���ܻ��������޸ģ��ı�ϵͳ���ú�ϵͳ�ļ������Զ�ϵͳ���Ӱ�켫�ͣ����ҷ��Ĳ�֪����
ECHO.
ECHO. �� ʹ�ñ�������Ҫע��ʲô��
ECHO.    
ECHO.    1. ���б�����ʱ���������Ȼ���뵽���ڱ��������Ҫ˵�������Ž����뵽��ҳ�棬������ϸ�Ķ������
ECHO.
ECHO.       ����󣬷��ɽ���������˵���
ECHO.
ECHO.    2. ���ڱ����򲿷ֹ�����Ҫ����ԱȨ�޲������У����Ա�����ʼ�᳢���Զ���ȡ����ԱȨ�ޡ��������˲���
ECHO.
ECHO.       �������ܳɹ���ȡ��ע���ǻ������ܣ�������֤��һ�����ԣ����������б�����ǰ������������Ҽ������ߣ�ѡ��
ECHO.
ECHO.       �Թ���Ա������С���Ȼ�����������ʹ�ñ����ߣ�����Ը�����
ECHO.
ECHO.    3. ��ѡ��ִ����Ӧ����ʱ��������ѡ������ù��ܶ�Ӧ����/��ĸ������ʱʱ�̿���������ʱ�˿��ڸ�ʲô�����Ҫ��Ϊ�Լ�������
ECHO.
ECHO.       �����ҡ�
ECHO.
ECHO.    4. �ù���ǰ������������ĸ������ʱ���Բ����ִ�Сд��
ECHO.
ECHO.    5. ���������������޸���������ݣ���Ϊ���������Ϊ������һ�����⼰����Ӱ�죬һ���뱾���޹أ��ұ��˸Ų�����
ECHO.
ECHO.   
ECHO.    ......��ʱû���дɶ�����������ӣ�~_~
ECHO.                                                                                   
ECHO.
ECHO.                                           Copyright (C) 2022 ��С�� 
ECHO.
ECHO.�������¼������������...                                                                                                                                 
PAUSE>NUL
goto MENU


:MENU
CLS
ECHO.
ECHO. *******************************************************************************************************
ECHO.                                    
ECHO.  ��ǰʱ�䣺%time:~0,2%ʱ%time:~3,2%��%time:~6,2%��  
ECHO.
ECHO.  ��ǰ���ڣ�%date% 
ECHO.
ECHO.  ��ǰ������汾��2022-12-25 ����12:15�� 
ECHO.
ECHO.  windowsϵͳ����������·����%~DP0
ECHO.                                                                                                             
ECHO. *******************************************************************************************************
ECHO.
ECHO. *************************************    ��������Ҫִ�в���ǰ�����ֻ���ĸ��ţ����س�    ************************************
ECHO. 
ECHO. *********************************************** ��Ҫ�˳��������" / "�����س� ******************************************************
ECHO.
ECHO. ------------------------------------------------------------------------------------------------------------------------------------
ECHO.
ECHO.  ��������:
ECHO.
ECHO               0 ���������                        A �ٶȹؼ�������	                    K ��������									
ECHO.           
ECHO               1 ��������                          B ���ϵͳ������	                    L �鿴������ǰ������WI-FI���Ƽ�����
ECHO.											
ECHO               2 ϵͳ��Ϣ                          C �Ƴ�ϵͳ�Դ�Ӧ��(����ѡ��)              M ��ֹ����(Σ�չ���)									
ECHO.
ECHO               3 windows�ڴ����                   D ����DNS����                             N ɾ�����Բ���Ҫ�ĵ�Դ����   								
ECHO.
ECHO               4 ������Դ������                    E ����ͼ�����ݿ⻺��                      P �°�/�����Ҽ��˵����л�									
ECHO.	
ECHO               5 ��ջ���վ                        F ���������ͨ��                          Q ���΢���̵�򲻿�������									
ECHO.
ECHO               6 ������ʱ����ʾ/����ʾ����         G ���Խ�������޷����ӵ�����              R win��ͥ�������������
ECHO.
ECHO               7 ���������                        H �豸������                              S ����޷�����powershell�ű�����		
ECHO.
ECHO               8 �������                        I ������ʾ��                              T ж��/��װ΢���̵�		
ECHO.
ECHO               9 ˢ�������                        J �������                                U ��������dns
ECHO.
ECHO               O �������ù̶�/�Զ�ip��ַ���������롢���ء�dns��ַ�����Թ��ܣ�                V ��ȫ������C��ϵͳ���� 
ECHO.
ECHO               Y �������������Ӧ������            / �˳�����	
ECHO.
ECHO. ------------------------------------------------------------------------------------------------------------------------------------
ECHO.
ECHO. ע�� ������ �� P �� �°�/�����Ҽ��˵����л��������� win 11 ϵͳ��
ECHO.
ECHO         ���� �� 6 �� ������ʱ����ʾ/����ʾ����������ڳ� win 11 ����� windows ϵͳ��
ECHO.
ECHO. ************************************************************************************************************************************
ECHO.
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
if /i "%id%"=="V" goto V
if /i "%id%"=="Y" goto Y
if /i "%id%"=="/" goto END
ECHO.
ECHO.������Ч,����������...
timeout /t 2 /nobreak >NUL
goto MENU


:0
CLS
ECHO.
ECHO.�������������...
timeout /t 2 /nobreak >NUL
start /max %windir%\system32\taskmgr.exe /7
ECHO.
ECHO.ִ����ϣ��Զ��������˵�...
timeout /t 2 /nobreak >NUL
goto MENU

:1
CLS
ECHO.
ECHO.�򿪴���������...
timeout /t 2 /nobreak >NUL
%windir%\system32\cleanmgr.exe
ECHO.
ECHO.ִ����ϣ��Զ��������˵�...
timeout /t 2 /nobreak >NUL
goto MENU

:2
CLS
ECHO.
ECHO.��ϵͳ��Ϣ��...
timeout /t 2 /nobreak >NUL
start /max %windir%\system32\msinfo32.exe
ECHO.
ECHO.ִ����ϣ��Զ��������˵�...
timeout /t 2 /nobreak >NUL
goto MENU

:3
CLS
ECHO.
ECHO.���ڴ������...
timeout /t 2 /nobreak >NUL
%windir%\system32\MdSched.exe
ECHO.
ECHO.ִ����ϣ��Զ��������˵�...
timeout /t 2 /nobreak >NUL
goto MENU

:4
CLS
ECHO.
ECHO.������Դ��������...
timeout /t 2 /nobreak >NUL
taskkill /f /IM explorer.exe
start explorer.exe
ECHO.
ECHO.ִ����ϣ��Զ��������˵�...
timeout /t 2 /nobreak >NUL
goto MENU

:5
CLS
ECHO.��ջ���վ��...
timeout /t 2 /nobreak >NUL
cmd.exe /c "ECHO A|PowerShell.exe -NoProfile -Command Clear-RecycleBin"
ECHO. �����
timeout /t 2 /nobreak >NUL
ECHO.
ECHO. ִ����ϣ��Զ��������˵�...
timeout /t 2 /nobreak >NUL
goto MENU

:6
ECHO.
CLS
ECHO.
ECHO �����ܿ�����������ʱ����ʾ/����ʾ���롣
ECHO.
ECHO ****************************** ������ʱ����ʾ/����ʾ�����޸Ĺ��� ****************************
ECHO.
ECHO.                     1. ʱ����ʾ����   2. ʱ�䲻��ʾ����   3. ������ҳ��            
ECHO.
ECHO.**********************************************************************************************
ECHO.
set shi-jian=
set /p shi-jian=����ֱ�����빦�ܶ�Ӧ���֣����س�( 1 - 3 )���� 
if not "%shi-jian%"=="" set shi-jian=%shi-jian:~0,1%
if /i "%shi-jian%"=="1" goto xs
if /i "%shi-jian%"=="2" goto bxs
if /i "%shi-jian%"=="3" goto zy
ECHO.
ECHO.������Ч������������...
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
ECHO.�򿪼����������......
timeout /t 2 /nobreak >NUL
start /max %windir%\system32\compmgmt.msc /s
ECHO.
ECHO.�Ѵ�
timeout /t 2 /nobreak >NUL
ECHO.
ECHO.ִ����ɣ����ڷ������˵������Ժ�......
timeout /t 2 /nobreak >NUL
goto MENU

:8
CLS
ECHO.
ECHO.���������......
timeout /t 2 /nobreak >NUL
start /max gpedit.msc
ECHO.
ECHO.�Ѵ�
timeout /t 2 /nobreak >NUL
ECHO.
ECHO.ִ����ɣ����ڷ������˵������Ժ�......
timeout /t 2 /nobreak >NUL
goto MENU

:9
CLS
ECHO.
ECHO.����ˢ�������......
timeout /t 2 /nobreak >NUL
gpupdate /force
ECHO.
ECHO.��ˢ��
timeout /t 2 /nobreak >NUL
ECHO.
ECHO.ִ����ϣ����ڷ������˵�......
timeout /t 2 /nobreak >NUL
goto MENU

:A
CLS
ECHO.
ECHO.׼����......
timeout /t 2 /nobreak >NUL
ECHO.
set a=
set /p a=��������ؼ��֡���
timeout /t 2 /nobreak >NUL
start https://www.baidu.com/s?wd=%a%
ECHO.
ECHO.������......
timeout /t 2 /nobreak >NUL
ECHO.
ECHO.�����
timeout /t 1 /nobreak >nul
ECHO.
ECHO.ִ����ϣ��Զ��������˵�...
ECHO.
goto MENU

:B
CLS
ECHO.
ECHO.��������ϵͳ�ļ������Լ��......
timeout /t 2 /nobreak >NUL

CLS

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
ECHO.
ECHO.�������¼������������...
PAUSE>NUL

CLS
ECHO.
ECHO.ִ�����
timeout /t 2 /nobreak >NUL
ECHO.
ECHO.���ڷ������˵������Ժ�......
timeout /t 2 /nobreak >NUL
goto MENU


:C
CLS
ECHO.
ECHO.׼����......
timeout /t 2 /nobreak >NUL
CLS
ECHO.
ECHO.
ECHO.
ECHO �Ƿ�����˲���? 
set put=
set /p put=�� Y ( �� ) / N ( �� ) ����

if not "%put%"=="" set put=%put:~0,1%
if /i "%put%"=="Y" goto TT
if /i "%put%"=="N" goto SS
ECHO.
ECHO.������Ч������������...
timeout /t 2 /nobreak >NUL
ECHO.
goto C

:TT 
CLS
ECHO.
ECHO.��������...
CLS
ECHO.
ECHO �����ܿ����Ƴ�windowsϵͳ����Ӧ��������ϵͳ����Ҫ����·��/λ�á����� ��D:\����\yczd.ps1
ECHO.
set /p yichu=�������빤�߽ű�����·��/λ�ã����س�����
PowerShell.exe -ExecutionPolicy Bypass -File "%yichu%"
PowerShell.exe -ExecutionPolicy UnRestricted -File "%yichu%"
ECHO.
ECHO.�������¼������������...
PAUSE>NUL
goto MENU
 
:SS
ECHO. 
ECHO.��ѡ���˲�������������������ҳ�棡
timeout /t 2 /nobreak >NUL
ECHO.
goto MENU



:D
CLS
ECHO.
ECHO.����ִ�У���ȴ�......
timeout /t 2 /nobreak >NUL
ECHO.
ECHO.��ʼִ��
timeout /t 2 /nobreak >NUL
ipconfig /flushdns
ECHO.
ECHO.
ECHO.ִ����ϣ��Զ��������˵�...
timeout /t 2 /nobreak >NUL
ECHO.
goto MENU

:E
CLS
ECHO.
ECHO.׼����......
timeout /t 2 /nobreak >NUL
CLS
ECHO.
ECHO.
ECHO.
ECHO �����ܿ��Խ������ͼ�����⣬����ϵͳͼ�껺�����ݿ⣬ϵͳ���̼����ͼ�꣬ȥ��ͼ���ͷ�Ͷ��ơ�
ECHO.
ECHO.
ECHO.
ECHO.�������¼������������...
PAUSE>NUL
CLS
ECHO.
ECHO.
ECHO.
ECHO.
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons" /v 29 /d "%systemroot%\system32\imageres.dll,197" /t reg_sz /f
ECHO.
:: �ر�Windows��ǳ���explorer
taskkill /f /im explorer.exe
ECHO.
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
ECHO Y|reg delete "HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" /v IconStreams
ECHO Y|reg delete "HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" /v PastIconsStream
:: ����Windows��ǳ���explorer
start explorer.exe
ECHO.
ECHO.OK!
timeout /t 2 /nobreak >NUL
ECHO.
ECHO.�������¼������������...
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
ECHO.ʹ���ɽ���Զ��ԭ����ζ����Ҫȷ�ϱ���Э��ջ��û�����⣬���Կ����á�ping 127.0.0.1������鱾�� TCP/IP Э�顣
ECHO.
ECHO.�������¼������������...
PAUSE>NUL
ECHO.
ECHO.׼����...
timeout /t 2 /nobreak >NUL
ECHO.
ECHO.��ʼִ��...
timeout /t 2 /nobreak >NUL
CLS
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.һ. �۲챾�����������Ƿ���ȷ
timeout /t 2 /nobreak >NUL
CLS
ECHO. 
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.**********************************������������**********************************
ECHO.
ECHO.
ipconfig /all
ECHO.
ECHO.
ECHO.�������¼������������...
PAUSE>NUL

CLS
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.��. ping 127.0.0.1.������Գɹ�������������TCP/IPЭ��İ�װ��IP��ַ���������������������������Բ��ɹ����ͱ�ʾTCP/IP�İ�װ�����ô��������⡣
ECHO.
ECHO.�������¼������������...
PAUSE>NUL
CLS
ECHO.
ECHO. 
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.��ʼping 127.0.0.1...
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
if %errorlevel%==0 (ECHO     ��     TCP / IPЭ������) else (ECHO     X     TCP / IPЭ���쳣)
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.�������¼������������...
PAUSE>NUL


CLS
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.��. ������Բ��ɹ������ʾ�������û�װ�������⣬Ӧ���������豸��ͨѶ���ʽ��в��ԡ���鲢�ų���
ECHO.
ECHO.�������¼������������...
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
ECHO.��ʼPing����IP��ַ...
ECHO.
timeout /t 2 /nobreak >NUL
ECHO.
ECHO.
ECHO.**********************************ping����IP��ַ********************************
ECHO.

set ip=
set /p ip=����ֱ�����뱾��IP��ַ�س�����
ECHO.
if /i "%ip%"=="" (goto inputting) else (goto pingIP)

:inputting
CLS
ECHO.
ECHO.
ECHO.���������������ڹ���ˢ�º��������룡
timeout /t 2 /nobreak >NUL
goto ip

:pingIP
CLS
ECHO.
ECHO.
ECHO.�������� %ip% ,��ʼִ�в���...
timeout /t 2 /nobreak >NUL
ECHO.
ECHO.
ping -n 15 -l 1500 "%ip%" | findstr /I "TTL"
ECHO.
ECHO.
ECHO.
ECHO.
if %errorlevel%==0 (ECHO     ��     ����IP����) else (ECHO     X     ����IP�쳣)
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.�������¼������������...
PAUSE>NUL

CLS
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.��. ping���ػ������������IP,������Գɹ����������������е�����������������ȷ��������յ�0������Ӧ����ô��ʾ�������벻��ȷ���������ô�������ϵͳ������;���߾������е�����·�����������в��ܹ�����Ӧ��
ECHO.
ECHO.�������¼������������...
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
ECHO.��ʼping���ػ������������IP...
ECHO.
timeout /t 2 /nobreak >NUL
ECHO.
ECHO.
ECHO.***************************ping���ػ������������IP********************************
ECHO.
set wgip=
set /p wgip=�����������ػ������������IP���� 
if /i "%wgip%"=="" (goto wg) else (goto ipwg)
ECHO.

:wg
CLS
ECHO.
ECHO.
ECHO.������Ч,���ڹ���ˢ�º���������...
timeout /t 2 /nobreak >NUL
goto wgip

:ipwg
CLS
ECHO.
ECHO.
ECHO.�������� %wgip% ,��ʼִ�в���...
ECHO.
ECHO.
ping -n 15 -l 1500 "%wgip%" | findstr /I "TTL" 
ECHO.
ECHO.
ECHO.
ECHO.
if %errorlevel%==0 (ECHO     ��     ����״̬����) else (ECHO     X     ����״̬�쳣)
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.�������¼������������...
PAUSE>NUL


CLS
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.��. pingԶ��IP������.����յ���ȷӦ�𣬱�ʾ�ɹ���ʹ����ȱʡ���ء����ڲ��������û����ʾ�ܹ��ɹ��ķ���Internet�������ų�ISP��DNS�������⣩��������ִ��Ping�������������Ƚ�����ת����IP��ַ��ͨ����ͨ��DNS�����������������ֹ��ϣ����ʾ����DNS��������IP��ַ���ò���ȷ�����������ʵ�DNS�������й��ϡ�
ECHO.
ECHO.�������¼������������...
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
ECHO.��ʼpingԶ��IP������...
timeout /t 2 /nobreak >NUL
ECHO.
ECHO.
ECHO.************************************pingԶ��IP������*****************************
ECHO.
ECHO.
set waiwang=
set /p waiwang=����������ҪPing��Զ��IP������( ��  : www.baidu.com  ���� 36.152.44.95 )���� 
if /i "%waiwang%"=="" (goto ww) else (goto wang)
ECHO.

:ww
CLS
ECHO.
ECHO.
ECHO.��������������ڹ���ˢ�º��������룡
timeout /t 2 /nobreak >NUL
goto waiwang

:wang
CLS
ECHO.
ECHO.
ECHO.�������� %waiwang% ,��ʼִ�в���...
timeout /t 2 /nobreak >NUL
ECHO.
ECHO.
ping /n 15 /l 1400 "%waiwang%" | findstr /I "TTL"
ECHO.
ECHO.
ECHO.
ECHO.
if %errorlevel%==0 (ECHO     ��     ������������) else (ECHO     X     �޷���������) 
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.�������¼������������...
PAUSE>NUL


:tracert
CLS
ECHO.
ECHO.��ʼ����·�����...
timeout /t 2 /nobreak >NUL
ECHO.
:: ��. ����·���������ʾ���ݰ�����Ŀ��������������·��.traceroute����Ļ����÷��ǣ���������ʾ������롰tracert host_name����tracert ip_address�������У�tracert��traceroute��Windows����ϵͳ�ϵĳƺ���
set tracert=
set /p tracert=�������� host_name (�� : www.baidu.com ) ���� IP_address ( �� : 36.152.44.95 ) �س�����  
if /i "%tracert%"=="" (goto host) else (goto address)

:host
CLS
ECHO.
ECHO.
ECHO.��������������ڹ���ˢ�º��������룡
timeout /t 2 /nobreak >NUL
goto tracert

:address
CLS
ECHO.
ECHO.
ECHO.�������� %tracert% ,��ʼִ�в���...
timeout /t 2 /nobreak >NUL
ECHO.
ECHO.
tracert "%tracert%" 
ECHO.
ECHO.
ECHO.
ECHO.��������5�У�
ECHO.
ECHO.��һ��  ������·���ĵ�n������ֵ�������Ÿ�·����·������ţ�
ECHO.
ECHO.�ڶ���  �ǵ�һ������ʱ�ӣ�
ECHO.
ECHO.������  �ǵڶ�������ʱ�ӣ�
ECHO.
ECHO.������  �ǵ���������ʱ�ӣ�
ECHO.
ECHO.������  ��·���������ּ�������˿ڵ�IP��ַ��
ECHO.
ECHO.ע  :   ���Դ���κθ�����·�������յ��ı�������3�������������еķ��鶪ʧ����
ECHO.
ECHO.        ���ڸ�·������������һ���Ǻţ������浽����̨·����������3�ε�����ʱ�䡣
ECHO.
ECHO.
ECHO.�������¼������������...
PAUSE>NUL
goto MENU


:G
CLS
ECHO.
ECHO.��ʼ�����޸�����
timeout /t 2 /nobreak >NUL
ECHO.��ɺ󣬽��Զ��������ĵ��ԣ������ڵ����������������ӵ�����
timeout /t 2 /nobreak >NUL
netsh winsock reset
ECHO.OK!
timeout /t 2 /nobreak >NUL
ECHO.�رճ��򣬲�������...
timeout /t 2 /nobreak >NUL
shutdown -r -t 30
goto END


:H
CLS
ECHO.
ECHO.���豸��������......
timeout /t 2 /nobreak >NUL
ECHO.
start /max devmgmt.msc
ECHO.
ECHO.ִ����ϣ��Զ��������˵�...
timeout /t 2 /nobreak >NUL
goto MENU


:I
CLS
ECHO.
ECHO. Openning Cmd......
timeout /t 2 /nobreak >NUL
CLS
ECHO.
ECHO. ʹ�ý����󣬼��� ' exit ' �����˳�cmd������ʾ����
ECHO.
ECHO.�������¼������������...
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
ECHO.�򿪿��������...
timeout /t 2 /nobreak >NUL
start /max %SystemRoot%\system32\control.exe
ECHO.
ECHO.�Ѵ�
timeout /t 2 /nobreak >NUL
ECHO.
ECHO.ִ����ϣ��Զ��������˵�...
timeout /t 2 /nobreak >NUL
goto MENU


:K
CLS
ECHO.
ECHO.������������...
timeout /t 2 /nobreak >NUL
rundll32.exe shell32.dll,Control_RunDLL ncpa.cpl
ECHO.
ECHO.ִ����ϣ��Զ��������˵�...
timeout /t 2 /nobreak >NUL
goto MENU


:L
CLS
ECHO.
ECHO.
ECHO.
ECHO.
ECHO. ��ȡ��������������WIFI���Ƽ�������...
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
set /p name=Please input your WiFi name���� �����û������ļ� �������ΪWI-FI���� ����
netsh wlan show profiles name="%name%" key=clear 
ECHO.
ECHO =====================================
ECHO.
ECHO ---------------------------------------------------------------------------------
ECHO.
ECHO.
ECHO. " %name% " ��WI-FI����Ϊ " �ؼ����� " ������ַ�����
ECHO.
ECHO.
ECHO.�����
timeout /t 2 /nobreak >NUL
ECHO.
ECHO.�������¼������������...
PAUSE>NUL
goto MENU


:M
CLS
ECHO.
ECHO.���棺���ڴ˹��ܲ�������һ����δ֪Σ���ԣ���Ҫ���������Ķ���ͬ��ʹ����֪:
ECHO.
ECHO.                                     ʹ����֪
ECHO.
ECHO.*******************************************************************************************
ECHO.1. ʹ�ô˹���Ҫ��ʹ�����˽������һ���ļ��������֪ʶ�ͼ���
ECHO.
ECHO.2. ��Ϊʹ�ô˹��������,�����޷�ʹ��,���������������°�װϵͳ�Ļ�����ʹ��
ECHO.
ECHO.3. ��û�л��������֪ʶ�ͼ���,�ֲ��������װϵͳ,Ҳû����������ļ���,��ִ��Ҫʹ��
ECHO.
ECHO.   ���ֵ�һ�����⼰���,�������ге��������뱾���޹أ��ұ��˸Ų�����
ECHO.*******************************************************************************************
ECHO.
ECHO.                          ͬ��( Y )             ��ͬ��( N )
ECHO.
ECHO.���Ķ���ͬ���밴 ( "   Y   " );  ��ͬ���� ( "   N   " ).
ECHO.
set a=
set /p a=�����������Ӧ���  (  Y  /  N  )���� 
if not "%a%"=="" set a=%a:~0,1%
if /i "%a%"=="Y" goto open
if /i "%a%"=="N" goto MENU
ECHO.
ECHO.������Ч,����������...
timeout /t 2 /nobreak >NUL
ECHO.
goto M


:open
CLS
:: �г����н���
TASKLIST /V
ECHO.
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
ECHO.
ECHO.�������¼������������...
PAUSE>NUL
ECHO.
goto MENU      


:N
CLS
ECHO.
:: ����ʹ�õ�Դ����
powercfg L
ECHO.
ECHO.
set PC=
set /p PC=��������Ҫɾ����Դ������  "   GUID  " , Ȼ��س�����
if errorlevel 1 (
goto N
) else (
goto jixu
)
:jixu
powercfg D "%PC%"
ECHO.
ECHO. ��ɾ����Դ������%PC%
ECHO.
ECHO.�������¼������������...
PAUSE>NUL
ECHO.
goto MENU




:O
CLS
ECHO.
ECHO �ù��ܿ��Ը��������ù̶�/�Զ�ip��ַ���������룬���أ�dns��ַ�����Թ��ܣ�
timeout /t 2 /nobreak >NUL
ECHO.
ECHO  -------------------------------------------------------------------------------
ECHO.
ECHO  1. �����Զ�ip��ַ���������룬���أ�dns��ַ�������룺1
ECHO.
ECHO  2. ���ù̶�ip��ַ���������룬���أ�dns��ַ�������룺2
ECHO.
ECHO  3. �������˵��������룺3
ECHO.
ECHO  -------------------------------------------------------------------------------
ECHO.
set /p net-set=���������벢�س�����
if not "%net-set%"=="" set net-set=%net-set:~0,1%
if /i "%net-set%"=="1" goto dhcp
if /i "%net-set%"=="2" goto static
if /i "%net-set%"=="3" goto MENU
ECHO.
ECHO.������Ч������������...
timeout /t 2 /nobreak >NUL
ECHO.
goto O

:dhcp
CLS
ECHO.
ECHO ��ʼ����...
timeout /t 2 /nobreak >NUL
ECHO.
ECHO.
ECHO ���õ��������������У�WLAN����̫�����������ӵȡ�
timeout /t 2 /nobreak >NUL
ECHO.
ECHO ��ͬ�������û�������ͬ��һ��Ϊ���������ӡ���������ڡ�������塱���������ӡ���������ʾ��������ipconfig /all�п�����
timeout /t 2 /nobreak >NUL
ECHO.
set /p name=�����������������Ʋ��س�����
timeout /t 2 /nobreak >NUL
ECHO.
ECHO �Զ���ȡIP��ַ......
timeout /t 2 /nobreak >NUL
ECHO.
netsh interface IP set address name="%name%" source=dhcp
ECHO.
ECHO �Զ���ȡDNS������......
timeout /t 2 /nobreak >NUL
ECHO.
netsh interface IP set dns name="%name%" source=dhcp
ECHO.
ECHO ���óɹ�.......
timeout /t 2 /nobreak >NUL
ECHO.
ECHO ����ˢ������......
timeout /t 2 /nobreak >NUL
ECHO.
ipconfig /flushdns
ECHO.
ECHO.�������¼������������...
timeout /t 2 /nobreak >NUL
PAUSE>NUL
CLS
ECHO.
ECHO.
ECHO ��ʾ�µ�����......
timeout /t 2 /nobreak >NUL 
ECHO.
ipconfig /all
ECHO.
ECHO.������ϣ��������¼������������...
timeout /t 2 /nobreak >NUL
PAUSE>NUL
goto O

:static
CLS
ECHO.
ECHO ��ʼ����...
timeout /t 2 /nobreak >NUL
ECHO.
ECHO ���õ��������������У�WLAN����̫�����������ӵȡ�
timeout /t 2 /nobreak >NUL
ECHO.
ECHO ��ͬ�������û�������ͬ��һ��Ϊ���������ӡ���������ڡ�������塱���������ӡ���������ʾ��������ipconfig /all�п�����
timeout /t 2 /nobreak >NUL
ECHO.
ECHO.
set /p name=�����������������Ʋ��س�����
timeout /t 2 /nobreak >NUL
ECHO.
set /p addr=������IP��ַ���س�����
timeout /t 2 /nobreak >NUL
ECHO.
set /p mask=�������������벢�س�����
timeout /t 2 /nobreak >NUL
ECHO.
set /p gateway=���������ز��س�����
timeout /t 2 /nobreak >NUL
ECHO.
set /p dns=��������ѡdns���س�����
timeout /t 2 /nobreak >NUL
ECHO.
set /p dns1=�����뱸��dns1���س�����
timeout /t 2 /nobreak >NUL
ECHO.
set /p dns2=�����뱸��dns2���س�����
timeout /t 2 /nobreak >NUL
ECHO.
ECHO 
CLS
ECHO.
ECHO.
ECHO �������룺
timeout /t 2 /nobreak >NUL
ECHO.
ECHO           �����������ƣ�%name%
timeout /t 2 /nobreak >NUL
ECHO.
ECHO           IP��ַ��%addr%
timeout /t 2 /nobreak >NUL
ECHO.
ECHO           �������룺%mask%
timeout /t 2 /nobreak >NUL
ECHO.
ECHO           ���أ�%gateway%
timeout /t 2 /nobreak >NUL
ECHO.
ECHO           ��ѡdns��%dns%
timeout /t 2 /nobreak >NUL
ECHO.
ECHO           ����dns1��%dns1%
timeout /t 2 /nobreak >NUL
ECHO.
ECHO           ����dns2��%dns2%
timeout /t 2 /nobreak >NUL
ECHO.
ECHO.�������¼������������...
timeout /t 2 /nobreak >NUL
PAUSE>NUL
CLS
ECHO.
ECHO.
ECHO ��ʼ������...
timeout /t 2 /nobreak >NUL
ECHO.
netsh interface IP set address name="%name%" source=static addr="%addr%" mask="%mask%" gateway="%gateway%" gwmetric=0
ECHO.
ECHO IP��ַ����������������������.......
timeout /t 2 /nobreak >NUL
ECHO.
netsh interface IP set dns name="%name%" source=static addr="%dns%" register=primary 
netsh interface IP add dns name="%name%" addr="%dns1%" index=2
netsh interface IP add dns name="%name%" addr="%dns2%" index=3
ECHO.
ECHO dns�������.......
timeout /t 2 /nobreak >NUL
ECHO.
ECHO ����ˢ������......
timeout /t 2 /nobreak >NUL
ECHO.
ipconfig /flushdns
ECHO.
ECHO.�������¼������������...
timeout /t 2 /nobreak >NUL
PAUSE>NUL
CLS
ECHO.
ECHO.
ECHO ��ʾ�µ�����......
timeout /t 2 /nobreak >NUL 
ECHO.
ipconfig /all
ECHO.
ECHO.������ϣ��������¼������������...
timeout /t 2 /nobreak >NUL
PAUSE>NUL
goto O




:P
CLS
ECHO.
ECHO ������ֻ��Ҫ�㶯�����ͼ��̣��Ϳ��Իص�����win10�˵������߻ָ�win11�˵����� ע�� ��ֻ������ windows 11 ����
ECHO.
ECHO.ִ����Ӧ�����󲻻�������Ч�����������������ע���������ڱ�ҳ��������� �� 4 �� ������Դ��������Ч����
ECHO.
ECHO ****************************** �ص�win10/�ָ�win11�˵������� ****************************
ECHO.
ECHO			1. �ص�win10�˵���		2. �ָ�win11�˵���             
ECHO.
ECHO			3. �������˵�			4. ������Դ������
ECHO.
ECHO.*******************************************************************************************
ECHO.
set input=
set /p input=����ֱ�����빦�ܶ�Ӧ���֣����س�(1-4)���� 
if not "%input%"=="" set input=%input:~0,1%
if /i "%input%"=="1" goto HD
if /i "%input%"=="2" goto HF
if /i "%input%"=="3" goto MENU
if /i "%input%"=="4" goto CQ
ECHO.
ECHO.������Ч������������...
timeout /t 2 /nobreak >NUL
ECHO.
goto P

:HD
CLS
ECHO.
ECHO ����ִ�в���...
timeout /t 2 /nobreak >NUL
reg add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve 
ECHO OK!
ECHO.�������¼������������...
PAUSE>NUL
goto P

:HF
CLS
ECHO.
ECHO ����ִ�в���...
timeout /t 2 /nobreak >NUL
reg delete "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /va /f
ECHO OK!
ECHO.�������¼������������...
PAUSE>NUL
goto P

:MENU
CLS
ECHO.
ECHO �������˵���...
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
ECHO.  ΢���̵�򲻿�����������ܣ�
ECHO.
ECHO.  ////////////////////////////////////////////////////////////////////
ECHO. 
ECHO.  ��������
ECHO.
ECHO.                              1.  ��internet���Ե�������
ECHO.
ECHO.                              2.  ���Ӧ���̵�Ļ���
ECHO.                              
ECHO.                              3.  ���²���Ӧ���̵�
ECHO.
ECHO.                              4.  �˳�
ECHO.
ECHO.  /////////////////////////////////////////////////////////////////////
ECHO.
set rw=
set /p rw=����ֱ�����빦�ܶ�Ӧ���֣����س� ( 1 - 4 )���� 
if not "%rw%"=="" set rw=%rw:~0,1%
if /i "%rw%"=="1" goto oe
if /i "%rw%"=="2" goto wo
if /i "%rw%"=="3" goto hree
if /i "%rw%"=="4" goto ex
ECHO.
ECHO.������Ч������������...
timeout /t 2 /nobreak >NUL
ECHO.
goto Q

:oe
CLS
ECHO.
ECHO.�ڴ򿪵� �� Internetѡ��  �� ���ڣ�����Ϸ��ġ��߼���һ������ѡ ��ʹ��SSL 3.0������ʹ�� TLS 1.0������ʹ�� TLS 1.1������ʹ�� TLS 1.2����Ӧ�ú�رճ�����������ԣ��鿴�ܷ������⡣
ECHO.
ECHO.�������¼������������...
PAUSE>NUL
ECHO.
start inetcpl.cpl
ECHO.OK!
timeout /t 2 /nobreak >NUL
goto Q

:wo
CLS
ECHO.
ECHO.���Ӧ���̵�Ļ���...
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
ECHO.���²������������...
timeout /t 2 /nobreak >NUL
ECHO.
ECHO.�����ܿ������²���WindowsStore����Ҫ����·��/λ�ã����� ��D:\����\ws.ps1
ECHO.
set /p wse=�������빤�߽ű�ִ��·��/λ�ã����س�����
ECHO.
PowerShell.exe -ExecutionPolicy Bypass -File "%wse%"
PowerShell.exe -ExecutionPolicy UnRestricted -File "%wse%"
ECHO.�������¼������������...
PAUSE>NUL
goto Q

:ex
goto MENU



:R
CLS
ECHO.
ECHO.���win��ͥ������������...
timeout /t 2 /nobreak >NUL

pushd "%~dp0"
 
dir /b C:\Windows\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientExtensions-Package~3*.mum >List.txt
 
dir /b C:\Windows\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientTools-Package~3*.mum >>List.txt
 
for /f %%i in ('findstr /i . List.txt 2^>nul') do dism /online /norestart /add-package:"C:\Windows\servicing\Packages\%%i"

ECHO.����ӡ�
ECHO.
ECHO.�������¼������������...
PAUSE>NUL
goto MENU



:S
CLS
ECHO.
ECHO. ׼����...
timeout /t 2 /nobreak >NUL
CLS
ECHO.
ECHO.
ECHO.��������Ҫ����·��/λ�ã����� ��D:\����\ps.ps1
ECHO.
set /p jiaoben=�������빤�߽ű�ִ��·��/λ�ã����س�����
ECHO.
PowerShell.exe -ExecutionPolicy Bypass -File "%jiaoben%"
PowerShell.exe -ExecutionPolicy UnRestricted -File "%jiaoben%"
ECHO.
ECHO.�������¼������������...
PAUSE>NUL
goto MENU



:T
CLS
ECHO.
ECHO.�ù��ܿ���ж��/��װ΢��Ӧ���̵ꡣ
ECHO.
ECHO.------------------------------------------------------ ������ -------------------------------------------------------
ECHO.
ECHO.						     1. ж���̵�
ECHO.
ECHO.						     2. ��װ�̵�
ECHO.
ECHO.						     3. �˳����������˵�
ECHO.
ECHO.---------------------------------------------------------------------------------------------------------------------
ECHO.
set remove=
set /p remove=����ֱ�����빦�ܶ�Ӧ���֣����س� ( 1 - 3 )���� 
if not "%remove%"=="" set remove=%remove:~0,1%
if /i "%remove%"=="1" goto remove1
if /i "%remove%"=="2" goto remove2
if /i "%remove%"=="3" goto remove3
ECHO.
ECHO.������Ч������������...
timeout /t 2 /nobreak >NUL
ECHO.
goto T

:remove1
CLS
ECHO.
ECHO. ��ʼж��...
timeout /t 2 /nobreak >NUL
ECHO.
ECHO.�����ܿ���ж���̵꣬��Ҫ����·��/λ�ã����� ��D:\����\remove.ps1
ECHO.
set remove1=
set /p remove1=�������빤�߽ű�ִ��·��/λ�ã����س�����
ECHO.
PowerShell.exe -ExecutionPolicy Bypass -File "%remove1%"
PowerShell.exe -ExecutionPolicy UnRestricted -File "%remove1%"
ECHO.�������¼������������...
PAUSE>NUL
goto T

:remove2
CLS
ECHO.
ECHO.��ʼ��װ...
ECHO.
ECHO.�����ܿ�����װ�̵꣬��Ҫ����·��/λ�ã����� ��D:\����\AddApp.ps1
ECHO.
set AddApp=
set /p AddApp=�������빤�߽ű�ִ��·��/λ�ã����س�����
ECHO.
PowerShell.exe -ExecutionPolicy Bypass -File "%AddApp%"
PowerShell.exe -ExecutionPolicy UnRestricted -File "%AddApp%"
ECHO.�������¼������������...
PAUSE>NUL
goto T

:remove3
CLS
ECHO.
ECHO.�˳����������˵�...
timeout /t 2 /nobreak >NUL
goto MENU




:U
CLS
ECHO.
ECHO  �����ܿ�����������dns���Ա�����������ѵ�dns��ַ��
ECHO.
timeout /t 2 /nobreak >NUL
ECHO  ��ʼ���ԣ�����ʱ����ܽϳ����������ĵȴ�����...
timeout /t 2 /nobreak >NUL
ECHO.
IF EXIST dns.ini (
for /F %%I IN (dns.ini) DO PING %%I
) ELSE (
ECHO  dns.ini�����ڣ������´������ļ��������������˵������½��뱾�������ԣ�
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
ECHO  ��ɣ�
ECHO.
ECHO. �������¼������������...
PAUSE>NUL
goto MENU




:V
CLS
ECHO.
ECHO.  �����ܿ��԰�ȫ������C��ϵͳ���̣����磺C��temp��ʱ�ļ�����װ�����ѹ�����ʱ�ļ���ɾ��SoftwareDistribution����download�ļ����ϵȡ�
timeout /t 2 /nobreak >NUL
ECHO.
ECHO   ����ʱ����ܽϳ��������ĵȴ�...
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
ECHO  ��ɣ�
timeout /t 2 /nobreak >NUL
ECHO.
ECHO. �������¼������������...
PAUSE>NUL
goto MENU




:Y
CLS
ECHO.
ECHO.  �ù��ܾ����ܵذ���������������������Ӧ�����������⡣
ECHO.
ECHO.------------------------------------------------------ ������ -------------------------------------------------------
ECHO.
ECHO.						      1. ����Windows��Դ������
ECHO.
ECHO.						      2. ���²����������
ECHO.
ECHO.						      3. ��鲢�޸�Windows�ļ�
ECHO.
ECHO.						      4. �˳�
ECHO.
ECHO.---------------------------------------------------------------------------------------------------------------------
ECHO.
set rwl=
set /p rwl=����ֱ�����빦�ܶ�Ӧ���֣����س� ( 1 - 4 )���� 
if not "%rwl%"=="" set rwl=%rwl:~0,1%
if /i "%rwl%"=="1" goto one
if /i "%rwl%"=="2" goto two
if /i "%rwl%"=="3" goto three
if /i "%rwl%"=="4" goto four
ECHO.
ECHO.������Ч������������...
timeout /t 2 /nobreak >NUL
ECHO.
goto Y

:one
CLS
ECHO.
ECHO. ����Windows��Դ��������...
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
ECHO.���²������������...
ECHO.
ECHO.�����ܿ������²���windowsϵͳ�������̣���Ҫ����·��/λ�ã����� ��D:\����\czjc.ps1
ECHO.
set bushu=
set /p bushu=�������빤�߽ű�ִ��·��/λ�ã����س�����
ECHO.
PowerShell.exe -ExecutionPolicy Bypass -File "%bushu%"
PowerShell.exe -ExecutionPolicy UnRestricted -File "%bushu%"
ECHO.
ECHO.�������¼������������...
PAUSE>NUL
goto Y

:three
CLS
ECHO.
ECHO.��鲢�޸�Windows�ļ�
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
ECHO.�˳�������......
timeout /t 2 /nobreak >NUL
EXIT






