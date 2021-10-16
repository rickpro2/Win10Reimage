<# This form was created using POSHGUI.com  a free online gui designer for PowerShell
.NAME
    win10-Master
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
$TestBotton.location             = New-Object System.Drawing.Point(452,623)
$TestBotton.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Form.controls.AddRange(@($Panel1,$ActivateWindows,$Panel2,$Panel3,$Title,$RMPITlogo,$urlremovevirus,$ResultText,$InstallAllApps2,$TestBotton))
$Panel1.controls.AddRange(@($InstallAllApps,$installchoco,$ChocolateyGUI,$ChocoCleaner,$ChocoUpgrade,$AdobeReader,$GoogleChrome,$BraveBrowser,$VLC,$Zoom,$TeamViewer,$7Zip,$AllDup,$ONO,$notepad,$Audacity,$Rufus))
$Panel2.controls.AddRange(@($Customize,$Darkmode,$AdminAccount,$Button1))
$Panel3.controls.AddRange(@($DebloatSysprep,$DebloatChris,$DebloatUser))

$ActivateWindows.Add_Click({ ActivateWindows })
$InstallAllApps2.Add_Click({ AllAppsInstall })
$InstallAllApps.Add_Click({ AllAppsInstall })
$installchoco.Add_Click({ ChocolateyInstall })
$DebloatUser.Add_Click({ DebloaterGUI })
$DebloatSysprep.Add_Click({ DebloatSysprep })
$urlremovevirus.Add_Click({ VirusURL })
$Customize.Add_Click({ Customize })
$TestBotton.Add_Click({ buttontest })

function buttontest { 
$ProcName = "testchocoinstall.bat"
$WebFile = "https://raw.githubusercontent.com/rickpro2/Win10Reimage/main/gothrough/$ProcName"
Clear-Host
(New-Object System.Net.WebClient).DownloadFile($WebFile,"$env:APPDATA\$ProcName")
Start-Process ("$env:APPDATA\$ProcName")
}


function Customize { 
$ProcName = "image.bat"
$WebFile = "https://raw.githubusercontent.com/rickpro2/Win10Reimage/main/Done/$ProcName"
Clear-Host
(New-Object System.Net.WebClient).DownloadFile($WebFile,"$env:APPDATA\$ProcName")
Start-Process ("$env:APPDATA\$ProcName")
}


function VirusURL { 
        Start-Process "https://youtu.be/CHtZ9-9ch2w"
}


function DebloatSysprep { 
    #This function finds any AppX/AppXProvisioned package and uninstalls it, except for Freshpaint, Windows Calculator, Windows Store, and Windows Photos.
#Also, to note - This does NOT remove essential system services/software/etc such as .NET framework installations, Cortana, Edge, etc.

#This is the switch parameter for running this script as a 'silent' script, for use in MDT images or any type of mass deployment without user interaction.

param (
  [switch]$Debloat, [switch]$SysPrep
)

Function Begin-SysPrep {

    param([switch]$SysPrep)
        Write-Verbose -Message ('Starting Sysprep Fixes')
 
        # Disable Windows Store Automatic Updates
       <# Write-Verbose -Message "Adding Registry key to Disable Windows Store Automatic Updates"
        $registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\WindowsStore"
        If (!(Test-Path $registryPath)) {
            Mkdir $registryPath -ErrorAction SilentlyContinue
            New-ItemProperty $registryPath -Name AutoDownload -Value 2 
        }
        Else {
            Set-ItemProperty $registryPath -Name AutoDownload -Value 2 
        }
        #Stop WindowsStore Installer Service and set to Disabled
        Write-Verbose -Message ('Stopping InstallService')
        Stop-Service InstallService 
        #>
 } 

#Creates a PSDrive to be able to access the 'HKCR' tree
New-PSDrive -Name HKCR -PSProvider Registry -Root HKEY_CLASSES_ROOT
Function Start-Debloat {
    
    param([switch]$Debloat)

    #Removes AppxPackages
    #Credit to Reddit user /u/GavinEke for a modified version of my whitelist code
    [regex]$WhitelistedApps = 'Microsoft.ScreenSketch|Microsoft.Paint3D|Microsoft.WindowsCalculator|Microsoft.WindowsStore|Microsoft.Windows.Photos|CanonicalGroupLimited.UbuntuonWindows|`
    Microsoft.MicrosoftStickyNotes|Microsoft.MSPaint|Microsoft.WindowsCamera|.NET|Framework|Microsoft.HEIFImageExtension|Microsoft.ScreenSketch|Microsoft.StorePurchaseApp|`
    Microsoft.VP9VideoExtensions|Microsoft.WebMediaExtensions|Microsoft.WebpImageExtension|Microsoft.DesktopAppInstaller'
    Get-AppxPackage -AllUsers | Where-Object {$_.Name -NotMatch $WhitelistedApps} | Remove-AppxPackage -ErrorAction SilentlyContinue
    # Run this again to avoid error on 1803 or having to reboot.
    Get-AppxPackage -AllUsers | Where-Object {$_.Name -NotMatch $WhitelistedApps} | Remove-AppxPackage -ErrorAction SilentlyContinue
    $AppxRemoval = Get-AppxProvisionedPackage -Online | Where-Object {$_.PackageName -NotMatch $WhitelistedApps} 
    ForEach ( $App in $AppxRemoval) {
    
        Remove-AppxProvisionedPackage -Online -PackageName $App.PackageName 
        
        }
}

Function Remove-Keys {
        
    Param([switch]$Debloat)    
    
    #These are the registry keys that it will delete.
        
    $Keys = @(
        
        #Remove Background Tasks
        "HKCR:\Extensions\ContractId\Windows.BackgroundTasks\PackageId\46928bounde.EclipseManager_2.2.4.51_neutral__a5h4egax66k6y"
        "HKCR:\Extensions\ContractId\Windows.BackgroundTasks\PackageId\ActiproSoftwareLLC.562882FEEB491_2.6.18.18_neutral__24pqs290vpjk0"
        "HKCR:\Extensions\ContractId\Windows.BackgroundTasks\PackageId\Microsoft.MicrosoftOfficeHub_17.7909.7600.0_x64__8wekyb3d8bbwe"
        "HKCR:\Extensions\ContractId\Windows.BackgroundTasks\PackageId\Microsoft.PPIProjection_10.0.15063.0_neutral_neutral_cw5n1h2txyewy"
        "HKCR:\Extensions\ContractId\Windows.BackgroundTasks\PackageId\Microsoft.XboxGameCallableUI_1000.15063.0.0_neutral_neutral_cw5n1h2txyewy"
        "HKCR:\Extensions\ContractId\Windows.BackgroundTasks\PackageId\Microsoft.XboxGameCallableUI_1000.16299.15.0_neutral_neutral_cw5n1h2txyewy"
        
        #Windows File
        "HKCR:\Extensions\ContractId\Windows.File\PackageId\ActiproSoftwareLLC.562882FEEB491_2.6.18.18_neutral__24pqs290vpjk0"
        
        #Registry keys to delete if they aren't uninstalled by RemoveAppXPackage/RemoveAppXProvisionedPackage
        "HKCR:\Extensions\ContractId\Windows.Launch\PackageId\46928bounde.EclipseManager_2.2.4.51_neutral__a5h4egax66k6y"
        "HKCR:\Extensions\ContractId\Windows.Launch\PackageId\ActiproSoftwareLLC.562882FEEB491_2.6.18.18_neutral__24pqs290vpjk0"
        "HKCR:\Extensions\ContractId\Windows.Launch\PackageId\Microsoft.PPIProjection_10.0.15063.0_neutral_neutral_cw5n1h2txyewy"
        "HKCR:\Extensions\ContractId\Windows.Launch\PackageId\Microsoft.XboxGameCallableUI_1000.15063.0.0_neutral_neutral_cw5n1h2txyewy"
        "HKCR:\Extensions\ContractId\Windows.Launch\PackageId\Microsoft.XboxGameCallableUI_1000.16299.15.0_neutral_neutral_cw5n1h2txyewy"
        
        #Scheduled Tasks to delete
        "HKCR:\Extensions\ContractId\Windows.PreInstalledConfigTask\PackageId\Microsoft.MicrosoftOfficeHub_17.7909.7600.0_x64__8wekyb3d8bbwe"
        
        #Windows Protocol Keys
        "HKCR:\Extensions\ContractId\Windows.Protocol\PackageId\ActiproSoftwareLLC.562882FEEB491_2.6.18.18_neutral__24pqs290vpjk0"
        "HKCR:\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.PPIProjection_10.0.15063.0_neutral_neutral_cw5n1h2txyewy"
        "HKCR:\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.XboxGameCallableUI_1000.15063.0.0_neutral_neutral_cw5n1h2txyewy"
        "HKCR:\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.XboxGameCallableUI_1000.16299.15.0_neutral_neutral_cw5n1h2txyewy"
           
        #Windows Share Target
        "HKCR:\Extensions\ContractId\Windows.ShareTarget\PackageId\ActiproSoftwareLLC.562882FEEB491_2.6.18.18_neutral__24pqs290vpjk0"
    )
    
    #This writes the output of each key it is removing and also removes the keys listed above.
    ForEach ($Key in $Keys) {
        Write-Output "Removing $Key from registry"
        Remove-Item $Key -Recurse -ErrorAction SilentlyContinue
    }
}
        
Function Protect-Privacy {
    
    Param([switch]$Debloat)    

    #Creates a PSDrive to be able to access the 'HKCR' tree
    New-PSDrive -Name HKCR -PSProvider Registry -Root HKEY_CLASSES_ROOT
        
    #Disables Windows Feedback Experience
    Write-Output "Disabling Windows Feedback Experience program"
    $Advertising = 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo'
    If (Test-Path $Advertising) {
        Set-ItemProperty $Advertising -Name Enabled -Value 0 -Verbose
    }
        
    #Stops Cortana from being used as part of your Windows Search Function
    Write-Output "Stopping Cortana from being used as part of your Windows Search Function"
    $Search = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search'
    If (Test-Path $Search) {
        Set-ItemProperty $Search -Name AllowCortana -Value 0 -Verbose
    }
        
    #Stops the Windows Feedback Experience from sending anonymous data
    Write-Output "Stopping the Windows Feedback Experience program"
    $Period1 = 'HKCU:\Software\Microsoft\Siuf'
    $Period2 = 'HKCU:\Software\Microsoft\Siuf\Rules'
    $Period3 = 'HKCU:\Software\Microsoft\Siuf\Rules\PeriodInNanoSeconds'
    If (!(Test-Path $Period3)) { 
        mkdir $Period1 -ErrorAction SilentlyContinue
        mkdir $Period2 -ErrorAction SilentlyContinue
        mkdir $Period3 -ErrorAction SilentlyContinue
        New-ItemProperty $Period3 -Name PeriodInNanoSeconds -Value 0 -Verbose -ErrorAction SilentlyContinue
    }
               
    Write-Output "Adding Registry key to prevent bloatware apps from returning"
    #Prevents bloatware applications from returning
    $registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent"
    If (!(Test-Path $registryPath)) {
        Mkdir $registryPath -ErrorAction SilentlyContinue
        New-ItemProperty $registryPath -Name DisableWindowsConsumerFeatures -Value 1 -Verbose -ErrorAction SilentlyContinue
    }          
    
    Write-Output "Setting Mixed Reality Portal value to 0 so that you can uninstall it in Settings"
    $Holo = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Holographic'    
    If (Test-Path $Holo) {
        Set-ItemProperty $Holo -Name FirstRunSucceeded -Value 0 -Verbose
    }
    
    #Disables live tiles
    Write-Output "Disabling live tiles"
    $Live = 'HKCU:\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\PushNotifications'    
    If (!(Test-Path $Live)) {
        mkdir $Live -ErrorAction SilentlyContinue     
        New-ItemProperty $Live -Name NoTileApplicationNotification -Value 1 -Verbose
    }
    
    #Turns off Data Collection via the AllowTelemtry key by changing it to 0
    Write-Output "Turning off Data Collection"
    $DataCollection = 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection'    
    If (Test-Path $DataCollection) {
        Set-ItemProperty $DataCollection -Name AllowTelemetry -Value 0 -Verbose
    }
    
    #Disables People icon on Taskbar
    Write-Output "Disabling People icon on Taskbar"
    $People = 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People'
    If (Test-Path $People) {
        Set-ItemProperty $People -Name PeopleBand -Value 0 -Verbose
    }

    #Disables suggestions on start menu
    Write-Output "Disabling suggestions on the Start Menu"
    $Suggestions = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager'    
    If (Test-Path $Suggestions) {
        Set-ItemProperty $Suggestions -Name SystemPaneSuggestionsEnabled -Value 0 -Verbose
    }
    
    
     Write-Output "Removing CloudStore from registry if it exists"
     $CloudStore = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\CloudStore'
     If (Test-Path $CloudStore) {
     Stop-Process -Name explorer -Force
     Remove-Item $CloudStore -Recurse -Force
     Start-Process Explorer.exe -Wait
    }

    #Loads the registry keys/values below into the NTUSER.DAT file which prevents the apps from redownloading. Credit to a60wattfish
    reg load HKU\Default_User C:\Users\Default\NTUSER.DAT
    Set-ItemProperty -Path Registry::HKU\Default_User\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager -Name SystemPaneSuggestionsEnabled -Value 0
    Set-ItemProperty -Path Registry::HKU\Default_User\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager -Name PreInstalledAppsEnabled -Value 0
    Set-ItemProperty -Path Registry::HKU\Default_User\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager -Name OemPreInstalledAppsEnabled -Value 0
    reg unload HKU\Default_User
    
    #Disables scheduled tasks that are considered unnecessary 
    Write-Output "Disabling scheduled tasks"
    #Get-ScheduledTask -TaskName XblGameSaveTaskLogon | Disable-ScheduledTask -ErrorAction SilentlyContinue
    Get-ScheduledTask -TaskName XblGameSaveTask | Disable-ScheduledTask -ErrorAction SilentlyContinue
    Get-ScheduledTask -TaskName Consolidator | Disable-ScheduledTask -ErrorAction SilentlyContinue
    Get-ScheduledTask -TaskName UsbCeip | Disable-ScheduledTask -ErrorAction SilentlyContinue
    Get-ScheduledTask -TaskName DmClient | Disable-ScheduledTask -ErrorAction SilentlyContinue
    Get-ScheduledTask -TaskName DmClientOnScenarioDownload | Disable-ScheduledTask -ErrorAction SilentlyContinue
}

#This includes fixes by xsisbest
Function FixWhitelistedApps {
    
    Param([switch]$Debloat)
    
    If(!(Get-AppxPackage -AllUsers | Select Microsoft.Paint3D, Microsoft.MSPaint, Microsoft.WindowsCalculator, Microsoft.WindowsStore, Microsoft.MicrosoftStickyNotes, Microsoft.WindowsSoundRecorder, Microsoft.Windows.Photos)) {
    
    #Credit to abulgatz for the 4 lines of code
    Get-AppxPackage -allusers Microsoft.Paint3D | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"}
    Get-AppxPackage -allusers Microsoft.MSPaint | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"}
    Get-AppxPackage -allusers Microsoft.WindowsCalculator | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"}
    Get-AppxPackage -allusers Microsoft.WindowsStore | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"}
    Get-AppxPackage -allusers Microsoft.MicrosoftStickyNotes | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"}
    Get-AppxPackage -allusers Microsoft.WindowsSoundRecorder | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"}
    Get-AppxPackage -allusers Microsoft.Windows.Photos | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"} }
}

Function CheckDMWService {

  Param([switch]$Debloat)
  
If (Get-Service -Name dmwappushservice | Where-Object {$_.StartType -eq "Disabled"}) {
    Set-Service -Name dmwappushservice -StartupType Automatic}

If(Get-Service -Name dmwappushservice | Where-Object {$_.Status -eq "Stopped"}) {
   Start-Service -Name dmwappushservice} 
  }

Function CheckInstallService {
  Param([switch]$Debloat)
          If (Get-Service -Name InstallService | Where-Object {$_.Status -eq "Stopped"}) {  
            Start-Service -Name InstallService
            Set-Service -Name InstallService -StartupType Automatic 
            }
        }

Write-Output "Initiating Sysprep"
Begin-SysPrep
Write-Output "Removing bloatware apps."
Start-Debloat
Write-Output "Removing leftover bloatware registry keys."
Remove-Keys
Write-Output "Checking to see if any Whitelisted Apps were removed, and if so re-adding them."
FixWhitelistedApps
Write-Output "Stopping telemetry, disabling unneccessary scheduled tasks, and preventing bloatware from returning."
Protect-Privacy
#Write-Output "Stopping Edge from taking over as the default PDF Viewer."
#Stop-EdgePDF
CheckDMWService
CheckInstallService
Write-Output "Finished all tasks."
}


function DebloaterGUI { }


function ChocolateyInstall {
    Write-Host "Installing Chocolatey"
	Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
	choco install chocolatey-core.extension -y
}


function AllAppsInstall {
Write-Host "Installing Chocolatey"
	Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
	choco install chocolatey-core.extension -y

    Write-Host "Installing Chocolatey GUI"
    choco install chocolateygui -y
    Write-Host "Installed Chocolatey GUI"
    
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
}


function ActivateWindows {
$ProcName = "Activate-Windows.bat"
$WebFile = "https://raw.githubusercontent.com/rickpro2/Win10Reimage/main/Done/$ProcName"
Clear-Host
(New-Object System.Net.WebClient).DownloadFile($WebFile,"$env:APPDATA\$ProcName")
Start-Process ("$env:APPDATA\$ProcName")}
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
[void]$Form.ShowDialog()
