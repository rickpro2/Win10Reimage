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
    App 1.2
#>

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$RMPITAPP                        = New-Object system.Windows.Forms.Form
$RMPITAPP.ClientSize             = New-Object System.Drawing.Point(1050,650)
$RMPITAPP.text                   = "Windows 10 Debloat & System Helper By RMPIT LLC v.1.2"
$RMPITAPP.TopMost                = $false
$RMPITAPP.icon                   = "https://raw.githubusercontent.com/rickpro2/Win10Reimage/main/RMPIT_logo.png"

$Title                           = New-Object system.Windows.Forms.Label
$Title.text                      = "Program Installation"
$Title.AutoSize                  = $true
$Title.width                     = 25
$Title.height                    = 10
$Title.location                  = New-Object System.Drawing.Point(10,10)
$Title.Font                      = New-Object System.Drawing.Font('Microsoft Sans Serif',30,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold -bor [System.Drawing.FontStyle]::Underline))

$Panel1                          = New-Object system.Windows.Forms.Panel
$Panel1.height                   = 140
$Panel1.width                    = 1030
$Panel1.location                 = New-Object System.Drawing.Point(10,72)

$Panel2                          = New-Object system.Windows.Forms.Panel
$Panel2.height                   = 210
$Panel2.width                    = 300
$Panel2.location                 = New-Object System.Drawing.Point(9,225)

$Panel5                          = New-Object system.Windows.Forms.Panel
$Panel5.height                   = 210
$Panel5.width                    = 300
$Panel5.location                 = New-Object System.Drawing.Point(320,225)

$ActivateWindows1                = New-Object system.Windows.Forms.Button
$ActivateWindows1.text           = "Activate Windows"
$ActivateWindows1.width          = 175
$ActivateWindows1.height         = 50
$ActivateWindows1.location       = New-Object System.Drawing.Point(10,10)
$ActivateWindows1.Font           = New-Object System.Drawing.Font('Microsoft Sans Serif',16)

$ActivateWindows2                = New-Object system.Windows.Forms.Button
$ActivateWindows2.text           = "Activate Windows 2"
$ActivateWindows2.width          = 130
$ActivateWindows2.height         = 30
$ActivateWindows2.location       = New-Object System.Drawing.Point(32,70)
$ActivateWindows2.Font           = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Step1                           = New-Object system.Windows.Forms.Label
$Step1.text                      = "Step #1"
$Step1.AutoSize                  = $true
$Step1.width                     = 25
$Step1.height                    = 10
$Step1.location                  = New-Object System.Drawing.Point(74,115)
$Step1.Font                      = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Debloat                         = New-Object system.Windows.Forms.Button
$Debloat.text                    = "Debloat"
$Debloat.width                   = 175
$Debloat.height                  = 50
$Debloat.location                = New-Object System.Drawing.Point(198,10)
$Debloat.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',16)

$SysprepDebloat                  = New-Object system.Windows.Forms.Button
$SysprepDebloat.text             = "Sysprep Debloat"
$SysprepDebloat.width            = 130
$SysprepDebloat.height           = 30
$SysprepDebloat.location         = New-Object System.Drawing.Point(221,70)
$SysprepDebloat.Font             = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Step2                           = New-Object system.Windows.Forms.Label
$Step2.text                      = "Step #2"
$Step2.AutoSize                  = $true
$Step2.width                     = 25
$Step2.height                    = 10
$Step2.location                  = New-Object System.Drawing.Point(263,115)
$Step2.Font                      = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Customize                       = New-Object system.Windows.Forms.Button
$Customize.text                  = "Customize"
$Customize.width                 = 175
$Customize.height                = 50
$Customize.location              = New-Object System.Drawing.Point(386,10)
$Customize.Font                  = New-Object System.Drawing.Font('Microsoft Sans Serif',16)

$Step3                           = New-Object system.Windows.Forms.Label
$Step3.text                      = "Step #3"
$Step3.AutoSize                  = $true
$Step3.width                     = 25
$Step3.height                    = 10
$Step3.location                  = New-Object System.Drawing.Point(455,115)
$Step3.Font                      = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$ChocolateyAllApps               = New-Object system.Windows.Forms.Button
$ChocolateyAllApps.text          = "Install Chocolatey/Apps"
$ChocolateyAllApps.width         = 175
$ChocolateyAllApps.height        = 50
$ChocolateyAllApps.location      = New-Object System.Drawing.Point(574,10)
$ChocolateyAllApps.Font          = New-Object System.Drawing.Font('Microsoft Sans Serif',11)

$Sysprep                         = New-Object system.Windows.Forms.Button
$Sysprep.text                    = "Sysprep"
$Sysprep.width                   = 175
$Sysprep.height                  = 50
$Sysprep.location                = New-Object System.Drawing.Point(764,10)
$Sysprep.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',16)

$Step4                           = New-Object system.Windows.Forms.Label
$Step4.text                      = "Step #4"
$Step4.AutoSize                  = $true
$Step4.width                     = 25
$Step4.height                    = 10
$Step4.location                  = New-Object System.Drawing.Point(642,115)
$Step4.Font                      = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Step5                           = New-Object system.Windows.Forms.Label
$Step5.text                      = "Step #5"
$Step5.AutoSize                  = $true
$Step5.width                     = 25
$Step5.height                    = 10
$Step5.location                  = New-Object System.Drawing.Point(831,115)
$Step5.Font                      = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Label1                          = New-Object system.Windows.Forms.Label
$Label1.text                     = "Extra Options"
$Label1.AutoSize                 = $true
$Label1.width                    = 25
$Label1.height                   = 10
$Label1.location                 = New-Object System.Drawing.Point(10,10)
$Label1.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',12,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold -bor [System.Drawing.FontStyle]::Underline))

$RMPITlogo                       = New-Object system.Windows.Forms.PictureBox
$RMPITlogo.width                 = 185
$RMPITlogo.height                = 40
$RMPITlogo.location              = New-Object System.Drawing.Point(10,600)
$RMPITlogo.imageLocation         = "https://raw.githubusercontent.com/rickpro2/Win10Reimage/main/RMPIT_logo.png"
$RMPITlogo.SizeMode              = [System.Windows.Forms.PictureBoxSizeMode]::zoom
$Lightmode                       = New-Object system.Windows.Forms.Button
$Lightmode.text                  = "Light Mode"
$Lightmode.width                 = 130
$Lightmode.height                = 30
$Lightmode.location              = New-Object System.Drawing.Point(10,40)
$Lightmode.Font                  = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Darkmode                        = New-Object system.Windows.Forms.Button
$Darkmode.text                   = "Dark Mode"
$Darkmode.width                  = 130
$Darkmode.height                 = 30
$Darkmode.location               = New-Object System.Drawing.Point(150,40)
$Darkmode.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Systeminfo                      = New-Object system.Windows.Forms.Button
$Systeminfo.text                 = "System Info"
$Systeminfo.width                = 130
$Systeminfo.height               = 30
$Systeminfo.location             = New-Object System.Drawing.Point(10,80)
$Systeminfo.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$ActivateOffice                  = New-Object system.Windows.Forms.Button
$ActivateOffice.text             = "Activate Microsoft Office"
$ActivateOffice.width            = 130
$ActivateOffice.height           = 30
$ActivateOffice.location         = New-Object System.Drawing.Point(150,80)
$ActivateOffice.Font             = New-Object System.Drawing.Font('Microsoft Sans Serif',8)

$AdminUser                       = New-Object system.Windows.Forms.Button
$AdminUser.text                  = "Add Admin User"
$AdminUser.width                 = 130
$AdminUser.height                = 30
$AdminUser.location              = New-Object System.Drawing.Point(10,120)
$AdminUser.Font                  = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Button4                         = New-Object system.Windows.Forms.Button
$Button4.text                    = "Button"
$Button4.width                   = 130
$Button4.height                  = 30
$Button4.visible                 = $false
$Button4.enabled                 = $false
$Button4.location                = New-Object System.Drawing.Point(150,120)
$Button4.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Button5                         = New-Object system.Windows.Forms.Button
$Button5.text                    = "Button"
$Button5.width                   = 130
$Button5.height                  = 30
$Button5.visible                 = $false
$Button5.enabled                 = $false
$Button5.location                = New-Object System.Drawing.Point(150,160)
$Button5.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Button6                         = New-Object system.Windows.Forms.Button
$Button6.text                    = "Button"
$Button6.width                   = 130
$Button6.height                  = 30
$Button6.visible                 = $false
$Button6.enabled                 = $false
$Button6.location                = New-Object System.Drawing.Point(10,160)
$Button6.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$ResultText                      = New-Object system.Windows.Forms.TextBox
$ResultText.multiline            = $true
$ResultText.width                = 200
$ResultText.height               = 125
$ResultText.location             = New-Object System.Drawing.Point(681,428)
$ResultText.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Label2                          = New-Object system.Windows.Forms.Label
$Label2.text                     = "Videos"
$Label2.AutoSize                 = $true
$Label2.width                    = 25
$Label2.height                   = 10
$Label2.location                 = New-Object System.Drawing.Point(10,10)
$Label2.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',12,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold -bor [System.Drawing.FontStyle]::Underline))

$CleanViruses                    = New-Object system.Windows.Forms.Button
$CleanViruses.text               = "Remove Virsuses"
$CleanViruses.width              = 130
$CleanViruses.height             = 30
$CleanViruses.visible            = $true
$CleanViruses.enabled            = $true
$CleanViruses.location           = New-Object System.Drawing.Point(10,40)
$CleanViruses.Font               = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$CleanViruses2                   = New-Object system.Windows.Forms.Button
$CleanViruses2.text              = "Remove Virsuses"
$CleanViruses2.width             = 130
$CleanViruses2.height            = 30
$CleanViruses2.visible           = $true
$CleanViruses2.enabled           = $true
$CleanViruses2.location          = New-Object System.Drawing.Point(150,40)
$CleanViruses2.Font              = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$RMPITAPP.controls.AddRange(@($Title,$Panel1,$Panel2,$Panel5,$RMPITlogo,$ResultText))
$Panel1.controls.AddRange(@($ActivateWindows1,$ActivateWindows2,$Step1,$Debloat,$SysprepDebloat,$Step2,$Customize,$Step3,$ChocolateyAllApps,$Sysprep,$Step4,$Step5))
$Panel2.controls.AddRange(@($Label1,$Lightmode,$Darkmode,$Systeminfo,$ActivateOffice,$AdminUser,$Button4,$Button5,$Button6))
$Panel5.controls.AddRange(@($Label2,$CleanViruses,$CleanViruses2))

$Systeminfo.Add_Click({ Systeminfo })
$Lightmode.Add_Click({ Lightmode })
$Darkmode.Add_Click({ Darkmode })
$AdminUser.Add_Click({ AdminUser })
$CleanViruses.Add_Click({ virusesurl })
$Sysprep.Add_Click({ Sysprep })
$CleanViruses2.Add_Click({ virusesurl2 })
$ChocolateyAllApps.Add_Click({ ChocolateyAllApps })


#Write your logic code here
function ChocolateyAllApps { 
Write-Host "Installing Chocolatey"
$ResultText.text = "`r`n" +"`r`n" + "Installing Chocolatey... Please Wait"
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco install chocolatey-core.extension -y
$ResultText.text = "`r`n" + "Finished Installing Chocolatey" + "`r`n" + "`r`n" + "Ready for Next Task"

Write-Host "Installing Chocolatey GUI"
$ResultText.text = "`r`n" +"`r`n" + "Installing Chocolatey GUI... Please Wait"
choco install chocolateygui -y
$ResultText.text = "`r`n" + "Finished Installing Chocolatey GUI" + "`r`n" + "`r`n" + "Ready for Next Task"    
    
    
    
    
    
    
    
    
    
}






















    
    Write-Host "Installing Choco Cleaner (Script + Task)"
    choco install choco-cleaner -y
    Write-Host "Installed Choco Cleaner (Script + Task)"   
    
    Write-Host "Installing Choco Upgrade All (Script + Task)"
    choco install choco-upgrade-all-at --params "'/TIME:07:00 /ABORTTIME:11:50'" -y
    Write-Host "Installed Choco Upgrade All (Script + Task)"   
    
    Write-Host "Installing Adobe Acrobat Reader DC"
    choco install adobereader -y
    Write-Host "Installed Adobe Acrobat Reader DC"   
    
    Write-Host "Installing Google Chrome"
    choco install googlechrome -y
    Write-Host "Installed Google Chrome"   
    
    Write-Host "Installing Brave Browser"
    choco install brave -y
    Write-Host "Installed Brave Browser"   
    
    Write-Host "Installing VLC Media Player"
    choco install vlc -y
    Write-Host "Installed VLC Media Player"  
    
    Write-Host "Installing Zoom Client for Meetings"
    choco install zoom -y
    Write-Host "Installed Zoom Client for Meetings" 
    
    Write-Host "Installing TeamViewer"
    choco install teamviewer -y
    Write-Host "Installed TeamViewer" 
    
    Write-Host "Installing 7-Zip"
    choco install 7zip -y
    Write-Host "Installed 7-Zip" 
    
    Write-Host "Installing iTunes"
    choco install itunes -y
    Write-Host "Installed iTunes" 
    
    Write-Host "Installing AllDup"
    choco install alldup -y
    Write-Host "Installed AllDup" 
    
    Write-Host "Installing O&O Shutup"
    choco install shutup10 -y
    Write-Host "Installed O&O Shutup" 
    
    Write-Host "Installing Notepad++"
    choco install notepadplusplus -y
    Write-Host "Installed Notepad++" 
    
    Write-Host "Installing IPVanish"
    choco install ipvanish -y
    Write-Host "Installed IPVanish" 
    
    Write-Host "Installing Rufus"
    choco install rufus -y
    Write-Host "Installed Rufus" 
    
    Write-Host "Installing Dell Command | Update 4.1.0"
    choco install dellcommandupdate -y
    choco install dellcommandupdate-uwp -y
    Write-Host "Installed Dell Command | Update 4.1.0" 
    
    Write-Host "Installing Audacity"
    choco install audacity -y
    Write-Host "Installed Audacity" 

    Write-Host "Installing Sharex"
    choco install sharex -y
    Write-Host "Installed Sharex"

    Write-Host "Tor Browser Bundle"
    choco install tor-browser -y
    Write-Host "Tor Browser Bundle"

    Write-Host "Spotify"
    choco install spotify -y
    Write-Host "Spotify"

    Write-Host "qBittorrent"
    choco install qBittorrent -y
    Write-Host "qBittorrent"

#Write-Host "Inkscape"
#    choco install inkscape -y
#    Write-Host "Inkscape"

#Write-Host "GIMP"
#    choco install gimp -y
#    Write-Host "GIMP"

#Write-Host "Installing Office 365 Business"
#	choco install office365business -y

#Write-Host "Installing Git"
#	choco install git -y




    Write-Host "Installing Choco Cleaner (Script + Task)"
    choco install choco-cleaner -y
    Write-Host "Installed Choco Cleaner (Script + Task)"  

    Write-Host "Chocolatey GUI 0.19.0"
    choco install chocolateygui -y
    Write-Host "Chocolatey GUI 0.19.0"  

    Write-Host "Installing Choco Upgrade All (Script + Task)"
    choco install choco-upgrade-all-at --params "'/TIME:07:00 /ABORTTIME:11:50'" -y
    Write-Host "Installed Choco Upgrade All (Script + Task)"   

    Write-Host "Installing Adobe Acrobat Reader DC"
    choco install adobereader -y
    Write-Host "Installed Adobe Acrobat Reader DC"
    
    Write-Host "Installing Google Chrome"
    choco install googlechrome -y
    Write-Host "Installed Google Chrome"   
    
    Write-Host "Installing Brave Browser"
    choco install brave -y
    Write-Host "Installed Brave Browser"   
    
    Write-Host "Installing VLC Media Player"
    choco install vlc -y
    Write-Host "Installed VLC Media Player"  
    
    Write-Host "Installing Zoom Client for Meetings"
    choco install zoom -y
    Write-Host "Installed Zoom Client for Meetings" 
    
    Write-Host "Installing TeamViewer"
    choco install teamviewer -y
    Write-Host "Installed TeamViewer"  
    
    Write-Host "Installing 7-Zip"
    choco install 7zip -y
    Write-Host "Installed 7-Zip"  
    
    Write-Host "Installing iTunes"
    choco install itunes -y
    Write-Host "Installed iTunes" 
    
    Write-Host "Installing AllDup"
    choco install alldup -y
    Write-Host "Installed AllDup"    
    
    Write-Host "Installing Notepad++"
    choco install notepadplusplus -y
    Write-Host "Installed Notepad++" 
    
    Write-Host "Installing Dell Command | Update 4.1.0"
    choco install dellcommandupdate -y
    choco install dellcommandupdate-uwp -y
    Write-Host "Installed Dell Command | Update 4.1.0"    
    
    Write-Host "Tor Browser Bundle"
    choco install tor-browser -y
    Write-Host "Tor Browser Bundle" 
    
    Write-Host "Installing O&O Shutup"
    choco install shutup10 -y
    Write-Host "Installed O&O Shutup" 
        
    Write-Host "Installing IPVanish"
    choco install ipvanish -y
    Write-Host "Installed IPVanish" 
    
    Write-Host "Installing Rufus"
    choco install rufus -y
    Write-Host "Installed Rufus" 
        
    Write-Host "Installing Audacity"
    choco install audacity -y
    Write-Host "Installed Audacity" 

    Write-Host "Installing Sharex"
    choco install sharex -y
    Write-Host "Installed Sharex"

    Write-Host "Spotify"
    choco install spotify -y
    Write-Host "Spotify"

    Write-Host "qBittorrent"
    choco install qBittorrent -y
    Write-Host "qBittorrent"

    Write-Host "Apple iCloud 7.21.0.23"
    choco install icloud -y
    Write-Host "Apple iCloud7.21.0.23"

#Write-Host "Inkscape"
#    choco install inkscape -y
#    Write-Host "Inkscape"

#Write-Host "GIMP"
#    choco install gimp -y
#    Write-Host "GIMP"

#Write-Host "Installing Office 365 Business"
#	choco install office365business -y

#Write-Host "Installing Git"
#	choco install git -y
function Darkmode { 
Write-Host "Enabling Dark Mode"
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -Value 0
Write-Host "Enabled Dark Mode"
$ResultText.text = "`r`n" +"`r`n" + "Enabled Dark Mode"
}

function Lightmode { 
Write-Host "Switching Back to Light Mode"
Remove-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme
Write-Host "Switched Back to Light Mode"
$ResultText.text = "`r`n" +"`r`n" + "Enabled Light Mode"    
}

function Systeminfo { 
$ProcName = "system info.bat"
$WebFile = "https://raw.githubusercontent.com/rickpro2/Win10Reimage/main/Done/$ProcName"
Clear-Host
(New-Object System.Net.WebClient).DownloadFile($WebFile,"$env:APPDATA\$ProcName")
Start-Process ("$env:APPDATA\$ProcName")
}

function AdminUser { 
    function Create-NewLocalAdmin {
    [CmdletBinding()]
    param (
        [string] $NewLocalAdmin,
        [securestring] $Password
    )    
    begin {
    }    
    process {
        New-LocalUser "$NewLocalAdmin" -Password $Password -FullName "$NewLocalAdmin" -Description "Local Admin"
        Write-Verbose "$NewLocalAdmin local user crated"
        Add-LocalGroupMember -Group "Administrators" -Member "$NewLocalAdmin"
        Write-Verbose "$NewLocalAdmin added to the local administrator group"
    }    
    end {
    }
}
$NewLocalAdmin = Read-Host "New local admin username:"
$Password = Read-Host -AsSecureString "Create a password for $NewLocalAdmin"
Create-NewLocalAdmin -NewLocalAdmin $NewLocalAdmin -Password $Password -Verbose
$ResultText.text = "`r`n" +"`r`n" + "New Local Admin added to the local administrator group"
}
function Sysprep { 
$ProcName = "sysprep.bat"
$WebFile = "https://raw.githubusercontent.com/rickpro2/Win10Reimage/main/Done/$ProcName"
Clear-Host
(New-Object System.Net.WebClient).DownloadFile($WebFile,"$env:APPDATA\$ProcName")
Start-Process ("$env:APPDATA\$ProcName")
}

function virusesurl { 
Start-Process "https://youtu.be/CHtZ9-9ch2w"
}

function virusesurl2 { 
Start-Process "https://youtu.be/BsnHFZun0oU"    
}
[void]$RMPITAPP.ShowDialog()
