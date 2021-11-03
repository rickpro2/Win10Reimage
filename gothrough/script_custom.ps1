# Install chocolatey & boxstarter
Set-ExecutionPolicy AllSigned; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
. { iwr -useb http://boxstarter.org/bootstrapper.ps1 } | iex; get-boxstarter -Force

# Basic setup
Write-Host "Setting execution policy"
Update-ExecutionPolicy Unrestricted

###########################################
# Update Windows and reboot if necessary	#
###########################################

Write-Host "Enable MicrosoftUpdate"
Enable-MicrosoftUpdate

Write-Host "Change Windows Updates to 'Notify to schedule restart'"
# Change Windows Updates to "Notify to schedule restart"
If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings")) {
    New-Item -Path HKCU:\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings -Force | Out-Null
}
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings -Name UxOption -Type DWord -Value 1
If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings")) {
    New-Item -Path HKLM:\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings -Force | Out-Null
}
Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings -Name UxOption -Type DWord -Value 1

Write-Host "Disable P2P Update downlods outside of local network"
# Disable P2P Update downlods outside of local network
If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config")) {
    New-Item -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config -Force | Out-Null
}
Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config -Name DODownloadMode -Type DWord -Value 1
Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization -Name SystemSettingsDownloadMode -Type DWord -Value 3
If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config")) {
    New-Item -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config -Force | Out-Null
}
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config -Name DODownloadMode -Type DWord -Value 1
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization -Name SystemSettingsDownloadMode -Type DWord -Value 3

Write-Host "Install WindowsUpdate"
Install-WindowsUpdate -AcceptEula -GetUpdatesFromMS -SupressReboot

##################
# Privacy Settings
##################

Write-Host "Disable IE ESC"
Disable-InternetExplorerESC

#Write-Host "Disable UAC"
#Disable-UAC

Disable-BingSearch

# Privacy: Let apps use my advertising ID: Disable
If (!(Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo")) {
    New-Item -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo -Force | Out-Null
}
Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo -Name Enabled -Type DWord -Value 0
If (!(Test-Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo")) {
    New-Item -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo -Force | Out-Null
}
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo -Name Enabled -Type DWord -Value 0


# Privacy: SmartScreen Filter for Store Apps: Disable
If (-Not (Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost")) {
    New-Item -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost -Force | Out-Null
}
Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost -Name EnableWebContentEvaluation -Type DWord -Value 0
If (-Not (Test-Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost")) {
    New-Item -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost -Force | Out-Null
}
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost -Name EnableWebContentEvaluation -Type DWord -Value 0

# WiFi Sense: HotSpot Sharing: Disable
If (-Not (Test-Path "HKLM:\Software\Microsoft\PolicyManager\default\WiFi\AllowWiFiHotSpotReporting")) {
    New-Item -Path HKLM:\Software\Microsoft\PolicyManager\default\WiFi\AllowWiFiHotSpotReporting -Force | Out-Null
}
Set-ItemProperty -Path HKLM:\Software\Microsoft\PolicyManager\default\WiFi\AllowWiFiHotSpotReporting -Name value -Type DWord -Value 0
If (-Not (Test-Path "HKCU:\Software\Microsoft\PolicyManager\default\WiFi\AllowWiFiHotSpotReporting")) {
    New-Item -Path HKCU:\Software\Microsoft\PolicyManager\default\WiFi\AllowWiFiHotSpotReporting -Force | Out-Null
}
Set-ItemProperty -Path HKCU:\Software\Microsoft\PolicyManager\default\WiFi\AllowWiFiHotSpotReporting -Name value -Type DWord -Value 0

# WiFi Sense: Shared HotSpot Auto-Connect: Disable
If (-Not (Test-Path "HKLM:\Software\Microsoft\PolicyManager\default\WiFi\AllowAutoConnectToWiFiSenseHotspots")) {
    New-Item -Path HKLM:\Software\Microsoft\PolicyManager\default\WiFi\AllowAutoConnectToWiFiSenseHotspots -Force | Out-Null
}
Set-ItemProperty -Path HKLM:\Software\Microsoft\PolicyManager\default\WiFi\AllowAutoConnectToWiFiSenseHotspots -Name value -Type DWord -Value 0
If (-Not (Test-Path "HKCU:\Software\Microsoft\PolicyManager\default\WiFi\AllowAutoConnectToWiFiSenseHotspots")) {
    New-Item -Path HKCU:\Software\Microsoft\PolicyManager\default\WiFi\AllowAutoConnectToWiFiSenseHotspots -Force | Out-Null
}
Set-ItemProperty -Path HKCU:\Software\Microsoft\PolicyManager\default\WiFi\AllowAutoConnectToWiFiSenseHotspots -Name value -Type DWord -Value 0

Write-Host "Disabling Cortana"
# From here: https://gallery.technet.microsoft.com/scriptcenter/How-to-disable-Cortana-on-b44924a4
$path = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search"     
IF(!(Test-Path -Path $path)) {
	New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows" -Name "Windows Search"
}
Set-ItemProperty -Path $path -Name "AllowCortana" -Value 1  
#Restart Explorer to change it immediately     
Stop-Process -name explorer


# Disable Telemetry (requires a reboot to take effect)
If (-Not (Test-Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection")) {
    New-Item -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection -Force | Out-Null
}
Set-ItemProperty -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection -Name AllowTelemetry -Type DWord -Value 0
If (-Not (Test-Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\DataCollection")) {
    New-Item -Path HKCU:\SOFTWARE\Policies\Microsoft\Windows\DataCollection -Force | Out-Null
}
Set-ItemProperty -Path HKCU:\SOFTWARE\Policies\Microsoft\Windows\DataCollection -Name AllowTelemetry -Type DWord -Value 0

Get-Service DiagTrack,Dmwappushservice | Stop-Service | Set-Service -StartupType Disabled


############################
# Personal Preferences on UI
############################

# Change Explorer home screen back to "This PC"
If (-Not (Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced")) {
    New-Item -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Force | Out-Null
}
Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name LaunchTo -Type DWord -Value 1
If (-Not (Test-Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced")) {
    New-Item -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Force | Out-Null
}
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name LaunchTo -Type DWord -Value 1
# Change it back to "Quick Access" (Windows 10 default)
#Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name LaunchTo -Type DWord -Value 2


# These make "Quick Access" behave much closer to the old "Favorites"
# Disable Quick Access: Recent Files
If (-Not (Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer")) {
   New-Item -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer -Force | Out-Null
}
Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer -Name ShowRecent -Type DWord -Value 0
# Disable Quick Access: Frequent Folders
Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer -Name ShowFrequent -Type DWord -Value 0
If (-Not (Test-Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer")) {
   New-Item -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer -Force | Out-Null
}
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer -Name ShowRecent -Type DWord -Value 0
# Disable Quick Access: Frequent Folders
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer -Name ShowFrequent -Type DWord -Value 0

# To Restore:
#Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer -Name ShowRecent -Type DWord -Value 1
#Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer -Name ShowFrequent -Type DWord -Value 1

# Disable the Lock Screen (the one before password prompt - to prevent dropping the first character)
If (-Not (Test-Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\Personalization)) {
	New-Item -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows -Name Personalization | Out-Null
}
Set-ItemProperty -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\Personalization -Name NoLockScreen -Type DWord -Value 1
If (-Not (Test-Path HKCU:\SOFTWARE\Policies\Microsoft\Windows\Personalization)) {
	New-Item -Path HKCU:\SOFTWARE\Policies\Microsoft\Windows -Name Personalization | Out-Null
}
Set-ItemProperty -Path HKCU:\SOFTWARE\Policies\Microsoft\Windows\Personalization -Name NoLockScreen -Type DWord -Value 1
# To Restore:
#Set-ItemProperty -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\Personalization -Name NoLockScreen -Type DWord -Value 1

# Install chocolatey

#iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1')) && SET PATH=%PATH%;%systemdrive%\chocolatey\bin
iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex

###########################################
#       	 Set explorer options         	#
###########################################

Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowProtectedOSFiles -EnableShowFileExtensions -EnableShowFullPathInTitleBar -EnableExpandToOpenFolder
#-EnableOpenFileExplorerToQuickAccess -EnableShowRecentFilesInQuickAccess -EnableShowFrequentFoldersInQuickAccess
Set-TaskbarOptions -Size Small -Lock

###########################################
#       	 Install base stuff           	#
###########################################


cinst -y Microsoft-Hyper-V-All -source windowsFeatures
cinst -y hyper
cinst -y git.install
cinst -y poshgit

$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")

cinst Git-Credential-Manager-for-Windows
cinst github

cinst -y sysinternals
cinst -y TeraCopy
cinst -y 7zip.install
cinst -y firefox
cinst -y adobereader
cinst -y winmerge
cinst -y windirstat
cinst -y putty.install
cinst -y visualstudiocode

if (Test-PendingRevoot) { Invoke-Reboot }
