REM The following lines place the oemlogo.bmp, and unattend.xml, files in the correct locations.

cd C:\Program Files\RMPIT\


copy /Y RMPIT.lnk %AllUsersProfile%\Desktop > NUL
copy /Y oemlogo.bmp %windir%\system32 > NUL
move /Y unattend.xml %windir%\system32\sysprep > NUL
copy /Y RunOnce.bat %appdata%\Microsoft\Windows\Start Menu\Programs\Startup > NUL
copy /Y Welcome.VBS %appdata%\Microsoft\Windows\Start Menu\Programs\Startup > NUL


C:\Windows\System32\sysprep\sysprep.exe /generalize /oobe /shutdown /unattend:C:\Windows\System32\Sysprep\unattend.xml
