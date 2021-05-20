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
$Panel1.height                   = 156
$Panel1.width                    = 1032
$Panel1.location                 = New-Object System.Drawing.Point(9,90)

$Label1                          = New-Object system.Windows.Forms.Label
$Label1.text                     = "Program Installation"
$Label1.AutoSize                 = $true
$Label1.width                    = 25
$Label1.height                   = 10
$Label1.location                 = New-Object System.Drawing.Point(10,30)
$Label1.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',30)

$installchoco                    = New-Object system.Windows.Forms.Button
$installchoco.text               = "Install Chocolatey"
$installchoco.width              = 200
$installchoco.height             = 115
$installchoco.location           = New-Object System.Drawing.Point(16,19)
$installchoco.Font               = New-Object System.Drawing.Font('Microsoft Sans Serif',16)

$brave                           = New-Object system.Windows.Forms.Button
$brave.text                      = "Brave Browser"
$brave.width                     = 150
$brave.height                    = 30
$brave.location                  = New-Object System.Drawing.Point(250,19)
$brave.Font                      = New-Object System.Drawing.Font('Microsoft Sans Serif',12)



[void]$Form.ShowDialog()
