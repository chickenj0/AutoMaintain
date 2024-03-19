# https://stackoverflow.com/questions/55775389/how-to-output-result-of-a-powershell-script-to-a-text-file
Start-Transcript -Path C:\AutoMaintain.log -Append

Start-Process -FilePath "msinfo32"

# Set the execution policy to RemoteSigned for the current user.
Write-Output "Setting permissions to RemoteSigned..." >> C:\AutoMaintainLogs.txt -PassThru -Wait 
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned 

# Enable System Restore for the C: drive.
Write-Output "Enabling System Restore for C: drive..." >> C:\AutoMaintainLogs.txt -PassThru -Wait 
Enable-ComputerRestore -Drive "C:\" 

# Create a restore point with the description "MaintenanceRestorePoint" for modifying settings.
Write-Output "Creating restore point for modifying settings..." >> C:\AutoMaintainLogs.txt -PassThru -Wait 
Checkpoint-Computer -Description "MaintenanceRestorePoint" -RestorePointType "MODIFY_SETTINGS" 

# Install the NuGet package provider with the Force parameter for the current user scope.
Write-Output "Installing NuGet package provider..." >> C:\AutoMaintainLogs.txt -PassThru -Wait 
Install-PackageProvider -Name NuGet -Force -Scope CurrentUser 

# Set the installation policy for the PSGallery repository to 'Trusted.'
Write-Output "Setting PSGallery repository installation policy to Trusted..." >> C:\AutoMaintainLogs.txt -PassThru -Wait
Set-PSRepository -Name PSGallery -InstallationPolicy Trusted

# Install the PowerShellGet module with the Force parameter.
Write-Output "Installing PowerShellGet module..." >> C:\AutoMaintainLogs.txt -PassThru -Wait 
Install-Module PowerShellGet -Force 

# Install the PSWindowsUpdate module with the Force and AllowClobber parameters for the current user scope.
Write-Output "Updating PowerShellGet module..." >> C:\AutoMaintainLogs.txt -PassThru -Wait 
Install-Module PSWindowsUpdate -Force -AllowClobber -Scope CurrentUser 

# Import the PSWindowsUpdate module.
Write-Output "Importing PSWindowsUpdate module..." >> C:\AutoMaintainLogs.txt -PassThru -Wait 
Import-Module PSWindowsUpdate  

# Update all PowerShell modules
Write-Output "Updating all PowerShell modules..." >> C:\AutoMaintainLogs.txt -PassThru -Wait 
Update-Module -Name * 

# Get and install all available Windows updates, accepting all prompts.
Write-Output "Checking for Windows updates..." >> C:\AutoMaintainLogs.txt -PassThru -Wait 
Get-WindowsUpdate -Install -AcceptAll -Verbose

# Install Adobe Acrobat Reader using the Windows Package Manager (winget).
Write-Output "Installing Adobe Acrobat Reader..." >> C:\AutoMaintainLogs.txt -PassThru -Wait 
winget install adobe.acrobat.reader.64-bit --accept-source-agreements

# Install Apple iTunes using the Windows Package Manager (winget).
Write-Output "Installing Apple iTunes..." >> C:\AutoMaintainLogs.txt -PassThru -Wait 
winget install apple.itunes   

# Install VLC Media Player using the Windows Package Manager (winget).
Write-Output "Installing VLC Media Player..." >> C:\AutoMaintainLogs.txt -PassThru -Wait 
winget install VideoLAN.VLC   

# Install 7-Zip using the Windows Package Manager (winget).
Write-Output "Installing 7-Zip..." >> C:\AutoMaintainLogs.txt -PassThru -Wait 
winget install 7zip.7zip   

# Install 7-Zip using the Windows Package Manager (winget).
Write-Output "Installing Microsoft Office..." >> C:\AutoMaintainLogs.txt -PassThru -Wait 
winget install Microsoft.Office   

# Opening MS Store Downloads and Updates
# RTFM: https://learn.microsoft.com/en-us/windows/uwp/launch-resume/launch-store-app
Write-Output "Starting MS Windows Store Downloads and Updates..." >> C:\AutoMaintainLogs.txt -PassThru -Wait 
Start-Process "ms-windows-store://downloadsandupdates" -Wait 

# Open storage sense
Write-Output "Opening Storage Sense..." >> C:\AutoMaintainLogs.txt -PassThru -Wait 
Start-Process "ms-settings:storagesense" -PassThru 

# Run cleanmgr command
Write-Output "Running cleanmgr command..." >> C:\AutoMaintainLogs.txt -PassThru 
Start-Process -FilePath "cleanmgr.exe" -ArgumentList "/sagerun:1" -Wait -Verbose -PassThru 

# Optimize C: drive with ReTrim
Write-Output "Optimizing C: drive with ReTrim..." >> C:\AutoMaintainLogs.txt -PassThru -Wait 
Optimize-Volume -DriveLetter C -ReTrim -Verbose 

# Run SFC /scannow command
Write-Output "Running SFC /scannow command..." >> C:\AutoMaintainLogs.txt -PassThru -Wait 
SFC /scannow - Verbose -PassThru -Wait 

# Updating WinGet package manager
Write-Output "Updating WinGet package manager..." >> C:\AutoMaintainLogs.txt -PassThru -Wait 
WinGet upgrade --all --include-unknown --accept-package-agreements --accept-source-agreements --wait  --open-logs

# Start MS Windows Update
Write-Output "Opening Windows Update..." >> C:\AutoMaintainLogs.txt -PassThru -Wait 
Start-Process 'ms-settings:windowsupdate' -PassThru -Wait 

# Stop transcript logging
Stop-Transcript

# Restart Computer
# Restart-computer -Wait