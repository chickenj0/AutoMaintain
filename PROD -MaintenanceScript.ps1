# PROD - Maintenance script

# MSP360 Backup - N/A , Updated , USB / cloud backup started , education given , schedule set
# BitDefender Endpoint Security Tools - signatures updated, modules checked, EDR sensor ON, Device Control OFF
# Intel Driver & Support Assistant - updated
# Lenovo Vantage 
# MS Store Apps - updated 
# Permissions set - RemoteSigned 
# Enable Restore Point & restore point 'MaintenanceRestorePoint' created / restore point already created
# Install PowerShellGet
# Install NuGet
# Install PSWindowsUpdate
# Office and 365 - 
# Samsung Magician - 
# EPSON Software Updater App - 
# AMD Software Installer - 
# DisplayLink Manager -
# Canon - 
# Apple Software Update - 
# HP Smart - 
# MyASUS - 
# Logitech - 
# Adobe Acrobat Reader - 
# Apple iTunes - 
# VLC - 
# 7z - 

Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned ; Enable-ComputerRestore -Drive "C:\" ; Checkpoint-Computer -Description "MaintenanceRestorePoint" -RestorePointType "MODIFY_SETTINGS"  ; Install-Module PowerShellGet  ; Install-PackageProvider -Name NuGet ; Install-Module PSWindowsUpdate
winget install adobe.acrobat.reader.64-bit ;  winget install apple.itunes ; winget install VideoLAN.VLC ; winget install 7zip.7zip
    

    # Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force
    # WARNING: A new system restore point cannot be created because one has already been created within the past 1440
    # minutes. The frequency of restore point creation can be changed by creating the DWORD value
    # 'SystemRestorePointCreationFrequency' under the registry key 'HKLM\Software\Microsoft\Windows
    # NT\CurrentVersion\SystemRestore'. The value of this registry key indicates the necessary time interval (in minutes)
    # between two restore point creation. The default value is 1440 minutes (24 hours).

    # You are installing the modules from an untrusted repository. If you trust this repository, change its
    # InstallationPolicy value by running the Set-PSRepository cmdlet. Are you sure you want to install the modules from
    # 'PSGallery'?
    # [Y] Yes  [A] Yes to All  [N] No  [L] No to All  [S] Suspend  [?] Help (default is "N"): a
    # WARNING: Version '1.0.0.1' of module 'PowerShellGet' is already installed at 'C:\Program
    # Files\WindowsPowerShell\Modules\PowerShellGet\1.0.0.1'. To install version '2.2.5', run Install-Module and add the
    # -Force parameter, this command will install version '2.2.5' in side-by-side with version '1.0.0.1'.


# PSWindowsUpdate update -
# WinGet update - 
# Microsoft Teams Classic - checked
        # how to open new powershell window or run commands in parallel
        # probably open new terminal , then write to the terminal 'winget upgrade ...'
Get-WindowsUpdate -Install ; winget upgrade --all --include-unknown ; winget install microsoft.teams.classic --source winget

# Adobe Acrobat Reader - checked
# MS Store Apps - updated
# Apple iTunes - checked
# VLC - checked
# 7z - checked
winget install adobe.acrobat.reader.64-bit ; winget install apple.itunes ; winget install VideoLAN.VLC ; winget install 7zip.7zip


# Office & MS 365 updates - OfficeC2RClient.exe - checked
# cmd.exe
# whoami
# "C:\Program Files\Common Files\microsoft shared\ClickToRun\OfficeC2RClient.exe" /update <user>

# Restart
# TaskMgr telemetry - OK
Taskmgr.exe

# Disk cleanup - GB
# Disk ReTrim - allocations trimmed 
# System File Check – found corrupt files and successfully repaired
cleanmgr ; Optimize-Volume -DriveLetter C -ReTrim -Verbose ; sfc /scannow


# MSP360 Backup -  USB check quick restore successful





# Disk ReTrim - allocations trimmed 
# Optimize-Volume -DriveLetter C -analyse -Verbose
# Optimize-Volume -DriveLetter C -ReTrim -Verbose
# OR 
# Optimize-Volume -DriveLetter C DeFrag -Verbose

# System File Check – found corrupt files and successfully repaired /
sfc /scannow

# OR
# Start-Process -FilePath "C:\Windows\System32\sfc.exe" -ArgumentList 'verifyonly'
# Start-Process -FilePath "C:\Windows\System32\sfc.exe" -ArgumentList 'scannow'

# enable storage sense 

# need something to copy and paste documentation 
# need to edit registry to re enable auto updates 
# need something to launch then close cmd to run auto update
    # check windows install scripts??
# how to start msstore from PS
# how to start settings from ps


# https://github.com/oneget/oneget
# Install-Module -Name PackageManagement

# This registers Microsoft Update via a predifened GUID with the Windows Update Agent.
 RegisterMicrosoftUpdate.ps1

