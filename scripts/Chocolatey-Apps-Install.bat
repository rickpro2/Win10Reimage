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
choco install chocolateygui --version 2.1.1 -y
$ResultText.text = "`r`n" + "Finished Installing Chocolatey GUI" + "`r`n" + "`r`n" + "Ready for Next Task"

Write-Host "Installing Choco Cleaner (Script + Task)"
$ResultText.text = "`r`n" +"`r`n" + "Installing Choco Cleaner (Script + Task)... Please Wait"
choco install choco-cleaner --version 1.1.1 -y
$ResultText.text = "`r`n" + "Finished Installing Choco Cleaner (Script + Task)" + "`r`n" + "`r`n" + "Ready for Next Task"

Write-Host "Installing Choco Upgrade All (Script + Task)"
$ResultText.text = "`r`n" +"`r`n" + "Installing Choco Upgrade All (Script + Task)... Please Wait"
choco install choco-upgrade-all-at-startup --version 2023.5.26 -y
$ResultText.text = "`r`n" + "Finished Installing Choco Upgrade All (Script + Task)" + "`r`n" + "`r`n" + "Ready for Next Task"

Write-Host "Installing Adobe Acrobat Reader DC"
$ResultText.text = "`r`n" +"`r`n" + "Installing Adobe Acrobat Reader DC... Please Wait"
choco install adobereader --version 2024.3.20112 -y
$ResultText.text = "`r`n" + "Finished Installing Adobe Acrobat Reader DC" + "`r`n" + "`r`n" + "Ready for Next Task"













choco install googlechrome --version 129.0.6668.90 -y
choco install vlc --version 3.0.21 -y
choco install zoom --version 6.2.3.47507 -y
choco install rustdesk --version 1.2.6 -y
choco install notepadplusplus --version 8.7.0 -y
choco install malwarebytes --version 5.2.0.112 -y
choco install open-shell --version 4.4.191 -y
choco install teamviewer --version 15.58.5 -y
choco install 7zip --version 24.8.0 -y
choco install alldup --version 4.5.62 -y
choco install rufus --version 4.5.0 -y
choco install etcher --version 1.19.21 -y
choco install putty --version 0.81.0 -y
choco install filezilla --version 3.67.1 -y
choco install handbrake --version 1.8.2 -y
choco install supportassist --version 3.14.2.45116 -y
choco install googledrive --version 97.0.1 -y
choco install office365business --version 17830.20162 -y















Write-Host "Installing Google Chrome"
$ResultText.text = "`r`n" +"`r`n" + "Installing Google Chrome... Please Wait"
choco install googlechrome -y
$ResultText.text = "`r`n" + "Finished Installing Google Chrome" + "`r`n" + "`r`n" + "Ready for Next Task"

rem  Write-Host "Installing Brave Browser"
rem  $ResultText.text = "`r`n" +"`r`n" + "Installing Brave Browser... Please Wait"
rem  choco install brave -y
rem  $ResultText.text = "`r`n" + "Finished Installing Brave Browser" + "`r`n" + "`r`n" + "Ready for Next Task"

Write-Host "Installing VLC Media Player"
$ResultText.text = "`r`n" +"`r`n" + "Installing VLC Media Player... Please Wait"
choco install vlc -y
$ResultText.text = "`r`n" + "Finished Installing VLC Media Player" + "`r`n" + "`r`n" + "Ready for Next Task"

Write-Host "Installing Zoom Client for Meetings"
$ResultText.text = "`r`n" +"`r`n" + "Installing Zoom Client for Meetings... Please Wait"
choco install zoom -y
$ResultText.text = "`r`n" + "Finished Installing Zoom Client for Meetings" + "`r`n" + "`r`n" + "Ready for Next Task"

Write-Host "Installing Rustdesk"
$ResultText.text = "`r`n" +"`r`n" + "Installing Rustdesk... Please Wait"
choco install rustdesk -y
$ResultText.text = "`r`n" + "Finished Installing Rustdesk" + "`r`n" + "`r`n" + "Ready for Next Task"

Write-Host "Installing Notepad++"
$ResultText.text = "`r`n" +"`r`n" + "Installing Notepad++... Please Wait"
choco install notepadplusplus.install -y
$ResultText.text = "`r`n" + "Finished Installing Notepad++" + "`r`n" + "`r`n" + "Ready for Next Task"

rem  Write-Host "Installing Malwarebytes"
rem  $ResultText.text = "`r`n" +"`r`n" + "Installing Malwarebytes... Please Wait"
rem  choco install malwarebytes -y
rem  $ResultText.text = "`r`n" + "Finished Installing Malwarebytes" + "`r`n" + "`r`n" + "Ready for Next Task"

rem  Write-Host "Installing Open-Shell"
rem  $ResultText.text = "`r`n" +"`r`n" + "Installing Open-Shell... Please Wait"
rem  choco install open-shell -y
rem  $ResultText.text = "`r`n" + "Finished Installing Open-Shell" + "`r`n" + "`r`n" + "Ready for Next Task"

rem  Write-Host "Installing TeamViewer"
rem  $ResultText.text = "`r`n" +"`r`n" + "Installing TeamViewer... Please Wait"
rem  choco install teamviewer -y
rem  $ResultText.text = "`r`n" + "Finished Installing TeamViewer" + "`r`n" + "`r`n" + "Ready for Next Task"

Write-Host "Installing 7-Zip"
$ResultText.text = "`r`n" +"`r`n" + "Installing 7-Zip... Please Wait"
choco install 7zip -y
$ResultText.text = "`r`n" + "Finished Installing 7-Zip" + "`r`n" + "`r`n" + "Ready for Next Task"

Write-Host "Installing iTunes"
$ResultText.text = "`r`n" +"`r`n" + "Installing iTunes... Please Wait"
choco install itunes -y
$ResultText.text = "`r`n" + "Finished Installing iTunes" + "`r`n" + "`r`n" + "Ready for Next Task"

rem  Write-Host "Installing AllDup"
rem  $ResultText.text = "`r`n" +"`r`n" + "Installing AllDup... Please Wait"
rem  choco install AllDup -y
rem  $ResultText.text = "`r`n" + "Finished Installing AllDup" + "`r`n" + "`r`n" + "Ready for Next Task"

rem  Write-Host "Installing O&O Shutup"
rem  $ResultText.text = "`r`n" +"`r`n" + "Installing O&O Shutup... Please Wait"
rem  choco install shutup10 -y
rem  $ResultText.text = "`r`n" + "Finished Installing O&O Shutup" + "`r`n" + "`r`n" + "Ready for Next Task"

rem  Write-Host "Installing Notepad++"
rem  $ResultText.text = "`r`n" +"`r`n" + "Installing Notepad++... Please Wait"
rem  choco install notepadplusplus -y
rem  $ResultText.text = "`r`n" + "Finished Installing Notepad++" + "`r`n" + "`r`n" + "Ready for Next Task"

rem  Write-Host "Installing Rufus"
rem  $ResultText.text = "`r`n" +"`r`n" + "Installing Rufus... Please Wait"
rem  choco install rufus -y
rem  $ResultText.text = "`r`n" + "Finished Installing Rufus" + "`r`n" + "`r`n" + "Ready for Next Task"

rem  Write-Host "Installing qBittorrent"
rem  $ResultText.text = "`r`n" +"`r`n" + "Installing qBittorrent... Please Wait"
rem  choco install qBittorrent -y
rem  $ResultText.text = "`r`n" + "Finished Installing qBittorrent" + "`r`n" + "`r`n" + "Ready for Next Task"

rem  Write-Host "Installing Apple iCloud 7.21.0.23"
rem  $ResultText.text = "`r`n" +"`r`n" + "Installing Apple iCloud 7.21.0.23... Please Wait"
rem  choco install icloud -y
rem  $ResultText.text = "`r`n" + "Finished Installing Apple iCloud 7.21.0.23" + "`r`n" + "`r`n" + "Ready for Next Task"

rem  Write-Host "Installing Tor Browser Bundle"
rem  $ResultText.text = "`r`n" +"`r`n" + "Installing Tor Browser Bundle... Please Wait"
rem  choco install tor-browser -y
rem  $ResultText.text = "`r`n" + "Finished Installing Tor Browser Bundle" + "`r`n" + "`r`n" + "Ready for Next Task"

rem  Write-Host "Installing 123Etcher 1.6.0"
rem  $ResultText.text = "`r`n" +"`r`n" + "Installing 123Etcher 1.6.0... Please Wait"
rem  choco install etcher -y
rem  $ResultText.text = "`r`n" + "Finished Installing 123Etcher 1.6.0" + "`r`n" + "`r`n" + "Ready for Next Task"   

rem  Write-Host "Installing PuTTY 0.76"
rem  $ResultText.text = "`r`n" +"`r`n" + "Installing PuTTY 0.76... Please Wait"
rem  choco install putty -y
rem  $ResultText.text = "`r`n" + "Finished Installing PuTTY 0.76" + "`r`n" + "`r`n" + "Ready for Next Task" 

rem  Write-Host "Installing WinDirStat"
rem  $ResultText.text = "`r`n" +"`r`n" + "Installing WinDirStat... Please Wait"
rem  choco install windirstat -y
rem  $ResultText.text = "`r`n" + "Finished Installing WinDirStat" + "`r`n" + "`r`n" + "Ready for Next Task" 

rem  Write-Host "Installing FileZilla"
rem  $ResultText.text = "`r`n" +"`r`n" + "Installing FileZilla... Please Wait"
rem  choco install filezilla -y
rem  $ResultText.text = "`r`n" + "Finished Installing FileZilla" + "`r`n" + "`r`n" + "Ready for Next Task"

rem  Write-Host "Installing HandBrake 1.3.2.20200505"
rem  $ResultText.text = "`r`n" +"`r`n" + "Installing HandBrake 1.3.2.20200505... Please Wait"
rem  choco install handbrake -y
rem  $ResultText.text = "`r`n" + "Finished Installing HandBrake 1.3.2.20200505" + "`r`n" + "`r`n" + "Ready for Next Task"    

rem  Write-Host "Installing Tixati 2.73"
rem  $ResultText.text = "`r`n" +"`r`n" + "Installing Tixati 2.73... Please Wait"
rem  choco install tixati -y
rem  $ResultText.text = "`r`n" + "Finished Installing Tixati 2.73" + "`r`n" + "`r`n" + "Ready for Next Task"  

rem  Write-Host "Installing Adobe Creative Cloud Client"
rem  $ResultText.text = "`r`n" +"`r`n" + "Installing Adobe Creative Cloud Client... Please Wait"
rem  choco install adobe-creative-cloud -y
rem  $ResultText.text = "`r`n" + "Finished Installing Adobe Creative Cloud Client" + "`r`n" + "`r`n" + "Ready for Next Task"  

rem  Write-Host "Installing Dell Command"
rem  $ResultText.text = "`r`n" +"`r`n" + "Installing Dell Command... Please Wait"
rem  choco install dellcommandupdate -y
rem  $ResultText.text = "`r`n" + "Finished Installing Dell Command" + "`r`n" + "`r`n" + "Ready for Next Task"  

Write-Host "Installing Dell SupportAssist"
$ResultText.text = "`r`n" +"`r`n" + "Installing Dell SupportAssist... Please Wait"
choco install supportassist -y
$ResultText.text = "`r`n" + "Finished Installing Dell SupportAssist" + "`r`n" + "`r`n" + "Ready for Next Task"  

rem  Write-Host "Installing Audacity"
rem  $ResultText.text = "`r`n" +"`r`n" + "Installing Audacity... Please Wait"
rem  choco install audacity -y
rem  $ResultText.text = "`r`n" + "Finished Installing Audacity" + "`r`n" + "`r`n" + "Ready for Next Task"  

Write-Host "Installing Google Drive for Desktop"
$ResultText.text = "`r`n" +"`r`n" + "Installing Google Drive for Desktop... Please Wait"
choco install google-drive-file-stream -y
$ResultText.text = "`r`n" + "Finished Installing Google Drive for Desktop" + "`r`n" + "`r`n" + "Ready for Next Task"  

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

Write-Host "Installing  Office 365 Business"
$ResultText.text = "`r`n" +"`r`n" + "Installing  Office 365 Business... Please Wait"
choco install office365business -y
$ResultText.text = "`r`n" + "Finished Installing  Office 365 Business" + "`r`n" + "`r`n" + "Ready for Next Task"   

$ResultText.text = "`r`n" + "Finished Installing Chocolaty and All Apps" + "`r`n" + "`r`n" + "Ready for Next Task"     
}

@rem ---[You can add as many programs here as you desire!]----

pause
echo.
echo Your installation is complete.
pause
