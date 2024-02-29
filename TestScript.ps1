# Test script

# Setting Permissions
Write-host "Setting permissions to RemoteSigned..."
set-executionpolicy -scope currentuser -executionpolicy remotesigned

# Create restore point
Write-Host "Creating restore point..."
Checkpoint-Computer -Description "MaintenanceRestorePoint" -RestorePointType "MODIFY_SETTINGS"

# Update Windows
Write-Host "Checking for Windows updates..."
Install-PackageProvider -Name NuGet -Force -Scope CurrentUser
Install-Module PSWindowsUpdate -Force -AllowClobber -Scope CurrentUser
Import-Module PSWindowsUpdate
Get-WindowsUpdate -Install -AcceptAll 

# Update PowerShellGet
Write-Host "Updating PowerShellGet..."
Install-Module PowerShellGet -Force -AllowClobber -Scope CurrentUser

# Update all PowerShell modules
Write-Host "Updating all PowerShell modules..."
Update-Module -Name *

# Updating WinGet package manager
Write-Host "Updating WinGet package manager..."
Winget upgrade --all --include-unknown

# Start MS Windows Update
Write-Host "Opening Windows Update..."
Start-Process "ms-settings:windowsupdate"

# Openning MS Store Downloads and Updates
# RTFM: https://learn.microsoft.com/en-us/windows/uwp/launch-resume/launch-store-app
Write-Host "Starting MS Windows Store Downloads and Updates..."
Start-Process "ms-windows-store://downloadsandupdates"

# Check Adobe Acrobat, iTunes, VLC and 7zip are installed 
Write-Host "Check Adobe Acrobat, iTunes, VLC and 7zip are installed..."
winget install adobe.acrobat.reader.64-bit ; winget install apple.itunes ; winget install VideoLAN.VLC ; winget install 7zip.7zip

# Start Disk Cleanup utility
Write-Host "Starting Disk Cleanup..."
Start-Process -FilePath cleanmgr -ArgumentList "/C /sageset:1" -Wait
Start-Process -FilePath cleanmgr -ArgumentList "/S /D C:" -Wait

# Start Disk ReTrimming
Write-Host "Starting Disk Optimising and ReTrimming..."
Optimize-Volume -DriveLetter C -ReTrim -Verbose

# Start Resource Checker
Write-Host "Scanning integrity of all protected system files..."
SFC /VERIFYONLY

# Run SFC /scannow and redirect the output to a variable
$sfcOutput = sfc /scannow

# Copy the output to the clipboard
$sfcOutput | Set-Clipboard

# Notify the user
Write-Host "SFC /scannow output has been copied to the clipboard."
Write-Host "Paste and hit enter to run SFC /ScanNow ?"
 
# Open storage sense
Start-Process "ms-settings:storagesense"