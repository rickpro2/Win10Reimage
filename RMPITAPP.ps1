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
<# This form was created using POSHGUI.com  a free online gui designer for PowerShell
.NAME
    RMPIT APP
#>

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$Form                            = New-Object system.Windows.Forms.Form
$Form.ClientSize                 = New-Object System.Drawing.Point(1050,700)
$Form.text                       = "Windows 10 Debloat & System Helper By RMPIT LLC"
$Form.TopMost                    = $false

$Title                           = New-Object system.Windows.Forms.Label
$Title.text                      = "Program Installation"
$Title.AutoSize                  = $true
$Title.width                     = 25
$Title.height                    = 10
$Title.location                  = New-Object System.Drawing.Point(26,21)
$Title.Font                      = New-Object System.Drawing.Font('Microsoft Sans Serif',30,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))

$RMPITlogo                       = New-Object system.Windows.Forms.PictureBox
$RMPITlogo.width                 = 184
$RMPITlogo.height                = 40
$RMPITlogo.location              = New-Object System.Drawing.Point(42,611)
$RMPITlogo.imageLocation         = "https://raw.githubusercontent.com/rickpro2/Win10Reimage/main/RMPIT_logo.png"
$RMPITlogo.SizeMode              = [System.Windows.Forms.PictureBoxSizeMode]::zoom
$Panel1                          = New-Object system.Windows.Forms.Panel
$Panel1.height                   = 109
$Panel1.width                    = 987
$Panel1.location                 = New-Object System.Drawing.Point(31,71)

$ActivateWindows                 = New-Object system.Windows.Forms.Button
$ActivateWindows.text            = "Activate Windows"
$ActivateWindows.width           = 175
$ActivateWindows.height          = 50
$ActivateWindows.location        = New-Object System.Drawing.Point(16,19)
$ActivateWindows.Font            = New-Object System.Drawing.Font('Microsoft Sans Serif',16)

$Step1                           = New-Object system.Windows.Forms.Label
$Step1.text                      = "Step #1"
$Step1.AutoSize                  = $true
$Step1.width                     = 25
$Step1.height                    = 10
$Step1.location                  = New-Object System.Drawing.Point(81,78)
$Step1.Font                      = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$ChocolateyAllApps               = New-Object system.Windows.Forms.Button
$ChocolateyAllApps.text          = "Install Chocolatey/Apps"
$ChocolateyAllApps.width         = 175
$ChocolateyAllApps.height        = 50
$ChocolateyAllApps.location      = New-Object System.Drawing.Point(589,19)
$ChocolateyAllApps.Font          = New-Object System.Drawing.Font('Microsoft Sans Serif',9)

$Step2                           = New-Object system.Windows.Forms.Label
$Step2.text                      = "Step #2"
$Step2.AutoSize                  = $true
$Step2.width                     = 25
$Step2.height                    = 10
$Step2.location                  = New-Object System.Drawing.Point(274,78)
$Step2.Font                      = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Panel2                          = New-Object system.Windows.Forms.Panel
$Panel2.height                   = 150
$Panel2.width                    = 300
$Panel2.location                 = New-Object System.Drawing.Point(61,275)

$Button1                         = New-Object system.Windows.Forms.Button
$Button1.text                    = "button"
$Button1.width                   = 130
$Button1.height                  = 30
$Button1.location                = New-Object System.Drawing.Point(151,97)
$Button1.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Customiz                        = New-Object system.Windows.Forms.Button
$Customiz.text                   = "Customize"
$Customiz.width                  = 175
$Customiz.height                 = 50
$Customiz.location               = New-Object System.Drawing.Point(397,19)
$Customiz.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',16)

$Step3                           = New-Object system.Windows.Forms.Label
$Step3.text                      = "Step #3"
$Step3.AutoSize                  = $true
$Step3.width                     = 25
$Step3.height                    = 10
$Step3.location                  = New-Object System.Drawing.Point(467,78)
$Step3.Font                      = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$installchoco                    = New-Object system.Windows.Forms.Button
$installchoco.text               = "Install Chocolatey"
$installchoco.width              = 175
$installchoco.height             = 50
$installchoco.location           = New-Object System.Drawing.Point(11,15)
$installchoco.Font               = New-Object System.Drawing.Font('Microsoft Sans Serif',16)

$Panel3                          = New-Object system.Windows.Forms.Panel
$Panel3.height                   = 150
$Panel3.width                    = 300
$Panel3.location                 = New-Object System.Drawing.Point(394,275)

$Button3                         = New-Object system.Windows.Forms.Button
$Button3.text                    = "button"
$Button3.width                   = 130
$Button3.height                  = 30
$Button3.location                = New-Object System.Drawing.Point(141,33)
$Button3.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Button4                         = New-Object system.Windows.Forms.Button
$Button4.text                    = "Activate Windows"
$Button4.width                   = 175
$Button4.height                  = 50
$Button4.location                = New-Object System.Drawing.Point(6,83)
$Button4.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',16)

$Debloat                         = New-Object system.Windows.Forms.Button
$Debloat.text                    = "Debloat"
$Debloat.width                   = 175
$Debloat.height                  = 50
$Debloat.location                = New-Object System.Drawing.Point(207,19)
$Debloat.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',16)

$Step4                           = New-Object system.Windows.Forms.Label
$Step4.text                      = "Step #4"
$Step4.AutoSize                  = $true
$Step4.width                     = 25
$Step4.height                    = 10
$Step4.location                  = New-Object System.Drawing.Point(658,78)
$Step4.Font                      = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Systeminfo                      = New-Object system.Windows.Forms.Button
$Systeminfo.text                 = "System Info"
$Systeminfo.width                = 130
$Systeminfo.height               = 30
$Systeminfo.location             = New-Object System.Drawing.Point(269,535)
$Systeminfo.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Sysprep                         = New-Object system.Windows.Forms.Button
$Sysprep.text                    = "Sysprep"
$Sysprep.width                   = 175
$Sysprep.height                  = 50
$Sysprep.location                = New-Object System.Drawing.Point(784,19)
$Sysprep.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',16)

$Step5                           = New-Object system.Windows.Forms.Label
$Step5.text                      = "Step #5"
$Step5.AutoSize                  = $true
$Step5.width                     = 25
$Step5.height                    = 10
$Step5.location                  = New-Object System.Drawing.Point(847,78)
$Step5.Font                      = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Form.controls.AddRange(@($Title,$RMPITlogo,$Panel1,$Panel2,$Panel3,$Systeminfo))
$Panel1.controls.AddRange(@($ActivateWindows,$Step1,$ChocolateyAllApps,$Step2,$Customiz,$Step3,$Debloat,$Step4,$Sysprep,$Step5))
$Panel2.controls.AddRange(@($Button1,$installchoco))
$Panel3.controls.AddRange(@($Button3,$Button4))

$ActivateWindows.Add_Click({ Activate })
$ChocolateyAllApps.Add_Click({ Chocolateyapps })
$Customiz.Add_Click({ customize })
$installchoco.Add_Click({ ChocolateyInstall })
$Debloat.Add_Click({ Debloat })
$Systeminfo.Add_Click({ Systeminfo })
$Sysprep.Add_Click({ Sysprep })

#Write your logic code here
function Activate { 
$ProcName = "Activate-Windows.bat"
$WebFile = "https://raw.githubusercontent.com/rickpro2/Win10Reimage/main/Done/$ProcName"
Clear-Host
(New-Object System.Net.WebClient).DownloadFile($WebFile,"$env:APPDATA\$ProcName")
Start-Process ("$env:APPDATA\$ProcName")
}
function Chocolateyapps {  
$ProcName = "Chocolatey-Apps-Install2.bat"
$WebFile = "https://raw.githubusercontent.com/rickpro2/Win10Reimage/main/Done/$ProcName"
Clear-Host
(New-Object System.Net.WebClient).DownloadFile($WebFile,"$env:APPDATA\$ProcName")
Start-Process ("$env:APPDATA\$ProcName")
}
 function customize {  
$ProcName = "Customiz.bat"
$WebFile = "https://raw.githubusercontent.com/rickpro2/Win10Reimage/main/Done/$ProcName"
Clear-Host
(New-Object System.Net.WebClient).DownloadFile($WebFile,"$env:APPDATA\$ProcName")
Start-Process ("$env:APPDATA\$ProcName")
}
function Sysprep { 
$ProcName = "sysprep.bat"
$WebFile = "https://raw.githubusercontent.com/rickpro2/Win10Reimage/main/Done/$ProcName"
Clear-Host
(New-Object System.Net.WebClient).DownloadFile($WebFile,"$env:APPDATA\$ProcName")
Start-Process ("$env:APPDATA\$ProcName")
}
[void]$Form.ShowDialog()
