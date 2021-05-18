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
	
Write-Host "Choco Cleaner (Script + Task)"
	choco install choco-cleaner -y
		
Write-Host "Choco Upgrade All (Script + Task)"
	choco install choco-upgrade-all-at --params "'/TIME:07:00 /ABORTTIME:11:00'" -y

Write-Host "Installing Adobe Acrobat Reader DC"
	choco install adobereader -y
	
Write-Host "Installing Google Chrome"
	choco install googlechrome -y
	
Write-Host "Installing Brave Browser"
	choco install brave -y
	
Write-Host "Installing VLC media player"
	choco install vlc -y
	
Write-Host "Installing Zoom Client for Meetings"
	choco install zoom -y
	
Write-Host "Installing TeamViewer"
	choco install teamviewer -y
	
Write-Host "Installing 7-Zip"
	choco install 7zip -y

Write-Host "Installing iTunes"
	choco install itunes -y

Write-Host "Installing AllDup"
	choco install alldup -y
	
Write-Host "Installing O&O Shutup"
	choco install shutup10 -y

Write-Host "Installing Adobe Creative Cloud Client"
	choco install adobe-creative-cloud -y
	
Write-Host "Installing Notepad++"
	choco install notepadplusplus -y
		
Write-Host "Installing IPVanish"
	choco install ipvanish -y
	
Write-Host "Installing Rufus"
	choco install rufus -y
	
Write-Host "Installing Dell Command | Update 4.1.0"
	choco install dellcommandupdate -y
	choco install dellcommandupdate-uwp -y
	
Write-Host "Windows 10 Auto Dark Mode"
	choco install auto-dark-mode -y
	
Write-Host "Installing Rufus"
	choco install rufus -y

Write-Host "Installing Audacity"
	choco install audacity -y





#Write-Host "Installing Atom"
#	choco install atom -y

#Write-Host "Installing Office 365 Business"
#	choco install office365business -y

#Write-Host "Installing Git"
#	choco install git -y
