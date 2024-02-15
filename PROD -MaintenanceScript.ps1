# PROD - Maintenance script

# MSP360 Backup - N/A


# Install PowerShell
winget install --id Microsoft.Powershell --source winget

# Set Admin:Powershell as default terminal
Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run' -Name 'PowerShell 7' -Value 'C:\Program Files\PowerShell\7\pwsh.exe'

        # need logic here for if no terminal 

# Permissions set - RemoteSigned 
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned 

# Enable Restore Point & Restore point 'MaintenanceRestorePoint' created
Enable-ComputerRestore -Drive "C:\" && Checkpoint-Computer -Description "MaintenanceRestorePoint" -RestorePointType "MODIFY_SETTINGS"  

# Install PowerShellGet
Install-Module PowerShellGet  

# Install PSWindowsUpdate
Install-Module PSWindowsUpdate

# Update WindowsOS & WinGet
# PSWindowsUpdate update - ()
# WinGet upgrade - ()
Get-WindowsUpdate -Install && winget upgrade --all

# Office & MS 365 updates - OfficeC2RClient.exe - checked
cmd.exe
whoami
"C:\Program Files\Common Files\microsoft shared\ClickToRun\OfficeC2RClient.exe" /update <user>

# TaskMgr telemetry - OK
Taskmgr.exe

# Disk cleanup - ( GB) 
cleanmgr /sagerun:1 -Verbose 

# Disk ReTrim - allocations trimmed ()
Optimize-Volume -DriveLetter C -Verbose
Optimize-Volume -DriveLetter C -ReTrim -Verbose
OR 
Optimize-Volume -DriveLetter C DeFrag -Verbose

# System File Check – found corrupt files and successfully repaired / 
sfc /scannow
OR
Start-Process -FilePath "C:\Windows\System32\sfc.exe" -ArgumentList 'verifyonly'
Start-Process -FilePath "C:\Windows\System32\sfc.exe" -ArgumentList 'scannow'


Disk cleanup – () 
Disk retrim - 
System file check 


BitDefender Endpoint Security Tools - signatures updated, modules checked, EDR sensor ON, Device Control OFF
Intel Driver & Support Assistant updated – ()



need something to copy and paste documentation 
need to edit registry to re enable auto updates 
need something to launch then close cmd to run auto update
how to start msstore from PS
how to start settings from ps





# https://github.com/oneget/oneget
Install-Module -Name PackageManagement

# This registers Microsoft Update via a predifened GUID with the Windows Update Agent.
 RegisterMicrosoftUpdate.ps1

