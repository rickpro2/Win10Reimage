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

$ChocolateyGUI                   = New-Object system.Windows.Forms.Button
$ChocolateyGUI.text              = "Chocolatey GUI"
$ChocolateyGUI.width             = 130
$ChocolateyGUI.height            = 30
$ChocolateyGUI.location          = New-Object System.Drawing.Point(215,19)
$ChocolateyGUI.Font              = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$ChocoCleaner                    = New-Object system.Windows.Forms.Button
$ChocoCleaner.text               = "Choco Cleaner"
$ChocoCleaner.width              = 130
$ChocoCleaner.height             = 30
$ChocoCleaner.location           = New-Object System.Drawing.Point(215,68)
$ChocoCleaner.Font               = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$ChocoUpgrade                    = New-Object system.Windows.Forms.Button
$ChocoUpgrade.text               = "Choco Upgrade"
$ChocoUpgrade.width              = 130
$ChocoUpgrade.height             = 30
$ChocoUpgrade.location           = New-Object System.Drawing.Point(215,113)
$ChocoUpgrade.Font               = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

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

$AdobeReader                     = New-Object system.Windows.Forms.Button
$AdobeReader.text                = "Adobe Reader"
$AdobeReader.width               = 130
$AdobeReader.height              = 30
$AdobeReader.location            = New-Object System.Drawing.Point(365,19)
$AdobeReader.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$GoogleChrome                    = New-Object system.Windows.Forms.Button
$GoogleChrome.text               = "Google Chrome"
$GoogleChrome.width              = 130
$GoogleChrome.height             = 30
$GoogleChrome.location           = New-Object System.Drawing.Point(365,68)
$GoogleChrome.Font               = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$BraveBrowser                    = New-Object system.Windows.Forms.Button
$BraveBrowser.text               = "Brave Browser"
$BraveBrowser.width              = 130
$BraveBrowser.height             = 30
$BraveBrowser.location           = New-Object System.Drawing.Point(365,113)
$BraveBrowser.Font               = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$VLC                             = New-Object system.Windows.Forms.Button
$VLC.text                        = "VLC Media Player"
$VLC.width                       = 130
$VLC.height                      = 30
$VLC.location                    = New-Object System.Drawing.Point(515,20)
$VLC.Font                        = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Zoom                            = New-Object system.Windows.Forms.Button
$Zoom.text                       = "Zoom"
$Zoom.width                      = 130
$Zoom.height                     = 30
$Zoom.location                   = New-Object System.Drawing.Point(515,68)
$Zoom.Font                       = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$TeamViewer                      = New-Object system.Windows.Forms.Button
$TeamViewer.text                 = "TeamViewer"
$TeamViewer.width                = 130
$TeamViewer.height               = 30
$TeamViewer.location             = New-Object System.Drawing.Point(515,113)
$TeamViewer.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$7Zip                            = New-Object system.Windows.Forms.Button
$7Zip.text                       = "7-Zip"
$7Zip.width                      = 130
$7Zip.height                     = 30
$7Zip.location                   = New-Object System.Drawing.Point(666,20)
$7Zip.Font                       = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$AllDup                          = New-Object system.Windows.Forms.Button
$AllDup.text                     = "AllDup"
$AllDup.width                    = 130
$AllDup.height                   = 30
$AllDup.location                 = New-Object System.Drawing.Point(666,68)
$AllDup.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$ONO                             = New-Object system.Windows.Forms.Button
$ONO.text                        = "O&O Shutup"
$ONO.width                       = 130
$ONO.height                      = 30
$ONO.location                    = New-Object System.Drawing.Point(666,113)
$ONO.Font                        = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$notepad                         = New-Object system.Windows.Forms.Button
$notepad.text                    = "Notepad++"
$notepad.width                   = 130
$notepad.height                  = 30
$notepad.location                = New-Object System.Drawing.Point(815,19)
$notepad.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Audacity                        = New-Object system.Windows.Forms.Button
$Audacity.text                   = "Audacity"
$Audacity.width                  = 130
$Audacity.height                 = 30
$Audacity.location               = New-Object System.Drawing.Point(815,68)
$Audacity.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Rufus                           = New-Object system.Windows.Forms.Button
$Rufus.text                      = "Rufus"
$Rufus.width                     = 130
$Rufus.height                    = 30
$Rufus.location                  = New-Object System.Drawing.Point(815,113)
$Rufus.Font                      = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Form.controls.AddRange(@($Panel1,$Activate,$Panel2,$Panel4))
$Panel1.controls.AddRange(@($InstallAllApps,$installchoco,$ChocolateyGUI,$ChocoCleaner,$ChocoUpgrade,$AdobeReader,$GoogleChrome,$BraveBrowser,$VLC,$Zoom,$TeamViewer,$7Zip,$AllDup,$ONO,$notepad,$Audacity,$Rufus))
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
$ChocolateyGUI.Add_Click({  })
$ChocoCleaner.Add_Click({  })
$ChocoUpgrade.Add_Click({  })
$AdobeReader.Add_Click({  })
$GoogleChrome.Add_Click({  })
$BraveBrowser.Add_Click({  })
$VLC.Add_Click({  })
$Zoom.Add_Click({  })
$TeamViewer.Add_Click({  })
$7Zip.Add_Click({  })
$AllDup.Add_Click({  })
$ONO.Add_Click({  })
$notepad.Add_Click({  })
$Audacity.Add_Click({  })
$Rufus.Add_Click({  })


[void]$Form.ShowDialog()
