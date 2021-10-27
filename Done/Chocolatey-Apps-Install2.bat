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

    Write-Host "Installing Choco Cleaner (Script + Task)"
    choco install choco-cleaner -y
    Write-Host "Installed Choco Cleaner (Script + Task)"  

    Write-Host "Chocolatey GUI 0.19.0"
    choco install chocolateygui -y
    Write-Host "Chocolatey GUI 0.19.0"  

    Write-Host "Installing Choco Upgrade All (Script + Task)"
    choco install choco-upgrade-all-at --params "'/TIME:07:00 /ABORTTIME:11:50'" -y
    Write-Host "Installed Choco Upgrade All (Script + Task)"   

    Write-Host "Installing Adobe Acrobat Reader DC"
    choco install adobereader -y
    Write-Host "Installed Adobe Acrobat Reader DC"
    
    Write-Host "Installing Google Chrome"
    choco install googlechrome -y
    Write-Host "Installed Google Chrome"   
    
    Write-Host "Installing Brave Browser"
    choco install brave -y
    Write-Host "Installed Brave Browser"   
    
    Write-Host "Installing VLC Media Player"
    choco install vlc -y
    Write-Host "Installed VLC Media Player"  
    
    Write-Host "Installing Zoom Client for Meetings"
    choco install zoom -y
    Write-Host "Installed Zoom Client for Meetings" 
    
    Write-Host "Installing TeamViewer"
    choco install teamviewer -y
    Write-Host "Installed TeamViewer"  
    
    Write-Host "Installing 7-Zip"
    choco install 7zip -y
    Write-Host "Installed 7-Zip"  
    
    Write-Host "Installing iTunes"
    choco install itunes -y
    Write-Host "Installed iTunes" 
    
    Write-Host "Installing AllDup"
    choco install alldup -y
    Write-Host "Installed AllDup"    
    
    Write-Host "Installing Notepad++"
    choco install notepadplusplus -y
    Write-Host "Installed Notepad++" 
    
    Write-Host "Installing Dell Command | Update 4.1.0"
    choco install dellcommandupdate -y
    choco install dellcommandupdate-uwp -y
    Write-Host "Installed Dell Command | Update 4.1.0"    
    
    Write-Host "Tor Browser Bundle"
    choco install tor-browser -y
    Write-Host "Tor Browser Bundle" 
    
    Write-Host "Installing O&O Shutup"
    choco install shutup10 -y
    Write-Host "Installed O&O Shutup" 
        
    Write-Host "Installing IPVanish"
    choco install ipvanish -y
    Write-Host "Installed IPVanish" 
    
    Write-Host "Installing Rufus"
    choco install rufus -y
    Write-Host "Installed Rufus" 
        
    Write-Host "Installing Audacity"
    choco install audacity -y
    Write-Host "Installed Audacity" 

    Write-Host "Installing Sharex"
    choco install sharex -y
    Write-Host "Installed Sharex"

    Write-Host "Spotify"
    choco install spotify -y
    Write-Host "Spotify"

    Write-Host "qBittorrent"
    choco install qBittorrent -y
    Write-Host "qBittorrent"

    Write-Host "Apple iCloud 7.21.0.23"
    choco install icloud -y
    Write-Host "Apple iCloud7.21.0.23"

#Write-Host "Inkscape"
#    choco install inkscape -y
#    Write-Host "Inkscape"

#Write-Host "GIMP"
#    choco install gimp -y
#    Write-Host "GIMP"

#Write-Host "Installing Office 365 Business"
#	choco install office365business -y

#Write-Host "Installing Git"
#	choco install git -y

@rem ---[You can add as many programs here as you desire!]----

pause
echo.
echo Your installation is complete.
pause
