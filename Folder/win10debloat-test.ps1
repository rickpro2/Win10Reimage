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

$Button1                         = New-Object system.Windows.Forms.Button
$Button1.text                    = "button"
$Button1.width                   = 150
$Button1.height                  = 30
$Button1.location                = New-Object System.Drawing.Point(250,19)
$Button1.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Button2                         = New-Object system.Windows.Forms.Button
$Button2.text                    = "button"
$Button2.width                   = 150
$Button2.height                  = 30
$Button2.location                = New-Object System.Drawing.Point(250,68)
$Button2.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Button3                         = New-Object system.Windows.Forms.Button
$Button3.text                    = "button"
$Button3.width                   = 150
$Button3.height                  = 30
$Button3.location                = New-Object System.Drawing.Point(250,113)
$Button3.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Activate                        = New-Object system.Windows.Forms.Button
$Activate.text                   = "Active Windows 10"
$Activate.width                  = 175
$Activate.height                 = 50
$Activate.location               = New-Object System.Drawing.Point(24,87)
$Activate.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',16)

$Customize                       = New-Object system.Windows.Forms.Button
$Customize.text                  = "Customize"
$Customize.width                 = 175
$Customize.height                = 50
$Customize.location              = New-Object System.Drawing.Point(15,20)
$Customize.Font                  = New-Object System.Drawing.Font('Microsoft Sans Serif',16)

$Panel2                          = New-Object system.Windows.Forms.Panel
$Panel2.height                   = 160
$Panel2.width                    = 457
$Panel2.location                 = New-Object System.Drawing.Point(11,360)

$Darkmode                        = New-Object system.Windows.Forms.Button
$Darkmode.text                   = "Dark Mode"
$Darkmode.width                  = 150
$Darkmode.height                 = 30
$Darkmode.location               = New-Object System.Drawing.Point(255,24)
$Darkmode.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Lightmode                       = New-Object system.Windows.Forms.Button
$Lightmode.text                  = "Light Mode"
$Lightmode.width                 = 150
$Lightmode.height                = 30
$Lightmode.location              = New-Object System.Drawing.Point(254,71)
$Lightmode.Font                  = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Panel4                          = New-Object system.Windows.Forms.Panel
$Panel4.height                   = 160
$Panel4.width                    = 457
$Panel4.location                 = New-Object System.Drawing.Point(515,359)

$Debloat1                        = New-Object system.Windows.Forms.Button
$Debloat1.text                   = "Debloat #1"
$Debloat1.width                  = 175
$Debloat1.height                 = 50
$Debloat1.location               = New-Object System.Drawing.Point(35,24)
$Debloat1.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',16)

$Debloat2                        = New-Object system.Windows.Forms.Button
$Debloat2.text                   = "Debloat #2"
$Debloat2.width                  = 175
$Debloat2.height                 = 50
$Debloat2.location               = New-Object System.Drawing.Point(35,90)
$Debloat2.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',16)

$Form.controls.AddRange(@($Panel1,$Activate,$Panel2,$Panel4))
$Panel1.controls.AddRange(@($InstallAllApps,$installchoco,$Button1,$Button2,$Button3))
$Panel2.controls.AddRange(@($Customize,$Darkmode,$Lightmode))
$Panel4.controls.AddRange(@($Debloat1,$Debloat2))

$InstallAllApps.Add_Click({  })
$installchoco.Add_Click({  })
$Activate.Add_Click({  })
$Customize.Add_Click({  })
$Darkmode.Add_Click({  })
$Lightmode.Add_Click({  })
$Debloat1.Add_Click({  })
$Debloat2.Add_Click({  })



[void]$Form.ShowDialog()
