If (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))

{   
$arguments = "& '" + $myinvocation.mycommand.definition + "'"
Start-Process powershell -Verb runAs -ArgumentList $arguments
Break
}

Write-Host "Installing Chocolatey"
	Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
	choco install chocolatey-core.extension -y

    Write-Host "Installing Chocolatey GUI"
    choco install chocolateygui -y
    Write-Host "Installed Chocolatey GUI"
    
    Write-Host "Installing Choco Cleaner (Script + Task)"
    choco install choco-cleaner -y
    Write-Host "Installed Choco Cleaner (Script + Task)"   
    
    Write-Host "Installing Choco Upgrade All (Script + Task)"
    choco install choco-upgrade-all-at --params "'/TIME:07:00 /ABORTTIME:11:00'" -y
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
    
    Write-Host "Installing O&O Shutup"
    choco install shutup10 -y
    Write-Host "Installed O&O Shutup" 
    
    Write-Host "Installing Notepad++"
    choco install notepadplusplus -y
    Write-Host "Installed Notepad++" 
    
    Write-Host "Installing IPVanish"
    choco install ipvanish -y
    Write-Host "Installed IPVanish" 
    
    Write-Host "Installing Rufus"
    choco install rufus -y
    Write-Host "Installed Rufus" 
    
    Write-Host "Installing Dell Command | Update 4.1.0"
    choco install dellcommandupdate -y
    choco install dellcommandupdate-uwp -y
    Write-Host "Installed Dell Command | Update 4.1.0" 
    
    Write-Host "Installing Audacity"
    choco install audacity -y
    Write-Host "Installed Audacity" 

    Write-Host "Installing Sharex"
    choco install sharex -y
    Write-Host "Installed Sharex"

    Write-Host "Tor Browser Bundle"
    choco install tor-browser -y
    Write-Host "Tor Browser Bundle"

    Write-Host "Inkscape"
    choco install inkscape -y
    Write-Host "Inkscape"

    Write-Host "GIMP"
    choco install gimp -y
    Write-Host "GIMP"




#Write-Host "Installing Atom"
#	choco install atom -y

#Write-Host "Installing Office 365 Business"
#	choco install office365business -y

#Write-Host "Installing Git"
#	choco install git -y
