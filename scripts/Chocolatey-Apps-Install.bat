:init
setlocal DisableDelayedExpansion
set "batchPath=%~0"
for %%k in (%0) do set batchName=%%~nk
set "vbsGetPrivileges=%temp%\OEgetPriv_%batchName%.vbs"
setlocal EnableDelayedExpansion

:checkPrivileges
NET FILE 1>NUL 2>NUL
if '%errorlevel%' == '0' ( goto gotPrivileges ) else ( goto getPrivileges )

:getPrivileges
if '%1'=='ELEV' (echo ELEV & shift /1 & goto gotPrivileges)
ECHO.
ECHO **************************************
ECHO Invoking UAC for Privilege Escalation
ECHO **************************************

ECHO Set UAC = CreateObject^("Shell.Application"^) > "%vbsGetPrivileges%"
ECHO args = "ELEV " >> "%vbsGetPrivileges%"
ECHO For Each strArg in WScript.Arguments >> "%vbsGetPrivileges%"
ECHO args = args ^& strArg ^& " "  >> "%vbsGetPrivileges%"
ECHO Next >> "%vbsGetPrivileges%"
ECHO UAC.ShellExecute "!batchPath!", args, "", "runas", 1 >> "%vbsGetPrivileges%"
"%SystemRoot%\System32\WScript.exe" "%vbsGetPrivileges%" %*
exit /B

:gotPrivileges
setlocal & pushd .
cd /d %~dp0
if '%1'=='ELEV' (del "%vbsGetPrivileges%" 1>nul 2>nul  &  shift /1)

powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
choco feature enable -n=allowGlobalConfirmation


@rem ----[ Whatever you want to install, place it below this point, each item on its own line (to make it easier to find later on. ] ----

Write-Host "Installing Chocolatey GUI"
$ResultText.text = "`r`n" +"`r`n" + "Installing Chocolatey GUI... Please Wait"
choco install chocolateygui -y
$ResultText.text = "`r`n" + "Finished Installing Chocolatey GUI" + "`r`n" + "`r`n" + "Ready for Next Task"

Write-Host "Installing Choco Cleaner (Script + Task)"
$ResultText.text = "`r`n" +"`r`n" + "Installing Choco Cleaner (Script + Task)... Please Wait"
choco install choco-cleaner -y
$ResultText.text = "`r`n" + "Finished Installing Choco Cleaner (Script + Task)" + "`r`n" + "`r`n" + "Ready for Next Task"

Write-Host "Installing Choco Upgrade All (Script + Task)"
$ResultText.text = "`r`n" +"`r`n" + "Installing Choco Upgrade All (Script + Task)... Please Wait"
choco install choco-upgrade-all-at-startup -y
$ResultText.text = "`r`n" + "Finished Installing Choco Upgrade All (Script + Task)" + "`r`n" + "`r`n" + "Ready for Next Task"

Write-Host "Installing Adobe Acrobat Reader DC"
$ResultText.text = "`r`n" +"`r`n" + "Installing Adobe Acrobat Reader DC... Please Wait"
choco install adobereader -y
$ResultText.text = "`r`n" + "Finished Installing Adobe Acrobat Reader DC" + "`r`n" + "`r`n" + "Ready for Next Task"

Write-Host "Installing Google Chrome"
$ResultText.text = "`r`n" +"`r`n" + "Installing Google Chrome... Please Wait"
choco install googlechrome -y
$ResultText.text = "`r`n" + "Finished Installing Google Chrome" + "`r`n" + "`r`n" + "Ready for Next Task"

Write-Host "Installing Brave Browser"
$ResultText.text = "`r`n" +"`r`n" + "Installing Brave Browser... Please Wait"
choco install brave -y
$ResultText.text = "`r`n" + "Finished Installing Brave Browser" + "`r`n" + "`r`n" + "Ready for Next Task"

Write-Host "Installing VLC Media Player"
$ResultText.text = "`r`n" +"`r`n" + "Installing VLC Media Player... Please Wait"
choco install vlc -y
$ResultText.text = "`r`n" + "Finished Installing VLC Media Player" + "`r`n" + "`r`n" + "Ready for Next Task"

Write-Host "Installing Zoom Client for Meetings"
$ResultText.text = "`r`n" +"`r`n" + "Installing Zoom Client for Meetings... Please Wait"
choco install zoom -y
$ResultText.text = "`r`n" + "Finished Installing Zoom Client for Meetings" + "`r`n" + "`r`n" + "Ready for Next Task"

Write-Host "Installing TeamViewer"
$ResultText.text = "`r`n" +"`r`n" + "Installing TeamViewer... Please Wait"
choco install teamviewer -y
$ResultText.text = "`r`n" + "Finished Installing TeamViewer" + "`r`n" + "`r`n" + "Ready for Next Task"

Write-Host "Installing 7-Zip"
$ResultText.text = "`r`n" +"`r`n" + "Installing 7-Zip... Please Wait"
choco install 7zip -y
$ResultText.text = "`r`n" + "Finished Installing 7-Zip" + "`r`n" + "`r`n" + "Ready for Next Task"

Write-Host "Installing iTunes"
$ResultText.text = "`r`n" +"`r`n" + "Installing iTunes... Please Wait"
choco install iTunes -y
$ResultText.text = "`r`n" + "Finished Installing iTunes" + "`r`n" + "`r`n" + "Ready for Next Task"

Write-Host "Installing AllDup"
$ResultText.text = "`r`n" +"`r`n" + "Installing AllDup... Please Wait"
choco install AllDup -y
$ResultText.text = "`r`n" + "Finished Installing AllDup" + "`r`n" + "`r`n" + "Ready for Next Task"

Write-Host "Installing O&O Shutup"
$ResultText.text = "`r`n" +"`r`n" + "Installing O&O Shutup... Please Wait"
choco install shutup10 -y
$ResultText.text = "`r`n" + "Finished Installing O&O Shutup" + "`r`n" + "`r`n" + "Ready for Next Task"

Write-Host "Installing Notepad++"
$ResultText.text = "`r`n" +"`r`n" + "Installing Notepad++... Please Wait"
choco install notepadplusplus -y
$ResultText.text = "`r`n" + "Finished Installing Notepad++" + "`r`n" + "`r`n" + "Ready for Next Task"

Write-Host "Installing Rufus"
$ResultText.text = "`r`n" +"`r`n" + "Installing Rufus... Please Wait"
choco install rufus -y
$ResultText.text = "`r`n" + "Finished Installing Rufus" + "`r`n" + "`r`n" + "Ready for Next Task"

Write-Host "Installing qBittorrent"
$ResultText.text = "`r`n" +"`r`n" + "Installing qBittorrent... Please Wait"
choco install qBittorrent -y
$ResultText.text = "`r`n" + "Finished Installing qBittorrent" + "`r`n" + "`r`n" + "Ready for Next Task"

Write-Host "Installing Apple iCloud 7.21.0.23"
$ResultText.text = "`r`n" +"`r`n" + "Installing Apple iCloud 7.21.0.23... Please Wait"
choco install icloud -y
$ResultText.text = "`r`n" + "Finished Installing Apple iCloud 7.21.0.23" + "`r`n" + "`r`n" + "Ready for Next Task"

Write-Host "Installing Tor Browser Bundle"
$ResultText.text = "`r`n" +"`r`n" + "Installing Tor Browser Bundle... Please Wait"
choco install tor-browser -y
$ResultText.text = "`r`n" + "Finished Installing Tor Browser Bundle" + "`r`n" + "`r`n" + "Ready for Next Task"

Write-Host "Installing 123Etcher 1.6.0"
$ResultText.text = "`r`n" +"`r`n" + "Installing 123Etcher 1.6.0... Please Wait"
choco install etcher -y
$ResultText.text = "`r`n" + "Finished Installing 123Etcher 1.6.0" + "`r`n" + "`r`n" + "Ready for Next Task"   

Write-Host "Installing PuTTY 0.76"
$ResultText.text = "`r`n" +"`r`n" + "Installing PuTTY 0.76... Please Wait"
choco install putty -y
$ResultText.text = "`r`n" + "Finished Installing PuTTY 0.76" + "`r`n" + "`r`n" + "Ready for Next Task" 

Write-Host "Installing WinDirStat"
$ResultText.text = "`r`n" +"`r`n" + "Installing WinDirStat... Please Wait"
choco install windirstat -y
$ResultText.text = "`r`n" + "Finished Installing WinDirStat" + "`r`n" + "`r`n" + "Ready for Next Task" 

Write-Host "Installing FileZilla"
$ResultText.text = "`r`n" +"`r`n" + "Installing FileZilla... Please Wait"
choco install filezilla -y
$ResultText.text = "`r`n" + "Finished Installing FileZilla" + "`r`n" + "`r`n" + "Ready for Next Task"

Write-Host "Installing Malwarebytes 4.1.1.159"
$ResultText.text = "`r`n" +"`r`n" + "Installing Malwarebytes 4.1.1.159... Please Wait"
choco install malwarebytes -y
$ResultText.text = "`r`n" + "Finished Installing Malwarebytes 4.1.1.159" + "`r`n" + "`r`n" + "Ready for Next Task"    

Write-Host "Installing HandBrake 1.3.2.20200505"
$ResultText.text = "`r`n" +"`r`n" + "Installing HandBrake 1.3.2.20200505... Please Wait"
choco install handbrake -y
$ResultText.text = "`r`n" + "Finished Installing HandBrake 1.3.2.20200505" + "`r`n" + "`r`n" + "Ready for Next Task"    

Write-Host "Installing Tixati 2.73"
$ResultText.text = "`r`n" +"`r`n" + "Installing Tixati 2.73... Please Wait"
choco install tixati -y
$ResultText.text = "`r`n" + "Finished Installing Tixati 2.73" + "`r`n" + "`r`n" + "Ready for Next Task"  

Write-Host "Installing Adobe Creative Cloud Client"
$ResultText.text = "`r`n" +"`r`n" + "Installing Adobe Creative Cloud Client... Please Wait"
choco install adobe-creative-cloud -y
$ResultText.text = "`r`n" + "Finished Installing Adobe Creative Cloud Client" + "`r`n" + "`r`n" + "Ready for Next Task"  

Write-Host "Installing Dell Command"
$ResultText.text = "`r`n" +"`r`n" + "Installing Dell Command... Please Wait"
choco install dellcommandupdate -y
$ResultText.text = "`r`n" + "Finished Installing Dell Command" + "`r`n" + "`r`n" + "Ready for Next Task"  

Write-Host "Installing Audacity"
$ResultText.text = "`r`n" +"`r`n" + "Installing Audacity... Please Wait"
choco install audacity -y
$ResultText.text = "`r`n" + "Finished Installing Audacity" + "`r`n" + "`r`n" + "Ready for Next Task"  

rem Write-Host "Installing Google Drive for Desktop"
rem $ResultText.text = "`r`n" +"`r`n" + "Installing Google Drive for Desktop... Please Wait"
rem choco install google-drive-file-stream -y
rem $ResultText.text = "`r`n" + "Finished Installing Google Drive for Desktop" + "`r`n" + "`r`n" + "Ready for Next Task"  

rem Write-Host "Installing Winaero Tweaker"
rem $ResultText.text = "`r`n" +"`r`n" + "Installing Winaero Tweaker... Please Wait"
rem choco install winaero-tweaker -y
rem $ResultText.text = "`r`n" + "Finished Installing Winaero Tweaker" + "`r`n" + "`r`n" + "Ready for Next Task"  

rem  Write-Host "Installing OpenVPN Connect v3 3.3.1"
rem  $ResultText.text = "`r`n" +"`r`n" + "Installing OpenVPN Connect v3 3.3.1... Please Wait"
rem  choco install openvpn-connect -y
rem  $ResultText.text = "`r`n" + "Finished Installing OpenVPN Connect v3 3.3.1" + "`r`n" + "`r`n" + "Ready for Next Task"

rem  Write-Host "Installing Inkscape"
rem  $ResultText.text = "`r`n" +"`r`n" + "Installing Inkscape... Please Wait"
rem  choco install inkscape -y
rem  $ResultText.text = "`r`n" + "Finished Installing Inkscape" + "`r`n" + "`r`n" + "Ready for Next Task"   

rem  Write-Host "Installing GIMP"
rem  $ResultText.text = "`r`n" +"`r`n" + "Installing GIMP... Please Wait"
rem  choco install gimp -y
rem  $ResultText.text = "`r`n" + "Finished Installing GIMP" + "`r`n" + "`r`n" + "Ready for Next Task"  

rem  Write-Host "Installing Sharex"
rem  $ResultText.text = "`r`n" +"`r`n" + "Installing Sharex... Please Wait"
rem  choco install sharex -y
rem  $ResultText.text = "`r`n" + "Finished Installing Sharex" + "`r`n" + "`r`n" + "Ready for Next Task"

rem  Write-Host "Installing  Office 365 Business"
rem  $ResultText.text = "`r`n" +"`r`n" + "Installing  Office 365 Business... Please Wait"
rem  choco install office365business -y
rem  $ResultText.text = "`r`n" + "Finished Installing  Office 365 Business" + "`r`n" + "`r`n" + "Ready for Next Task"   

$ResultText.text = "`r`n" + "Finished Installing Chocolaty and All Apps" + "`r`n" + "`r`n" + "Ready for Next Task"     
}

@rem ---[You can add as many programs here as you desire!]----

pause
echo.
echo Your installation is complete.
pause
