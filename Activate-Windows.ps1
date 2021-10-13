# Script: Activate-Windows.ps1
# Description: Activates Windows
# Execution: PS> PowerShell.exe -ExecutionPolicy ByPass ".\Activate-Windows.ps1" -Wait -WindowStyle Hidden
# Author: Harry Caskey (harrycaskey@gmail.com)
# Last Modified: 2019-07-12
#










Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$ErrorActionPreference = 'SilentlyContinue'
$wshell = New-Object -ComObject Wscript.Shell
$Button = [System.Windows.MessageBoxButton]::YesNoCancel
$ErrorIco = [System.Windows.MessageBoxImage]::Error
If (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]'Administrator')) {
	Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
	Exit
}

# GUI Specs
Write-Host "Checking winget..."

# Check if winget is installed
if (Test-Path ~\AppData\Local\Microsoft\WindowsApps\winget.exe){
    'Winget Already Installed'
}  
else{
    # Installing winget from the Microsoft Store
	Write-Host "Winget not found, installing it now."
    $ResultText.text = "`r`n" +"`r`n" + "Installing Winget... Please Wait"
	Start-Process "ms-appinstaller:?source=https://aka.ms/getwinget"
	$nid = (Get-Process AppInstaller).Id
	Wait-Process -Id $nid
	Write-Host Winget Installed
    $ResultText.text = "`r`n" +"`r`n" + "Winget Installed - Ready for Next Task"
}













# Check Windows Activation Status
$actStatus = ((cscript /Nologo "$env:SystemRoot\system32\slmgr.vbs" -xpr) -join '')
if ($actStatus -like "*Volume activation will expire *") {$actStatus = $True} else {$actStatus = $False}

# Gather Operating System Information & Assign Product Key
if ($actStatus -eq $False) {
    # Get Operating System Version
    $osVersion = ((Get-WmiObject -Class Win32_OperatingSystem).Caption)

    # KMS Client License Keys - https://docs.microsoft.com/en-us/windows-server/get-started/kmsclientkeys
    if ($osVersion -like "Microsoft Windows Server 2016 Standard*") {$productKey = "WC2BQ-8NRM3-FDDYY-2BFGV-KHKQY"; $valid = $true}
    if ($osVersion -like "Microsoft Windows Server 2016 Datacenter*") {$productKey = "CB7KF-BWN84-R7R2Y-793K2-8XDDG"; $valid = $true}
    if ($osVersion -like "Microsoft Windows Server 2019 Standard*") {$productKey = "N69G4-B89J2-4G8F4-WWYCC-J464C"; $valid = $true}
    if ($osVersion -like "Microsoft Windows Server 2019 Datacenter*") {$productKey = "WMDGN-G9PQG-XVVXX-R3X43-63DFG"; $valid = $true}
    if ($osVersion -like "Microsoft Windows 10 Enterprise*") {$productKey = "NPPR9-FWDCX-D2C8J-H872K-2YT43"; $valid = $true}
    # Legacy Operating Systems
    if ($osVersion -like "Microsoft Windows Server 2008 R2 Enterprise*") {$productKey = "489J6-VHDMP-X63PK-3K798-CPX3Y"; $valid = $true}
    if ($osVersion -like "Microsoft Windows Server 2012 R2 Standard*") {$productKey = "D2N9P-3P6X9-2R39C-7RTCD-MDVJX"; $valid = $true}
    if ($osVersion -like "Microsoft Windows Server 2012 Standard*") {$productKey = "D2N9P-3P6X9-2R39C-7RTCD-MDVJX"; $valid = $true}
    if ($osVersion -like "Microsoft Windows 7 Enterprise*") {$productKey = "33PXH-7Y6KF-2VJC9-XBBR8-HVTHH"; $valid = $true}
    if ($valid -eq $null) {$productKey = "Unknown"}

    # Activate Windows
    # If operating system is listed, activate captured product key.
    if ($productKey -ne "Unknown") {
    # Set KMS Server Host ServerName.tld:PortNumber
    cscript /Nologo "$env:SystemRoot\system32\slmgr.vbs" -skms ServerName.tld:PortNumber
    # Assign Product Key
    cscript /Nologo "$env:SystemRoot\system32\slmgr.vbs" -ipk $productKey
    # Activate Windows
    cscript /Nologo "$env:SystemRoot\system32\slmgr.vbs" -ato
    }
}

# Check Windows Activation Status
$actStatus = ((cscript /Nologo "cscript /Nologo "$env:SystemRoot\system32\slmgr.vbs" -xpr) -join '')
# Exit Successfully (0) if activated, or Unsuccessfully (1) if not activated.
if ($actStatus -like "*Volume activation will expire *") {exit(0)} else {exit(1)}
