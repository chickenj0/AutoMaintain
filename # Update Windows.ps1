# Setting Permissions
Write-host "Setting permissions to RemoteSigned..." ; set-executionpolicy -scope currentuser -executionpolicy remotesigned

# Creating restore point 
Write-host "Creating restore point..." ; Checkpoint-Computer -Description "MaintenanceRestorePoint" -RestorePointType "MODIFY_SETTINGS"

# Update Windows
Write-Host "Checking for Windows updates..." ; Install-PackageProvider -Name NuGet -Force -Scope CurrentUser ; Install-Module PSWindowsUpdate -Force -AllowClobber -Scope CurrentUser ; Import-Module PSWindowsUpdate ; Get-WindowsUpdate -Install -AcceptAll 
        # Set-PSRepository cmdlet


# Update PowerShellGet
Write-Host "Updating PowerShellGet..." ; Install-Module PowerShellGet -Force -AllowClobber -Scope CurrentUser

# Update all PowerShell modules
Write-Host "Updating all PowerShell modules..." ; Update-Module -Name *

# Updating WinGet package manager
Write-Host "Updating WinGet package manager..." ; Winget upgrade --all --include-unknown


# Start MS Windows Update
Write-Host "Opening Windows Update..." ; Start-Process "ms-settings:windowsupdate" ; Write-Host "Starting MS Windows Store Downloads and Updates..." ; Start-Process "ms-windows-store://downloadsandupdates"



# Opening MS Store Downloads and Updates
# RTFM: https://learn.microsoft.com/en-us/windows/uwp/launch-resume/launch-store-app


# Retrieving Intel Driver Updates
Write-Host "Retrieving Intel Driver Updates"
Start-Process ""C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Intel Driver & Support Assistant.lnk""


# Open storage sense
Start-Process "ms-settings:storagesense"



# Chocolatey.Chocolatey

# Check for driver updates (This is a generic example, might not cover all devices)
Write-Host "Checking for driver updates..."
Get-WmiObject Win32_PnPSignedDriver | ForEach-Object {
    $deviceName = $_.DeviceName
    $manufacturer = $_.Manufacturer
    $driverVersion = $_.DriverVersion

    Write-Host "Updating driver for $deviceName (Manufacturer: $manufacturer) to version $driverVersion..."
    # Add your specific driver update command here
}

Write-Host "Software and drivers update completed."
