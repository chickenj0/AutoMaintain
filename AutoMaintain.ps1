# Start transcript to log script execution
Start-Transcript -Path "C:\AutoMaintainLogs_Transcript.txt" -Append

# Set the execution policy to RemoteSigned for the current user.
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned -PassThru -Wait;

# Enable System Restore for the C: drive.
Enable-ComputerRestore -Drive "C:\" -PassThru -Wait;

# Create a restore point with the description "MaintenanceRestorePoint" for modifying settings.
Checkpoint-Computer -Description "MaintenanceRestorePoint" -RestorePointType "MODIFY_SETTINGS" -PassThru -Wait;

# Install the NuGet package provider with the Force parameter for the current user scope.
Install-PackageProvider -Name NuGet -Force -Scope CurrentUser -PassThru -Wait;

# Set the installation policy for the PSGallery repository to 'Trusted.'
Set-PSRepository -Name PSGallery -InstallationPolicy Trusted -PassThru -Wait;

# Install the PowerShellGet module with the Force parameter.
Install-Module PowerShellGet -Force -PassThru -Wait;

# Install the PSWindowsUpdate module with the Force and AllowClobber parameters for the current user scope.
Install-Module PSWindowsUpdate -Force -AllowClobber -Scope CurrentUser -PassThru -Wait;

# Import the PSWindowsUpdate module.
Import-Module PSWindowsUpdate -PassThru -Wait;

# Update all PowerShell modules
Update-Module -Name * -PassThru -Wait;

# Get and install all available Windows updates, accepting all prompts.
Get-WindowsUpdate -Install -AcceptAll -PassThru -Wait;

# Install Adobe Acrobat Reader using the Windows Package Manager (winget).
winget install adobe.acrobat.reader.64-bit -PassThru -Wait;

# Install Apple iTunes using the Windows Package Manager (winget).
winget install apple.itunes -PassThru -Wait;

# Install VLC Media Player using the Windows Package Manager (winget).
winget install VideoLAN.VLC -PassThru -Wait;

# Install 7-Zip using the Windows Package Manager (winget).
winget install 7zip.7zip -PassThru -Wait;

# Opening MS Store Downloads and Updates
Start-Process "ms-windows-store://downloadsandupdates" -PassThru -Wait;

# Open storage sense
Start-Process "ms-settings:storagesense" -PassThru -Wait;

# Run cleanmgr command
Start-Process -FilePath "cleanmgr.exe" -ArgumentList "/sagerun:1" -Wait -NoNewWindow -Verbose -PassThru -Wait;

# Optimize C: drive with ReTrim
Optimize-Volume -DriveLetter C -ReTrim -Verbose -PassThru -Wait;

# Run SFC /scannow command
SFC /scannow - Verbose -PassThru -Wait;

# Updating WinGet package manager
Winget upgrade --all --include-unknown -PassThru -Wait;

# Start MS Windows Update
Start-Process 'ms-settings:windowsupdate' -PassThru -Wait;

# Stop transcript to end logging
Stop-Transcript