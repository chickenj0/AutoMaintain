# Start transcript to log script execution
Start-Transcript -Path "C:\AutoMaintainLogs_Transcript.txt" -Append;

# Start System Information
Start-Process -FilePath "msinfo32"

# Start MSP360 
Start-Process "C:\Program Files\Nerds 2 You\Online Backup\Online Backup.exe"

# Set the execution policy to RemoteSigned for the current user.
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned;

# Enable System Restore for the C: drive.
Enable-ComputerRestore -Drive "C:\";

# Create a restore point with the description "MaintenanceRestorePoint" for modifying settings.
Checkpoint-Computer -Description "MaintenanceRestorePoint" -RestorePointType "MODIFY_SETTINGS";

# Install the NuGet package provider with the Force parameter for the current user scope.
Install-PackageProvider -Name NuGet -Force -Scope CurrentUser;

# Set the installation policy for the PSGallery repository to 'Trusted.'
Set-PSRepository -Name PSGallery -InstallationPolicy Trusted;

# Install the PowerShellGet module with the Force parameter.
Install-Module PowerShellGet -Force;

# Install the PSWindowsUpdate module with the Force and AllowClobber parameters for the current user scope.
Install-Module PSWindowsUpdate -Force -AllowClobber -Scope CurrentUser;

# Import the PSWindowsUpdate module.
Import-Module PSWindowsUpdate;

# Update all PowerShell modules
Update-Module -Name *;

# Get and install all available Windows updates, accepting all prompts.
Get-WindowsUpdate -Install -AcceptAll;

# Updating WinGet package manager
Start-Process powershell -ArgumentList "winget upgrade --all --include-unknown" -Wait

# Install Adobe Acrobat Reader using the Windows Package Manager (winget).
winget install adobe.acrobat.reader.64-bit --accept-source-agreements;

# Install Apple iTunes using the Windows Package Manager (winget).
winget install apple.itunes;

# Install VLC Media Player using the Windows Package Manager (winget).
winget install VideoLAN.VLC;

# Install 7-Zip using the Windows Package Manager (winget).
winget install 7zip.7zip;

# Opening MS Store Downloads and Updates
Start-Process "ms-windows-store://downloadsandupdates";

# Open storage sense # Start MS Windows Update
Start-Process "ms-settings:storagesense";
Start-Process 'ms-settings:windowsupdate';

# Run cleanmgr command
Start-Process -FilePath "cleanmgr.exe" -ArgumentList "/sagerun:1" -NoNewWindow -Verbose -PassThru -Wait;

# Optimize C: drive with ReTrim
Optimize-Volume -DriveLetter C -ReTrim -Verbose;

# Run SFC /scannow command
SFC /scannow;

# Stop transcript to end logging
Stop-Transcript;