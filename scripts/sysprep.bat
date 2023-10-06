REM The following lines place the oemlogo.bmp, and unattend.xml, files in the correct locations.

cd C:\Program Files\RMPIT\

Debloating The Windows System...

Mkdir C:\TEMP
cd C:\Program Files\RMPIT\             
COPY  /Y Windows10SysPrepDebloater.ps1  C:\TEMP 
              
REM Windows10 #1
powershell.exe -ExecutionPolicy Bypass c:\temp\Windows10SysPrepDebloater.ps1 -Sysprep -Debloat -Privacy


copy /Y RMPIT.lnk %AllUsersProfile%\Desktop > NUL
copy /Y oemlogo.bmp %windir%\system32 > NUL
move /Y unattend.xml %windir%\system32\sysprep > NUL
copy /Y RunOnce.bat %appdata%\Microsoft\Windows\Start Menu\Programs\Startup > NUL
copy /Y Welcome.VBS %appdata%\Microsoft\Windows\Start Menu\Programs\Startup > NUL

cd C:\TEMP
del /s /q c:\temp\Windows10SysPrepDebloater.ps1\*


C:\Windows\System32\sysprep\sysprep.exe /generalize /oobe /shutdown /unattend:C:\Windows\System32\Sysprep\unattend.xml
