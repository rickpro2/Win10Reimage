:init
setlocal DisableDelayedExpansion
set "batchPath=%~0"
for %%k in (%0) do set batchName=%%~nk
set "vbsGetPrivileges=%temp%\OEgetPriv_%batchName%.vbs"
setlocal EnableDelayedExpansion

:checkPrivileges
NET FILE 1>NUL 2>NUL
if '%errorlevel%' == '0' ( goto gotPrivileges ) else ( goto getPrivileges )

:getPrivileges
if '%1'=='ELEV' (echo ELEV & shift /1 & goto gotPrivileges)
ECHO.
ECHO **************************************
ECHO Invoking UAC for Privilege Escalation
ECHO **************************************

ECHO Set UAC = CreateObject^("Shell.Application"^) > "%vbsGetPrivileges%"
ECHO args = "ELEV " >> "%vbsGetPrivileges%"
ECHO For Each strArg in WScript.Arguments >> "%vbsGetPrivileges%"
ECHO args = args ^& strArg ^& " "  >> "%vbsGetPrivileges%"
ECHO Next >> "%vbsGetPrivileges%"
ECHO UAC.ShellExecute "!batchPath!", args, "", "runas", 1 >> "%vbsGetPrivileges%"
"%SystemRoot%\System32\WScript.exe" "%vbsGetPrivileges%" %*
exit /B

:gotPrivileges
setlocal & pushd .
cd /d %~dp0
if '%1'=='ELEV' (del "%vbsGetPrivileges%" 1>nul 2>nul  &  shift /1)

powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
choco feature enable -n=allowGlobalConfirmation


@rem ----[ Whatever you want to install, place it below this point, each item on its own line (to make it easier to find later on. ] ----

Write-Host "Installing Chocolatey GUI"
$ResultText.text = "`r`n" +"`r`n" + "Installing Chocolatey GUI... Please Wait"
choco install chocolateygui -y
$ResultText.text = "`r`n" + "Finished Installing Chocolatey GUI" + "`r`n" + "`r`n" + "Ready for Next Task"

Write-Host "Installing Choco Cleaner (Script + Task)"
$ResultText.text = "`r`n" +"`r`n" + "Installing Choco Cleaner (Script + Task)... Please Wait"
choco install choco-cleaner -y
$ResultText.text = "`r`n" + "Finished Installing Choco Cleaner (Script + Task)" + "`r`n" + "`r`n" + "Ready for Next Task"

Write-Host "Installing Choco Upgrade All (Script + Task)"
$ResultText.text = "`r`n" +"`r`n" + "Installing Choco Upgrade All (Script + Task)... Please Wait"
choco install choco-upgrade-all-at --params "'/TIME:07:00 /ABORTTIME:11:50'" -y
$ResultText.text = "`r`n" + "Finished Installing Choco Upgrade All (Script + Task)" + "`r`n" + "`r`n" + "Ready for Next Task"

Write-Host "Installing Adobe Acrobat Reader DC"
$ResultText.text = "`r`n" +"`r`n" + "Installing Adobe Acrobat Reader DC... Please Wait"
choco install adobereader -y
$ResultText.text = "`r`n" + "Finished Installing Adobe Acrobat Reader DC" + "`r`n" + "`r`n" + "Ready for Next Task"

Write-Host "Installing Google Chrome"
$ResultText.text = "`r`n" +"`r`n" + "Installing Google Chrome... Please Wait"
choco install googlechrome -y
$ResultText.text = "`r`n" + "Finished Installing Google Chrome" + "`r`n" + "`r`n" + "Ready for Next Task"

Write-Host "Installing Brave Browser"
$ResultText.text = "`r`n" +"`r`n" + "Installing Brave Browser... Please Wait"
choco install brave -y
$ResultText.text = "`r`n" + "Finished Installing Brave Browser" + "`r`n" + "`r`n" + "Ready for Next Task"







$ResultText.text = "`r`n" + "Finished Installing Chocolaty and All Apps" + "`r`n" + "`r`n" + "Ready for Next Task"     
}

@rem ---[You can add as many programs here as you desire!]----

pause
echo.
echo Your installation is complete.
pause
