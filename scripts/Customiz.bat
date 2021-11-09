:customize
cls
echo ______________________________________________________________
echo %time%               APPLY WINDOWS CUSTOMIZATIONS
echo ______________________________________________________________
REM *********************************
REM * START OF WINDOWS CUSTOMIZATIONS *
REM *********************************

echo Installing WINDOWS CUSTOMIZATIONS...
timeout /t 5

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

REM **********************************************
REM * To Turn On or Off "Auto arrange icons" and *
REM * "Align icons to grid" using a BAT file *
REM **********************************************

REG ADD "HKCU\SOFTWARE\Microsoft\Windows\Shell\Bags\1\Desktop" /V FFLAGS /T REG_DWORD /D 1075839525 /F

:: 1075839520 = Auto arrange icons = OFF and Align icons to grid = OFF
:: 1075839521 = Auto arrange icons = ON and Align icons to grid = OFF
:: 1075839524 = Auto arrange icons = OFF and Align icons to grid = ON
:: 1075839525 = Auto arrange icons = ON and Align icons to grid = ON

REM **************************************
REM * Display full path in the title bar *
REM **************************************

REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\CabinetState /v FullPath /t REG_DWORD /d 0x00000001 /f > NUL

REM ******************************************************
REM * Apply a customized themepack to Windows. Note that *
REM * the themepack should be located in the same folder *
REM * where this program is run from.                    *
REM ******************************************************

mytheme.deskthemepack
del MyCustomTheme.deskthemepack > NUL

REM All settings have been applied. Even though we are restarting, for some reason the setting to auto hide the taskbar requires that
REM File explorer.exe be restarted. If you don't restart it, that registry setting will revert back, even after a logoff / logon or reboot.
REM As a result, we will restart explorer.exe first, then reboot the system.

REM Restart explorer

taskkill /f /im explorer.exe
start explorer.exe

:END
