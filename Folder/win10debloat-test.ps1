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

$Form                            = New-Object system.Windows.Forms.Form
$Form.ClientSize                 = New-Object System.Drawing.Point(1050,700)
$Form.text                       = "Form"
$Form.TopMost                    = $false

$Panel1                          = New-Object system.Windows.Forms.Panel
$Panel1.height                   = 160
$Panel1.width                    = 1032
$Panel1.location                 = New-Object System.Drawing.Point(11,171)

$Panel2                          = New-Object system.Windows.Forms.Panel
$Panel2.height                   = 160
$Panel2.width                    = 457
$Panel2.location                 = New-Object System.Drawing.Point(11,360)

$Panel4                          = New-Object system.Windows.Forms.Panel
$Panel4.height                   = 160
$Panel4.width                    = 457
$Panel4.location                 = New-Object System.Drawing.Point(515,359)

$Activate                        = New-Object system.Windows.Forms.Button
$Activate.text                   = "Active Windows 10"
$Activate.width                  = 175
$Activate.height                 = 50
$Activate.location               = New-Object System.Drawing.Point(24,87)
$Activate.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',16)

$InstallAllApps                  = New-Object system.Windows.Forms.Button
$InstallAllApps.text             = "Install All Apps"
$InstallAllApps.width            = 175
$InstallAllApps.height           = 50
$InstallAllApps.location         = New-Object System.Drawing.Point(16,19)
$InstallAllApps.Font             = New-Object System.Drawing.Font('Microsoft Sans Serif',16)

$installchoco                    = New-Object system.Windows.Forms.Button
$installchoco.text               = "Install Chocolatey"
$installchoco.width              = 175
$installchoco.height             = 50
$installchoco.location           = New-Object System.Drawing.Point(16,90)
$installchoco.Font               = New-Object System.Drawing.Font('Microsoft Sans Serif',16)

[void]$Form.ShowDialog()
