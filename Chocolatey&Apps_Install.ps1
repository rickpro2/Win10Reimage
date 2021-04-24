Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$ErrorActionPreference = 'SilentlyContinue'
$wshell = New-Object -ComObject Wscript.Shell
$Button = [System.Windows.MessageBoxButton]::YesNoCancel
$ErrorIco = [System.Windows.MessageBoxImage]::Error
$Ask = 'Do you want to run this as an Administrator?
        Select "Yes" to Run as an Administrator
        Select "No" to not run this as an Administrator
        
        Select "Cancel" to stop the script.'

If (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]'Administrator')) {
    $Prompt = [System.Windows.MessageBox]::Show($Ask, "Run as an Administrator or not?", $Button, $ErrorIco) 
    Switch ($Prompt) {
        #This will debloat Windows 10
        Yes {
            Write-Host "You didn't run this script as an Administrator. This script will self elevate to run as an Administrator and continue."
            Start-Process PowerShell.exe -ArgumentList ("-NoProfile -ExecutionPolicy Bypass -File `"{0}`"" -f $PSCommandPath) -Verb RunAs
            Exit
        }
        No {
            Break
        }
    }
}




















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
	
#Write-Host "Installing Atom"
#	choco install atom -y

#Write-Host "Installing Office 365 Business"
#	choco install office365business -y

#Write-Host "Installing Git"
#	choco install git -y
