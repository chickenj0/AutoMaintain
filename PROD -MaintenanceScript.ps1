# PROD - Maintenance script

# MSP360 Backup - N/A , USB only , cloud only , USB then cloud , education given , schedule set
    # Install windows caffeinated app
# BitDefender Endpoint Security Tools - signatures updated, modules checked, EDR sensor ON, Device Control OFF
# Intel Driver & Support Assistant updated –

# Install PowerShell
winget install --id Microsoft.Powershell --source winget

# Set Admin:Powershell to open on login
Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run' -Name 'PowerShell 7' -Value 'C:\Program Files\PowerShell\7\pwsh.exe'

        # need logic here for if no terminal 

# Permissions set - RemoteSigned 
# Enable Restore Point & restore point 'MaintenanceRestorePoint' created / restore point already created
# Install PowerShellGet
# Install PSWindowsUpdate
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned ; Enable-ComputerRestore -Drive "C:\" && Checkpoint-Computer -Description "MaintenanceRestorePoint" -RestorePointType "MODIFY_SETTINGS"  ; Install-Module PowerShellGet  ; Install-Module PSWindowsUpdate

# PSWindowsUpdate update -
# WinGet update - 
Get-WindowsUpdate -Install ; winget upgrade --all --include-unknown ; winget install microsoft.teams.classic

# Adobe Acrobat Reader - checked
# MS Store Apps - updated
# Apple iTunes - checked
# Microsoft Teams Classic - checked
# VLC - checked
# 7z - checked
winget install adobe.acrobat.reader.64-bit ; winget install 9PBVHHSN78BL ; winget install apple.itunes ; winget install VideoLAN.VLC ; winget install 7zip.7zip

# Office & MS 365 updates - OfficeC2RClient.exe - checked
cmd.exe
whoami
"C:\Program Files\Common Files\microsoft shared\ClickToRun\OfficeC2RClient.exe" /update <user>

# Restart
# TaskMgr telemetry - OK
Taskmgr.exe

# Disk cleanup - GB
# Disk ReTrim - allocations trimmed 
# System File Check – found corrupt files and successfully repaired
cleanmgr ; Optimize-Volume -DriveLetter C -ReTrim -Verbose ; sfc /scannow

# Disk ReTrim - allocations trimmed 
Optimize-Volume -DriveLetter C -Verbose
Optimize-Volume -DriveLetter C -ReTrim -Verbose ; sfc /scannow
OR 
Optimize-Volume -DriveLetter C DeFrag -Verbose

# System File Check – found corrupt files and successfully repaired /
sfc /scannow
OR
Start-Process -FilePath "C:\Windows\System32\sfc.exe" -ArgumentList 'verifyonly'
Start-Process -FilePath "C:\Windows\System32\sfc.exe" -ArgumentList 'scannow'







# need something to copy and paste documentation 
# need to edit registry to re enable auto updates 
# need something to launch then close cmd to run auto update
    # check windows install scripts??
# how to start msstore from PS
# how to start settings from ps





# https://github.com/oneget/oneget
Install-Module -Name PackageManagement

# This registers Microsoft Update via a predifened GUID with the Windows Update Agent.
 RegisterMicrosoftUpdate.ps1

