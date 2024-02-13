# Getting Started with the PowerShell Gallery
# install powershell
winget install --id Microsoft.Powershell --source winget

Install PowerShell


# set execution policy PS
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned 

Permissions set - RemoteSigned 


# Create restore checkpoint
Enable-ComputerRestore -Drive "C:\" && Checkpoint-Computer -Description "MaintenanceRestorePoint" -RestorePointType "MODIFY_SETTINGS"  

Enable Restore Point & Restore point 'MaintenanceRestorePoint' created


# install powershellget
Find-Module -Name PowerShellGet | Install-Module  
Install-PackageProvider -Name NuGet

# install relevant modules
Install-Module PSWindowsUpdate && install-module PowerShellGet

Install PowerShellGet & PSWindowsUpdate

# update WindowsOS & WinGet
get-windowsupdate -install && winget upgrade --all

PSWindowsUpdate update - ()
WinGet upgrade - ()

# update windows Office and 365
cmd.exe
whoami
"C:\Program Files\Common Files\microsoft shared\ClickToRun\OfficeC2RClient.exe" /update <user>

Office & 365 updates - OfficeC2RClient.exe - checked


# disk cleanup 
cleanmgr /sagerun:1 -Verbose 

# disk defragment 
Optimize-Volume -DriveLetter C -Verbose
Optimize-Volume -DriveLetter C -ReTrim -Verbose
OR 
Optimize-Volume -DriveLetter C DeFrag -Verbose

# system file check 
sfc /scannow
OR
Start-Process -FilePath "C:\Windows\System32\sfc.exe" -ArgumentList 'verifyonly'
Start-Process -FilePath "C:\Windows\System32\sfc.exe" -ArgumentList 'scannow'


BitDefender Endpoint Security Tools - signatures updated, modules checked (EDR sensor ON), 
Intel Driver & Support Assistant updated – ()
Backups - Egnyte


need something to copy and paste documentation 
need to edit registry to re enable auto updates 
need something to launch then close cmd to run auto update
how to start msstore from PS
how to start settings from ps





# https://github.com/oneget/oneget

Install-Module -Name PackageManagement


