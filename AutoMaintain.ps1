# Set the execution policy to RemoteSigned for the current user.
Write-Output "Setting permissions to RemoteSigned..." >> C:\AutoMaintainLogs.txt -PassThru -Wait;
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned -PassThru -Wait;

# Enable System Restore for the C: drive.
Write-Output "Enabling System Restore for C: drive..." >> C:\AutoMaintainLogs.txt -PassThru -Wait;
Enable-ComputerRestore -Drive "C:\" -PassThru -Wait;

# Create a restore point with the description "MaintenanceRestorePoint" for modifying settings.
Write-Output "Creating restore point for modifying settings..." >> C:\AutoMaintainLogs.txt -PassThru -Wait;
Checkpoint-Computer -Description "MaintenanceRestorePoint" -RestorePointType "MODIFY_SETTINGS" -PassThru -Wait;

# Install the NuGet package provider with the Force parameter for the current user scope.
Write-Output "Installing NuGet package provider..." >> C:\AutoMaintainLogs.txt -PassThru -Wait;
Install-PackageProvider -Name NuGet -Force -Scope CurrentUser -PassThru -Wait;

# Set the installation policy for the PSGallery repository to 'Trusted.'
Write-Output "Setting PSGallery repository installation policy to Trusted..." >> C:\AutoMaintainLogs.txt -PassThru -Wait;
Set-PSRepository -Name PSGallery -InstallationPolicy Trusted -PassThru -Wait;

# Install the PowerShellGet module with the Force parameter.
Write-Output "Installing PowerShellGet module..." >> C:\AutoMaintainLogs.txt -PassThru -Wait;
Install-Module PowerShellGet -Force -PassThru -Wait;

# Install the PSWindowsUpdate module with the Force and AllowClobber parameters for the current user scope.
Write-Output "Updating PowerShellGet module..." >> C:\AutoMaintainLogs.txt -PassThru -Wait;
Install-Module PSWindowsUpdate -Force -AllowClobber -Scope CurrentUser -PassThru -Wait;

# Import the PSWindowsUpdate module.
Write-Output "Importing PSWindowsUpdate module..." >> C:\AutoMaintainLogs.txt -PassThru -Wait;
Import-Module PSWindowsUpdate -PassThru -Wait;

# Update all PowerShell modules
Write-Output "Updating all PowerShell modules..." >> C:\AutoMaintainLogs.txt -PassThru -Wait;
Update-Module -Name * -PassThru -Wait;

# Get and install all available Windows updates, accepting all prompts.
Write-Output "Checking for Windows updates..." >> C:\AutoMaintainLogs.txt -PassThru -Wait;
Get-WindowsUpdate -Install -AcceptAll -PassThru -Wait;

# Install Adobe Acrobat Reader using the Windows Package Manager (winget).
Write-Output "Installing Adobe Acrobat Reader..." >> C:\AutoMaintainLogs.txt -PassThru -Wait;
winget install adobe.acrobat.reader.64-bit -PassThru -Wait;

# Install Apple iTunes using the Windows Package Manager (winget).
Write-Output "Installing Apple iTunes..." >> C:\AutoMaintainLogs.txt -PassThru -Wait;
winget install apple.itunes -PassThru -Wait;

# Install VLC Media Player using the Windows Package Manager (winget).
Write-Output "Installing VLC Media Player..." >> C:\AutoMaintainLogs.txt -PassThru -Wait;
winget install VideoLAN.VLC -PassThru -Wait;

# Install 7-Zip using the Windows Package Manager (winget).
Write-Output "Installing 7-Zip..." >> C:\AutoMaintainLogs.txt -PassThru -Wait;
winget install 7zip.7zip -PassThru -Wait;

# Opening MS Store Downloads and Updates
# RTFM: https://learn.microsoft.com/en-us/windows/uwp/launch-resume/launch-store-app
Write-Output "Starting MS Windows Store Downloads and Updates..." >> C:\AutoMaintainLogs.txt -PassThru -Wait;
Start-Process "ms-windows-store://downloadsandupdates" -PassThru -Wait;

# Open storage sense
Write-Output "Opening Storage Sense..." >> C:\AutoMaintainLogs.txt -PassThru -Wait;
Start-Process "ms-settings:storagesense" -PassThru -Wait;

# Run cleanmgr command
Write-Output "Running cleanmgr command..." >> C:\AutoMaintainLogs.txt -PassThru -Wait;
Start-Process -FilePath "cleanmgr.exe" -ArgumentList "/sagerun:1" -Wait -NoNewWindow -Verbose -PassThru -Wait;

# Optimize C: drive with ReTrim
Write-Output "Optimizing C: drive with ReTrim..." >> C:\AutoMaintainLogs.txt -PassThru -Wait;
Optimize-Volume -DriveLetter C -ReTrim -Verbose -PassThru -Wait;

# Run SFC /scannow command
Write-Output "Running SFC /scannow command..." >> C:\AutoMaintainLogs.txt -PassThru -Wait;
SFC /scannow - Verbose -PassThru -Wait;

# Updating WinGet package manager
Write-Output "Updating WinGet package manager..." >> C:\AutoMaintainLogs.txt -PassThru -Wait;
Winget upgrade --all --include-unknown -PassThru -Wait;

# Start MS Windows Update
Write-Output "Opening Windows Update..." >> C:\AutoMaintainLogs.txt -PassThru -Wait;
Start-Process 'ms-settings:windowsupdate' -PassThru -Wait;