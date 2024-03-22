# https://stackoverflow.com/questions/55775389/how-to-output-result-of-a-powershell-script-to-a-text-file
Start-Transcript -Path C:\AutoMaintain.log -Append

$StartApps = @(
	"msinfo32", 
	"C:\Program Files\Bitdefender\Endpoint Security\EPConsole.exe",
	"C:\Program Files\Nerds 2 You\Online Backup\Online Backup.exe",
	"C:\Program Files (x86)\Apple Software Update\SoftwareUpdate.exe"
	"C:\Program Files (x86)\Samsung\Samsung Magician"
)
foreach ($StartApp in $StartApps) {
	Start-Process -FilePath $StartApp
}

New-Item -ItemType File -Path "C:\ClientNotes.txt"
$ClientNotes = "C:\ClientNotes.txt"

# Start MS Windows Update
Write-Output "Opening Windows Update..." >> $ClientNotes 
Start-Process 'ms-settings:windowsupdate' -PassThru -Wait 

# Opening MS Store Downloads and Updates
# RTFM: https://learn.microsoft.com/en-us/windows/uwp/launch-resume/launch-store-app
Write-Output "Starting MS Windows Store Downloads and Updates..." >> $ClientNotes 
Start-Process "ms-windows-store://downloadsandupdates" -Wait 

# Set the execution policy to RemoteSigned for the current user.
Write-Output "Setting permissions to RemoteSigned..." >> $ClientNotes 
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned 

# Enable System Restore for the C: drive.
Write-Output "Enabling System Restore for C: drive..." >> $ClientNotes 
Enable-ComputerRestore -Drive "C:\" 

# Create a restore point with the description "MaintenanceRestorePoint" for modifying settings.
Write-Output "Creating restore point for modifying settings..." >> $ClientNotes 
Checkpoint-Computer -Description "MaintenanceRestorePoint" -RestorePointType "MODIFY_SETTINGS" 

# Install the NuGet package provider with the Force parameter for the current user scope.
Write-Output "Installing NuGet package provider..." >> $ClientNotes 
Install-PackageProvider -Name NuGet -Force -Scope CurrentUser 

# Set the installation policy for the PSGallery repository to 'Trusted.'
Write-Output "Setting PSGallery repository installation policy to Trusted..." >> $ClientNotes
Set-PSRepository -Name PSGallery -InstallationPolicy Trusted

# Install the PowerShellGet module with the Force parameter.
Write-Output "Installing PowerShellGet module..." >> $ClientNotes 
Install-Module PowerShellGet -Force 

# Install the PSWindowsUpdate module with the Force and AllowClobber parameters for the current user scope.
Write-Output "Updating PowerShellGet module..." >> $ClientNotes 
Install-Module PSWindowsUpdate -Force -AllowClobber -Scope CurrentUser 

# Import the PSWindowsUpdate module.
Write-Output "Importing PSWindowsUpdate module..." >> $ClientNotes 
Import-Module PSWindowsUpdate  

# Import MSP360 powershell module 
Install-Module msp360

# Update all PowerShell modules
Write-Output "Updating all PowerShell modules..." >> $ClientNotes 
Update-Module -Name * 

# Get and install all available Windows updates, accepting all prompts.
Write-Output "Checking for Windows updates..." >> $ClientNotes 
Get-WindowsUpdate -Install -AcceptAll -Verbose -IgnoreReboot

# Install apps using the Windows Package Manager (winget).
Write-Output "Installing Adobe Acrobat Reader..." >> $ClientNotes 
winget install adobe.acrobat.reader.64-bit --accept-source-agreements
Write-Output "Installing Apple iTunes..." >> $ClientNotes 
winget install apple.itunes   
Write-Output "Installing VLC Media Player..." >> $ClientNotes 
winget install VideoLAN.VLC   
Write-Output "Installing 7-Zip..." >> $ClientNotes 
winget install 7zip.7zip   
Write-Output "Installing Microsoft Office..." >> $ClientNotes 
winget install Microsoft.Office
Write-Output "Installing Google Chrome..." >> $ClientNotes 
winget install Google.Chrome

# Updating WinGet package manager
Write-Output "Updating WinGet package manager..." >> $ClientNotes 
WinGet upgrade --all --include-unknown --accept-package-agreements --accept-source-agreements --wait  --open-logs

# Open storage sense
Write-Output "Opening Storage Sense..." >> $ClientNotes 
Start-Process "ms-settings:storagesense" -PassThru 

# Run cleanmgr command
Write-Output "Running cleanmgr command..." >> $ClientNotes 
Start-Process -FilePath "cleanmgr.exe" -ArgumentList "/sagerun:1"  -Verbose 

# Optimize C: drive with ReTrim
Write-Output "Optimizing C: drive with ReTrim..." >> $ClientNotes 
Optimize-Volume -DriveLetter C -ReTrim -Verbose 

# Run SFC /scannow command
Write-Output "Running SFC /scannow command..." >> $ClientNotes 
SFC /scannow -PassThru -Wait 

# Stop transcript logging
Stop-Transcript

# Restart Computer
Restart-computer -Wait