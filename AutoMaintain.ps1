# https://stackoverflow.com/questions/55775389/how-to-output-result-of-a-powershell-script-to-a-text-file
Start-Transcript -Path C:\AutoMaintain.log -Append

# Assign file paths to variables
$ClientNotes = "C:\ClientNotes.txt"

# Create ClientNotes.txt file
New-Item -ItemType File -Path $ClientNotes -Force
function Run-Command {
    param (
        [string]$Command,
        [string]$ClientNotes
    )

    # Run the command and capture the output
    $output = Invoke-Expression $Command

    # Check if the command succeeded
    if ($?) {
        # Write success message to file
        "$Command - Successful" | Out-File -FilePath $ClientNotes -Append
    } else {
        # Write failure message to file
        "$Command - Failed" | Out-File -FilePath $ClientNotes -Append
    }

    # Output the command's output to the console
    $output
}


# Run commands and check their success or failure, and output messages to the file
# Start System Information
Run-Command "Start-Process -FilePath "msinfo32"" $ClientNotes

# Set the execution policy to RemoteSigned for the current user.
Run-Command "Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned" $ClientNotes

# Start MSP360 
Run-Command "Start-Process "C:\Program Files\Nerds 2 You\Online Backup\Online Backup.exe"" $ClientNotes

# Enable System Restore for the C: drive.
Run-Command "Enable-ComputerRestore -Drive "C:\"" $ClientNotes

# Create a restore point with the description "MaintenanceRestorePoint" for modifying settings.
Run-Command "Checkpoint-Computer -Description "MaintenanceRestorePoint" -RestorePointType "MODIFY_SETTINGS"" $ClientNotes

# Install the NuGet package provider with the Force parameter for the current user scope.
Run-Command "Install-PackageProvider -Name NuGet -Force -Scope CurrentUser" $ClientNotes

# Set the installation policy for the PSGallery repository to 'Trusted.'
Run-Command "Set-PSRepository -Name PSGallery -InstallationPolicy Trusted" $ClientNotes

# Install the PowerShellGet module with the Force parameter.
Run-Command "Install-Module PowerShellGet -Force" $ClientNotes

# Install the PSWindowsUpdate module with the Force and AllowClobber parameters for the current user scope.
Run-Command "Install-Module PSWindowsUpdate -Force -AllowClobber -Scope CurrentUser" $ClientNotes

# Import the PSWindowsUpdate module.
Run-Command "Import-Module PSWindowsUpdate" $ClientNotes

# Update all PowerShell modules
Run-Command "Update-Module -Name *" $ClientNotes

# Open MS Windows Update
Run-Command "Start-Process 'ms-settings:windowsupdate'" $ClientNotes

# Get and install all available Windows updates, accepting all prompts.
Run-Command "Get-WindowsUpdate -Install -AcceptAll" $ClientNotes

# Updating WinGet package manager
Run-Command "Start-Process powershell -ArgumentList "winget upgrade --all --include-unknown --accept-source-agreements --accept-package-agreements"" $ClientNotes

# Install Adobe Acrobat Reader using the Windows Package Manager (winget).
Run-Command "winget install adobe.acrobat.reader.64-bit --accept-source-agreements" $ClientNotes

# Install Apple iTunes using the Windows Package Manager (winget).
Run-Command "winget install apple.itunes" $ClientNotes

# Install VLC Media Player using the Windows Package Manager (winget).
Run-Command "winget install VideoLAN.VLC" $ClientNotes

# Install 7-Zip using the Windows Package Manager (winget).
Run-Command "winget install 7zip.7zip" $ClientNotes

# Opening MS Store Downloads and Updates
Run-Command "Start-Process "ms-windows-store://downloadsandupdates"" $ClientNotes

# Open storage sense 
Run-Command "Start-Process "ms-settings:storagesense"" $ClientNotes

# Run cleanmgr command
Run-Command "Start-Process -FilePath "cleanmgr.exe" -ArgumentList "/sagerun:1" -Verbose -PassThru" $ClientNotes

# Optimize C: drive with ReTrim
Run-Command "Optimize-Volume -DriveLetter C -ReTrim -Verbose" $ClientNotes

# Run SFC /scannow command
Run-Command "SFC /scannow" $ClientNotes


# Define log file names with date and computer name
$CurrentDate = Get-Date -Format "yyyy-MM-dd"
$ComputerName = $env:COMPUTERNAME
$pwd = Get-Location
$ClientNotesName = "${CurrentDate}_${ComputerName}_AutoMaintainClientNotes.txt"
$AutoMaintainLogName = "${CurrentDate}_${ComputerName}_AutoMaintainLog.txt"

# Move files to the current directory with new names
Move-Item -Path 'C:\ClientNotes.txt' -Destination "$pwd\$ClientNotesName" -Force
Move-Item -Path 'C:\AutoMaintain.log' -Destination "$pwd\$AutoMaintainLogName" -Force

# Get contents of ClientNotes.txt
$ClientNotesContent = Get-Content "$pwd\$ClientNotesName"

# Stop transcript logging
Stop-Transcript

# Restart Computer
# Restart-computer -Wait