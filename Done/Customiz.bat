@echo off
:start
cls
title RMPIT LLC, Imaging Script
color f1
echo ______________________________________________________________
echo %date% %time% %username% %password% %localgroup%
echo ______________________________________________________________
echo.
echo Welcome to the RMPIT!  This program will allow you to do a couple of things.
echo.
echo Press Enter
pause >Nul 

:stage1
cls
color f1
echo -------------------------Pick A Task--------------------------
echo.
echo ____________________________________________________________________________
echo A = Activate Windows
echo ____________________________________________________________________________
echo B = Apply Windows customizations		C = INSTALL CHOCOLATEY AND APPS
echo D = Debloat the Windows System		E = SETUP SYSPREP AND RUN
echo F = Do All
echo G = Reboot                             H = END 
echo ____________________________________________________________________________
set /p opt1=
if %opt1% == a goto activate
if %opt1% == b (
set DoBoth=N
goto customize
) 
if %opt1% == c (
set DoBoth=N
goto chocolatey
)
if %opt1% == d (
set DoBoth=N
goto Debloat
)
if %opt1% == e goto sysprep
if %opt1% == f (
set DoBoth=Y
goto customize
)
if %opt1% == g goto reboot
if %opt1% == h goto End

:error
cls             
color f
echo UNKNOWN FUNCTION
echo Press Enter To Return To Start
pause >nul
goto stage1

:activate
cls
echo ______________________________________________________________
echo %time%                   ACTIVATE WINDOWS
echo ______________________________________________________________
echo ACTIVATING WINDOWS ...
Mkdir C:\TEMP
cd C:\Program Files\RMPIT\Scripts\               
COPY  /Y ActivateWindows1.bat  C:\TEMP               
call ActivateWindows1.bat
timeout /t 90

if %DoBoth%==N goto Reboot

:customize
cls
echo ______________________________________________________________
echo %time%               APPLY WINDOWS CUSTOMIZATIONS
echo ______________________________________________________________
REM *********************************
REM * START OF WINDOWS CUSTOMIZATIONS *
REM *********************************

echo Installing WINDOWS CUSTOMIZATIONS...
timeout /t 7

REM ****************************************
REM * Display seconds on the taskbar clock *
REM ****************************************

REM This will cause the clock on the taskbar to show seconds. Windows Explorer needs to be restarted
REM before this will take effect.

REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v ShowSecondsInSystemClock /t REG_DWORD /d 0x00000001 /f > NUL

REM *****************************
REM * Show file name extensions *
REM *****************************

REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v HideFileExt /t REG_DWORD /d 0x00000000 /f > NUL

REM **************************************
REM * Display full path in the title bar *
REM **************************************

REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\CabinetState /v FullPath /t REG_DWORD /d 0x00000001 /f > NUL

REM ******************************************************
REM * Apply a customized themepack to Windows. Note that *
REM * the themepack should be located in the same folder *
REM * where this program is run from.                    *
REM ******************************************************

MyCustomTheme.deskthemepack
del MyCustomTheme.deskthemepack > NUL

REM All settings have been applied. Even though we are restarting, for some reason the setting to auto hide the taskbar requires that
REM File explorer.exe be restarted. If you don't restart it, that registry setting will revert back, even after a logoff / logon or reboot.
REM As a result, we will restart explorer.exe first, then reboot the system.

REM Restart explorer

taskkill /f /im explorer.exe
start explorer.exe

if %DoBoth%==N goto Reboot

:Chocolatey
cls
color a
echo ______________________________________________________________
echo %time%                   INSTALL CHOCOLATEY AND APPS
echo ______________________________________________________________
echo Installing Chocolatey...

Mkdir C:\TEMP
cd C:\Program Files\RMPIT\Scripts\               
COPY  /Y Chocolatey.ps1  C:\TEMP               
powershell.exe -ExecutionPolicy Bypass c:\temp\Chocolatey.ps1

if %DoBoth%==N goto Reboot

:Debloat
cls
color a
echo ______________________________________________________________
echo %time%                   Debloat the Windows System
echo ______________________________________________________________
Debloating The Windows System...

Mkdir C:\TEMP
cd C:\Program Files\RMPIT\Scripts\               
COPY  /Y Windows10SysPrepDebloater1.ps1  C:\TEMP 
COPY  /Y Windows10SysPrepDebloater2.ps1  C:\TEMP               


REM Windows10 #1
powershell.exe -ExecutionPolicy Bypass c:\temp\Windows10SysPrepDebloater1.ps1 -Sysprep -Debloat -Privacy

REM Windows10 #2
powershell.exe -ExecutionPolicy Bypass c:\temp\Windows10SysPrepDebloater2.ps1 -Sysprep -Debloat -Privacy

if %DoBoth%==N goto Reboot

:Sysprep
REM **********************************************
REM * SETUP SYSPREP AND RUN *
REM **********************************************

cls
color f
echo Getting everything ready for sysprep...
echo Running sysprep...
echo.
timeout /t 7

net user RMPIT ogoged /ADD /PASSWORDCHG:NO
net localgroup administrators RMPIT /ADD

REM The following lines place the oemlogo.bmp, and unattend.xml, files in the correct locations.

cd C:\Program Files\RMPIT\Assets\  


copy /Y RMPIT.lnk %AllUsersProfile%\Desktop > NUL
copy /Y oemlogo.bmp %windir%\system32 > NUL
move /Y unattend.xml %windir%\system32\sysprep > NUL
copy /Y RunOnce.bat %appdata%\Microsoft\Windows\Start Menu\Programs\Startup > NUL
copy /Y Welcome.VBS %appdata%\Microsoft\Windows\Start Menu\Programs\Startup > NUL


C:\Windows\System32\sysprep\sysprep.exe /generalize /oobe /shutdown


REM We should never reach this line, it is here just to be on the safe side
goto END

:Reboot
REM *********************************
REM * REBOOT THE SYSTEM *
REM *********************************

cls
color f
echo Your Device is about to Reboot...
echo.
timeout /t 5

REM Reboot the system
SHUTDOWN /r /t 10 /c "Device will Restart in 10 Sec." /f

REM *********************************
REM * END OF BATCH FILE *
REM *********************************

:END
