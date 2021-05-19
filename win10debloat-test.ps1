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

$installchoco                    = New-Object system.Windows.Forms.Button
$installchoco.text               = "Install Chocolatey"
$installchoco.width              = 200
$installchoco.height             = 115
$installchoco.location           = New-Object System.Drawing.Point(100,19)
$installchoco.Font               = New-Object System.Drawing.Font('Microsoft Sans Serif',16)






$Form.controls.AddRange(@($Panel1,$Label1,$Panel2,$Label3,$Panel3,$Label4,$Label15,$Panel4,$Label20,$Label21,$Label23,$PictureBox1))
$Panel1.controls.AddRange(@($installchoco,$allapps,$firefox,$7zip,$irfanview,$adobereader,$notepad,$gchrome,$mpc,$vlc,$powertoys,$winterminal,$vscode,$Label2))
$Panel2.controls.AddRange(@($essentialtweaks,$backgroundapps,$cortana,$windowssearch,$actioncenter,$darkmode,$visualfx,$onedrive,$Label22,$lightmode))
$Panel3.controls.AddRange(@($securitylow,$securityhigh,$Label5,$Label6,$Label7,$Label8,$Label9,$Label10,$Label11,$Label12,$Label13))
$Panel4.controls.AddRange(@($defaultwindowsupdate,$securitywindowsupdate,$Label16,$Label17,$Label18,$Label19))


$installchoco.Add_Click({
    Write-Host "Installing Chocolatey"
    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
    choco install chocolatey-core.extension -y
    Write-Host "Installed Chocolatey"
})

$allapps.Add_Click({
Write-Host "Installing Chocolatey GUI"
	choco install chocolateygui -y
	    Write-Host "Installed Firefox"
	
Write-Host "Choco Cleaner (Script + Task)"
	choco install choco-cleaner -y
		
Write-Host "Choco Upgrade All (Script + Task)"
	choco install choco-upgrade-all-at --params "'/TIME:07:00 /ABORTTIME:11:00'" -y

Write-Host "Installing Adobe Acrobat Reader DC"
	choco install adobereader -y
	
Write-Host "Installing Google Chrome"
	choco install googlechrome -y
	
Write-Host "Installing Brave Browser"
	choco install brave -y
	
Write-Host "Installing VLC media player"
	choco install vlc -y
	
Write-Host "Installing Zoom Client for Meetings"
	choco install zoom -y
	
Write-Host "Installing TeamViewer"
	choco install teamviewer -y
	
Write-Host "Installing 7-Zip"
	choco install 7zip -y

Write-Host "Installing iTunes"
	choco install itunes -y

Write-Host "Installing AllDup"
	choco install alldup -y
	
Write-Host "Installing O&O Shutup"
	choco install shutup10 -y

Write-Host "Installing Adobe Creative Cloud Client"
	choco install adobe-creative-cloud -y
	
Write-Host "Installing Notepad++"
	choco install notepadplusplus -y
		
Write-Host "Installing IPVanish"
	choco install ipvanish -y
	
Write-Host "Installing Rufus"
	choco install rufus -y
	
Write-Host "Installing Dell Command | Update 4.1.0"
	choco install dellcommandupdate -y
	choco install dellcommandupdate-uwp -y
	
Write-Host "Windows 10 Auto Dark Mode"
	choco install auto-dark-mode -y
	
Write-Host "Installing Rufus"
	choco install rufus -y

Write-Host "Installing Audacity"
	choco install audacity -y

#Write-Host "Installing Atom"
#	choco install atom -y

#Write-Host "Installing Office 365 Business"
#	choco install office365business -y

#Write-Host "Installing Git"
#	choco install git -y
})

$firefox.Add_Click({
    Write-Host "Installing Firefox"
    choco install firefox -y
    Write-Host "Installed Firefox"
})



[void]$Form.ShowDialog()
