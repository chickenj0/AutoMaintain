# AutoMaintainArrayImproved

# Start transcript logging
Start-Transcript -Path C:\AutoMaintain.log -Append

# Assign file paths to variables
$ClientNotesPath = "C:\ClientNotes.txt"

# Create ClientNotes.txt file
New-Item -ItemType File -Path $ClientNotesPath -Force

# Function to run command and log result
function Run-Command {
    param (
        [string]$Command,
        [string]$LogFilePath
    )

    # Run the command and capture the output
    $output = Invoke-Expression $Command

    # Check if the command succeeded
    if ($?) {
        # Write success message to log file
        "$Command - Successful" | Out-File -FilePath $LogFilePath -Append
    } else {
        # Write failure message to log file
        "$Command - Failed" | Out-File -FilePath $LogFilePath -Append
    }

    # Output the command's output to the console
    $output
}

# Run commands and check their success or failure, and output messages to the file
$Commands = @(
    "Start-Process 'msinfo32'",
    "Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned",
    "Start-Process 'C:\Program Files\Nerds 2 You\Online Backup\Online Backup.exe'",
    "Enable-ComputerRestore -Drive 'C:\'",
    "Checkpoint-Computer -Description 'MaintenanceRestorePoint' -RestorePointType 'MODIFY_SETTINGS'",
    "Install-PackageProvider -Name NuGet -Force -Scope CurrentUser",
    "Set-PSRepository -Name PSGallery -InstallationPolicy Trusted",
    "Install-Module PowerShellGet -Force",
    "Install-Module PSWindowsUpdate -Force -AllowClobber -Scope CurrentUser",
    "Import-Module PSWindowsUpdate",
    "Update-Module -Name *",
    "Start-Process 'ms-settings:windowsupdate'",
    "Get-WindowsUpdate -Install -AcceptAll",
    "Start-Process powershell -ArgumentList 'winget upgrade --all --include-unknown --accept-source-agreements --accept-package-agreements'",
    "winget install adobe.acrobat.reader.64-bit --accept-source-agreements",
    "winget install apple.itunes",
    "winget install VideoLAN.VLC",
    "winget install 7zip.7zip",
    "Start-Process 'ms-windows-store://downloadsandupdates'",
    "Start-Process 'ms-settings:storagesense'",
    "Start-Process -FilePath 'cleanmgr.exe' -ArgumentList '/sagerun:1' -Verbose -PassThru",
    "Optimize-Volume -DriveLetter C -ReTrim -Verbose",
    "SFC /scannow"
)

foreach ($Command in $Commands) {
    Run-Command $Command $ClientNotesPath
}

# Define log file names with date and computer name
$CurrentDate = Get-Date -Format "yyyy-MM-dd"
$ComputerName = $env:COMPUTERNAME
$AutoMaintainLogName = "${CurrentDate}_${ComputerName}_AutoMaintainLog.txt"

# Move files to the current directory with new names
Move-Item -Path $ClientNotesPath -Destination "$pwd\$AutoMaintainLogName" -Force
Move-Item -Path C:\AutoMaintain.log -Destination "$pwd\$AutoMaintainLogName" -Force

# Stop transcript logging
Stop-Transcript

# Restart Computer
# Restart-computer -Wait