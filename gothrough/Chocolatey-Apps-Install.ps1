If (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))

{   
$arguments = "& '" + $myinvocation.mycommand.definition + "'"
Start-Process powershell -Verb runAs -ArgumentList $arguments
Break
}

function ChocolateyAllApps { 
Write-Host "Installing Chocolatey"
$ResultText.text = "`r`n" +"`r`n" + "Installing Chocolatey... Please Wait"
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco install chocolatey-core.extension -y
$ResultText.text = "`r`n" + "Finished Installing Chocolatey" + "`r`n" + "`r`n" + "Ready for Next Task"

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
choco install choco-upgrade-all-at --params "'/TIME:07:00 /ABORTTIME:11:50'" -y
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
choco install 7-Zip -y
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
choco install Rufus -y
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

Write-Host "Installing Malwarebytes 4.1.1.159"
$ResultText.text = "`r`n" +"`r`n" + "Installing Malwarebytes 4.1.1.159... Please Wait"
choco install malwarebytes -y
$ResultText.text = "`r`n" + "Finished Installing Malwarebytes 4.1.1.159" + "`r`n" + "`r`n" + "Ready for Next Task"    

$ResultText.text = "`r`n" + "Finished Installing Chocolaty and All Apps" + "`r`n" + "`r`n" + "Ready for Next Task"     
}

function Inkscape { 
Write-Host "Installing Inkscape"
$ResultText.text = "`r`n" +"`r`n" + "Installing Inkscape... Please Wait"
choco install inkscape -y
$ResultText.text = "`r`n" + "Finished Installing Inkscape" + "`r`n" + "`r`n" + "Ready for Next Task"    
}

function GIMP { 
Write-Host "Installing GIMP"
$ResultText.text = "`r`n" +"`r`n" + "Installing GIMP... Please Wait"
choco install gimp -y
$ResultText.text = "`r`n" + "Finished Installing GIMP" + "`r`n" + "`r`n" + "Ready for Next Task"    
}

function Audacity { 
Write-Host "Installing Audacity"
$ResultText.text = "`r`n" +"`r`n" + "Installing Audacity... Please Wait"
choco install audacity -y
$ResultText.text = "`r`n" + "Finished Installing Audacity" + "`r`n" + "`r`n" + "Ready for Next Task"    
}

function Sharex { 
Write-Host "Installing Sharex"
$ResultText.text = "`r`n" +"`r`n" + "Installing Sharex... Please Wait"
choco install sharex -y
$ResultText.text = "`r`n" + "Finished Installing Sharex" + "`r`n" + "`r`n" + "Ready for Next Task"
}

function office { 
Write-Host "Installing  Office 365 Business"
$ResultText.text = "`r`n" +"`r`n" + "Installing  Office 365 Business... Please Wait"
choco install office365business -y
$ResultText.text = "`r`n" + "Finished Installing  Office 365 Business" + "`r`n" + "`r`n" + "Ready for Next Task"    
}
