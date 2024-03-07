
# try {
#     Winget upgrade --all --include-unknown -q
#     Write-Host "WinGet package manager updated successfully."
# } catch {
#     Write-Host "Failed to update WinGet package manager. Please check your internet connection and try again." -ForegroundColor Red
# }

# # Get a list of winget package IDs that have updates available
# $updatedPackages = (Winget outdated --id-only) -split [Environment]::NewLine | Where-Object { $_ -ne "" }

# # Check if there are any updates available
# if ($updatedPackages.Count -gt 0) {
#     # Display a message indicating the IDs of the packages that will be updated
#     Write-Host "The following applications will be updated:"
    
#     # Display each package ID
#     $updatedPackages | ForEach-Object { Write-Host "- $_" }
# } else {
#     # Display a message if no updates are available
#     Write-Host "No updates are available for installed applications."
# }


# # Get the content of the current script file using $MyInvocation.MyCommand.Path
# $scriptContent = Get-Content -Path $MyInvocation.MyCommand.Path;

# # Use Select-String to filter lines containing 'Write-Host' from the script content
# $writeHostLines = $scriptContent | Select-String -Pattern 'Write-Host';

# # Iterate through each line and output it using Write-Host
# foreach ($line in $writeHostLines) {
#     Write-Host "Write-Host command: $($line.Line)";
# }

# # Set the clipboard content to the filtered Write-Host commands
# $writeHostLines | ForEach-Object { $_.Line } | Set-Clipboard

# # Output a message indicating that Write-Host commands have been copied to the clipboard
# Write-Host "Write-Host commands have been copied to the clipboard."


# # Start MS Windows Update
# Write-Host "Opening Windows Update...";
# $processInfo = Start-Process powershell -Verb RunAs -ArgumentList "-NoProfile -Command { Start-Process 'ms-settings:windowsupdate' -PassThru }" -Wait -PassThru

# # Check the exit code to determine success or failure
# if ($processInfo.ExitCode -eq 0) {
#     Write-Host "Windows Update has been opened successfully."
# } else {
#     Write-Host "Failed to open Windows Update. Exit code: $($processInfo.ExitCode)"
# }

# Start-Process powershell -Verb RunAs -ArgumentList "-NoProfile -Command { winget upgrade --all --include-unknown }"

# PROD - Maintenance script

# MSP360 Backup - N/A , Updated , USB / cloud backup started , education given , schedule set
# BitDefender Endpoint Security Tools - signatures updated, modules checked, EDR sensor ON, Device Control OFF
# Intel Driver & Support Assistant - updated
# Lenovo Vantage 
# MS Store Apps - updated 
# Permissions set - RemoteSigned 
# Enable Restore Point & restore point 'MaintenanceRestorePoint' created / restore point already created
# Install PowerShellGet
# Install NuGet
# Install PSWindowsUpdate
# Office and 365 - 
# Samsung Magician - 
# EPSON Software Updater App - 
# AMD Software Installer - 
# DisplayLink Manager -
# Canon - 
# Apple Software Update - 
# HP Smart - 
# MyASUS - 
# Logitech - 
# Adobe Acrobat Reader - 
# Apple iTunes - 
# VLC - 
# 7z - 

Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned ; Enable-ComputerRestore -Drive "C:\" ; Checkpoint-Computer -Description "MaintenanceRestorePoint" -RestorePointType "MODIFY_SETTINGS"  ; Install-Module PowerShellGet  ; Install-PackageProvider -Name NuGet ; Install-Module PSWindowsUpdate
winget install adobe.acrobat.reader.64-bit ;  winget install apple.itunes ; winget install VideoLAN.VLC ; winget install 7zip.7zip
    


# PSWindowsUpdate update -
# WinGet update - 
# Microsoft Teams Classic - checked
        # how to open new powershell window or run commands in parallel
        # probably open new terminal , then write to the terminal 'winget upgrade ...'
Get-WindowsUpdate -Install ; winget upgrade --all --include-unknown ; winget install microsoft.teams.classic --source winget

# Adobe Acrobat Reader - checked
# MS Store Apps - updated
# Apple iTunes - checked
# VLC - checked
# 7z - checked
winget install adobe.acrobat.reader.64-bit ; winget install apple.itunes ; winget install VideoLAN.VLC ; winget install 7zip.7zip


# Office & MS 365 updates - OfficeC2RClient.exe - checked
# cmd.exe
# whoami
# "C:\Program Files\Common Files\microsoft shared\ClickToRun\OfficeC2RClient.exe" /update <user>


# Specify the path for the new text file
$newFilePath = "C:\Users\Owner\'OneDrive - Nerds 2 You'\Pictures\Desktop\VerboseLogs.txt"

# Create or overwrite the text file
New-Item -Path $newFilePath -ItemType File -Force

set-executionpolicy bypass -scope process .\AutoMaintain -force




# need something to copy and paste documentation 
# need to edit registry to re enable auto updates 
# need something to launch then close cmd to run auto update
    # check windows install scripts??


# This registers Microsoft Update via a predifened GUID with the Windows Update Agent.
 RegisterMicrosoftUpdate.ps1


 SCRIPTING DRAFT ENVIRONMENT

# copy text to the clipboard
Set-Clipboard -Value "Your text here"

# update windows Office and 365
cmd.exe
whoami
"C:\Program Files\Common Files\microsoft shared\ClickToRun\OfficeC2RClient.exe" /update <user>

# install choco and set execution policy
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# choco install & upgrade intel dsa
choco install intel-dsa
choco upgrade intel-dsa

# install relevant modules
Install-Module -Name PackageManagement -Force && Write-Host "install relevant modules: PackageManagement"




# output done!
Write-Host "Done!"



Using Command Prompt (CMD):

You can run Windows Update from the Command Prompt using the wuauclt.exe utility. This allows you to check for updates, download them, and install them from the command line. Keep in mind that running Windows Update through CMD won’t show progress; only the results will be displayed when the process is complete1.
Example command:

wuauclt.exe /detectnow

Using PowerShell:

On Windows 10 and 11, Microsoft uses the Update Session Orchestrator Client (UsoClient.exe) tool for updating system components. You can run it from PowerShell to trigger updates.
Example command:

UsoClient.exe startscan


Get-Command -Module WindowsUpdateProvider
CommandType     Name                                               Version    Source
-----------     ----                                               -------    ------
Function        Get-WUAVersion                                     1.0.0.2    WindowsUpdateProvider
Function        Get-WUIsPendingReboot                              1.0.0.2    WindowsUpdateProvider
Function        Get-WULastInstallationDate                         1.0.0.2    WindowsUpdateProvider
Function        Get-WULastScanSuccessDate                          1.0.0.2    WindowsUpdateProvider
Function        Install-WUUpdates                                  1.0.0.2    WindowsUpdateProvider
Function        Start-WUScan                                       1.0.0.2    WindowsUpdateProvider


winget list --name PowerShell --upgrade-available

$PSVersionTable.PSVersion