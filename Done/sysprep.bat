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
