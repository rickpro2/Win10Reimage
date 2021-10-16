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

$Panel1                          = New-Object system.Windows.Forms.Panel
$Panel1.height                   = 160
$Panel1.width                    = 960
$Panel1.location                 = New-Object System.Drawing.Point(42,152)

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

$ActivateWindows                 = New-Object system.Windows.Forms.Button
$ActivateWindows.text            = "Activate Windows"
$ActivateWindows.width           = 175
$ActivateWindows.height          = 50
$ActivateWindows.location        = New-Object System.Drawing.Point(42,82)
$ActivateWindows.Font            = New-Object System.Drawing.Font('Microsoft Sans Serif',16)

$Customize                       = New-Object system.Windows.Forms.Button
$Customize.text                  = "Customize"
$Customize.width                 = 175
$Customize.height                = 50
$Customize.location              = New-Object System.Drawing.Point(15,20)
$Customize.Font                  = New-Object System.Drawing.Font('Microsoft Sans Serif',16)

$Panel2                          = New-Object system.Windows.Forms.Panel
$Panel2.height                   = 142
$Panel2.width                    = 430
$Panel2.location                 = New-Object System.Drawing.Point(42,337)

$Darkmode                        = New-Object system.Windows.Forms.Button
$Darkmode.text                   = "Dark Mode"
$Darkmode.width                  = 150
$Darkmode.height                 = 30
$Darkmode.location               = New-Object System.Drawing.Point(255,14)
$Darkmode.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$AdminAccount                    = New-Object system.Windows.Forms.Button
$AdminAccount.text               = "Admin Account"
$AdminAccount.width              = 150
$AdminAccount.height             = 30
$AdminAccount.location           = New-Object System.Drawing.Point(255,100)
$AdminAccount.Font               = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Panel3                          = New-Object system.Windows.Forms.Panel
$Panel3.height                   = 142
$Panel3.width                    = 430
$Panel3.location                 = New-Object System.Drawing.Point(512,337)

$DebloatSysprep                  = New-Object system.Windows.Forms.Button
$DebloatSysprep.text             = "DebloatSysprep"
$DebloatSysprep.width            = 175
$DebloatSysprep.height           = 50
$DebloatSysprep.location         = New-Object System.Drawing.Point(15,15)
$DebloatSysprep.Font             = New-Object System.Drawing.Font('Microsoft Sans Serif',16)

$DebloatChris                    = New-Object system.Windows.Forms.Button
$DebloatChris.text               = "DebloatChris"
$DebloatChris.width              = 175
$DebloatChris.height             = 50
$DebloatChris.location           = New-Object System.Drawing.Point(235,15)
$DebloatChris.Font               = New-Object System.Drawing.Font('Microsoft Sans Serif',16)

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
$VLC.location                    = New-Object System.Drawing.Point(515,19)
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
$7Zip.location                   = New-Object System.Drawing.Point(666,19)
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

$Title                           = New-Object system.Windows.Forms.Label
$Title.text                      = "Program Installation"
$Title.AutoSize                  = $true
$Title.width                     = 25
$Title.height                    = 10
$Title.location                  = New-Object System.Drawing.Point(26,21)
$Title.Font                      = New-Object System.Drawing.Font('Microsoft Sans Serif',30,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))

$DebloatUser                     = New-Object system.Windows.Forms.Button
$DebloatUser.text                = "DebloatUser"
$DebloatUser.width               = 175
$DebloatUser.height              = 50
$DebloatUser.location            = New-Object System.Drawing.Point(15,78)
$DebloatUser.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',16)

$Button1                         = New-Object system.Windows.Forms.Button
$Button1.text                    = "Light Mode"
$Button1.width                   = 150
$Button1.height                  = 30
$Button1.location                = New-Object System.Drawing.Point(255,59)
$Button1.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$RMPITlogo                       = New-Object system.Windows.Forms.PictureBox
$RMPITlogo.width                 = 184
$RMPITlogo.height                = 40
$RMPITlogo.location              = New-Object System.Drawing.Point(42,611)
$RMPITlogo.imageLocation         = "https://raw.githubusercontent.com/rickpro2/Win10Reimage/main/RMPIT_logo.png"
$RMPITlogo.SizeMode              = [System.Windows.Forms.PictureBoxSizeMode]::zoom
$urlremovevirus                  = New-Object system.Windows.Forms.Button
$urlremovevirus.text             = "Clean Viruses"
$urlremovevirus.width            = 130
$urlremovevirus.height           = 30
$urlremovevirus.location         = New-Object System.Drawing.Point(61,561)
$urlremovevirus.Font             = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$ResultText                      = New-Object system.Windows.Forms.TextBox
$ResultText.multiline            = $false
$ResultText.width                = 300
$ResultText.height               = 300
$ResultText.location             = New-Object System.Drawing.Point(527,543)
$ResultText.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$InstallAllApps2                 = New-Object system.Windows.Forms.Button
$InstallAllApps2.text            = "Install All Apps"
$InstallAllApps2.width           = 175
$InstallAllApps2.height          = 50
$InstallAllApps2.location        = New-Object System.Drawing.Point(247,82)
$InstallAllApps2.Font            = New-Object System.Drawing.Font('Microsoft Sans Serif',16)

$TestBotton                      = New-Object system.Windows.Forms.Button
$TestBotton.text                 = "Test Button"
$TestBotton.width                = 60
$TestBotton.height               = 30
$TestBotton.location             = New-Object System.Drawing.Point(279,533)
$TestBotton.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Form.controls.AddRange(@($Panel1,$ActivateWindows,$Panel2,$Panel3,$Title,$RMPITlogo,$urlremovevirus,$ResultText,$InstallAllApps2,$TestBotton))
$Panel1.controls.AddRange(@($InstallAllApps,$installchoco,$ChocolateyGUI,$ChocoCleaner,$ChocoUpgrade,$AdobeReader,$GoogleChrome,$BraveBrowser,$VLC,$Zoom,$TeamViewer,$7Zip,$AllDup,$ONO,$notepad,$Audacity,$Rufus))
$Panel2.controls.AddRange(@($Customize,$Darkmode,$AdminAccount,$Button1))
$Panel3.controls.AddRange(@($DebloatSysprep,$DebloatChris,$DebloatUser))


#Write your logic code here





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
 This is a test to see what is in the chocolaty aps
[void]$Form.ShowDialog()
