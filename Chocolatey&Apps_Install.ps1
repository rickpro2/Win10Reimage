If (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))

{   
$arguments = "& '" + $myinvocation.mycommand.definition + "'"
Start-Process powershell -Verb runAs -ArgumentList $arguments
Break
}

Write-Host "Installing Chocolatey"
	Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
	choco install chocolatey-core.extension -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)

Write-Host "Installing Chocolatey GUI"
	choco install chocolateygui -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
	
Write-Host "Choco Cleaner (Script + Task)"
	choco install choco-cleaner -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
		
Write-Host "Choco Upgrade All (Script + Task)"
	choco install choco-upgrade-all-at --params "'/TIME:07:00 /ABORTTIME:11:00'" -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)

Write-Host "Installing Adobe Acrobat Reader DC"
	choco install adobereader -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
	
Write-Host "Installing Google Chrome"
	choco install googlechrome -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
	
Write-Host "Installing Brave Browser"
	choco install brave -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
	
Write-Host "Installing VLC media player"
	choco install vlc -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
	
Write-Host "Installing Zoom Client for Meetings"
	choco install zoom -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
	
Write-Host "Installing TeamViewer"
	choco install teamviewer -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
	
Write-Host "Installing 7-Zip"
	choco install 7zip -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)

Write-Host "Installing iTunes"
	choco install itunes -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)	

Write-Host "Installing AllDup"
	choco install alldup -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
	
Write-Host "Installing O&O Shutup"
	choco install shutup10 -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)

Write-Host "Installing Adobe Creative Cloud Client"
	choco install adobe-creative-cloud -y
	$wshell.Popup("Operation Completed",0,"Done",0x0)
	
#Write-Host "Installing Git"
#	choco install git -y
#	$wshell.Popup("Operation Completed",0,"Done",0x0)
