# Specify the path for the log file
$logFilePath = "C:\Users\Owner\OneDrive - Nerds 2 You\Pictures\Desktop\VerboseLogs.txt"

# Set the execution policy to RemoteSigned for the current user.
Write-Host "Setting permissions to RemoteSigned..."
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned -Force;

# Enable System Restore for the C: drive.
Write-Host "Enabling System Restore for C: drive..."
Enable-ComputerRestore -Drive "C:\";

# Create a restore point with the description "MaintenanceRestorePoint" for modifying settings.
Write-Host "Creating restore point for modifying settings..."
Checkpoint-Computer -Description "MaintenanceRestorePoint" -RestorePointType "MODIFY_SETTINGS";

# Install the NuGet package provider with the Force parameter for the current user scope.
Write-Host "Installing NuGet package provider..."
Install-PackageProvider -Name NuGet -Force -Scope CurrentUser -Confirm:$false;

# Set the installation policy for the PSGallery repository to 'Trusted.'
Write-Host "Setting PSGallery repository installation policy to Trusted..."
Set-PSRepository -Name PSGallery -InstallationPolicy Trusted;

# Install the PowerShellGet module with the Force parameter.
Write-Host "Installing PowerShellGet module..."
Install-Module PowerShellGet -Force -Confirm:$false;

# Install the PSWindowsUpdate module with the Force and AllowClobber parameters for the current user scope.
Write-Host "Installing/Updating PSWindowsUpdate module..."
Install-Module PSWindowsUpdate -Force -AllowClobber -Scope CurrentUser -Confirm:$false;

# Import the PSWindowsUpdate module.
Write-Host "Importing PSWindowsUpdate module..."
Import-Module PSWindowsUpdate -Confirm:$false;

# Update all PowerShell modules
Write-Host "Updating all PowerShell modules..."
Update-Module -Name * -Force -Confirm:$false;

# Get and install all available Windows updates, accepting all prompts.
Write-Host "Checking for Windows updates..."
Start-Process powershell -Verb RunAs -ArgumentList "Get-WindowsUpdate -Install -AcceptAll" -Wait;

# Install Adobe Acrobat Reader using the Windows Package Manager (winget).
Write-Host "Installing Adobe Acrobat Reader..."
winget install adobe.acrobat.reader.64-bit -e;

# Install Apple iTunes using the Windows Package Manager (winget).
Write-Host "Installing Apple iTunes..."
winget install apple.itunes -e;

# Install VLC Media Player using the Windows Package Manager (winget).
Write-Host "Installing VLC Media Player..."
winget install VideoLAN.VLC -e;

# Install 7-Zip using the Windows Package Manager (winget).
Write-Host "Installing 7-Zip..."
winget install 7zip.7zip -e;

# Start MS Windows Update
Write-Host "Opening Windows Update..."
Start-Process powershell -Verb RunAs -ArgumentList "-NoProfile -Command { Start-Process 'ms-settings:windowsupdate' -PassThru }" -Wait -PassThru;

# Check the exit code to determine success or failure
if ($? -eq $true) {
    Write-Host "Windows Update has been opened successfully."
} else {
    Write-Host "Failed to open Windows Update. Exit code: $($LASTEXITCODE)"
}

# Opening MS Store Downloads and Updates
# RTFM: https://learn.microsoft.com/en-us/windows/uwp/launch-resume/launch-store-app
Write-Host "Starting MS Windows Store Downloads and Updates..."
Start-Process "ms-windows-store://downloadsandupdates";

# Open storage sense
Write-Host "Opening Storage Sense..."
Start-Process powershell -Verb RunAs -ArgumentList "Start-Process 'ms-settings:storagesense'" -Wait;

# Run cleanmgr command
Write-Host "Running cleanmgr command..."
Start-Process powershell -Verb RunAs -ArgumentList "cleanmgr" -Wait;

# Optimize C: drive with ReTrim
Write-Host "Optimizing C: drive with ReTrim..."
Optimize-Volume -DriveLetter C -ReTrim -Verbose;

# Run SFC /scannow command
Write-Host "Running SFC /scannow command..."
SFC /scannow;

# Updating WinGet package manager
Write-Host "Updating WinGet package manager..."
Start-Process powershell -Verb RunAs -ArgumentList "-NoProfile -Command { winget upgrade --all --include-unknown }" -Wait;

# Check the exit code to determine success or failure
if ($? -eq $true) {
    Write-Output "Windows Update has been opened successfully." | Tee-Object -FilePath $logFilePath -Append
} else {
    Write-Output "Failed to open Windows Update. Exit code: $($LASTEXITCODE)" | Tee-Object -FilePath $logFilePath -Append
}

# ... (continue with the rest of the script)

# Redirecting output to log file for the entire script
Start-Transcript -Path $logFilePath -Append

# ... (continue with the rest of the script)

# Stop transcript to finish logging
Stop-Transcript