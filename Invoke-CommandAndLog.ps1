function Invoke-CommandAndLog {
    param (
        [string]$Command,
        [string]$LogMessage
    )

    Write-Output "$LogMessage..." >> C:\AutoMaintainLogs.txt
    Invoke-Expression $Command
}

# Define commands and log messages
$commands = @{
    "Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned" = "Setting permissions to RemoteSigned";
    "Enable-ComputerRestore -Drive 'C:\'" = "Enabling System Restore for C: drive";
    "Checkpoint-Computer -Description 'MaintenanceRestorePoint' -RestorePointType 'MODIFY_SETTINGS'" = "Creating restore point for modifying settings";
    "Install-PackageProvider -Name NuGet -Force -Scope CurrentUser" = "Installing NuGet package provider";
    "Set-PSRepository -Name PSGallery -InstallationPolicy Trusted" = "Setting PSGallery repository installation policy to Trusted";
    "Install-Module PowerShellGet -Force" = "Installing PowerShellGet module";
    "Install-Module PSWindowsUpdate -Force -AllowClobber -Scope CurrentUser" = "Updating PowerShellGet module";
    "Import-Module PSWindowsUpdate" = "Importing PSWindowsUpdate module";
    "Update-Module -Name '*'" = "Updating all PowerShell modules";
    "Get-WindowsUpdate -Install -AcceptAll" = "Checking for Windows updates";
    "winget install adobe.acrobat.reader.64-bit" = "Installing Adobe Acrobat Reader";
    "winget install apple.itunes" = "Installing Apple iTunes";
    "winget install VideoLAN.VLC" = "Installing VLC Media Player";
    "winget install 7zip.7zip" = "Installing 7-Zip";
    "Start-Process 'ms-windows-store://downloadsandupdates'" = "Starting MS Windows Store Downloads and Updates";
    "Start-Process 'ms-settings:storagesense'" = "Opening Storage Sense";
    "Start-Process 'cleanmgr.exe' -ArgumentList '/sagerun:1' -Wait -NoNewWindow -Verbose" = "Running cleanmgr command";
    "Optimize-Volume -DriveLetter C -ReTrim -Verbose" = "Optimizing C: drive with ReTrim";
    "SFC /scannow -Verbose" = "Running SFC /scannow command";
    "Winget upgrade --all --include-unknown" = "Updating WinGet package manager";
    "Start-Process 'ms-settings:windowsupdate' -PassThru" = "Opening Windows Update"
}

# Execute commands
foreach ($command in $commands.Keys) {
    Invoke-CommandAndLog -Command $command -LogMessage $commands[$command]
}
