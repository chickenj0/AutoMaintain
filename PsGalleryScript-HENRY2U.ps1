# Getting Started with the PowerShell Gallery
# install powershell
winget install --id Microsoft.Powershell --source winget

# set execution policy PS
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned 

# Create restore checkpoint
Enable-ComputerRestore -Drive "C:\" && Checkpoint-Computer -Description "MaintenanceRestorePoint" -RestorePointType "MODIFY_SETTINGS"  

# install powershellget
Find-Module -Name PowerShellGet | Install-Module  
Install-PackageProvider -Name NuGet

# install relevant modules
Install-Module -Name PSWindowsUpdate PowerShellGet
Install-Module -Name PowerShellGet


# update WindowsOS & WinGet
get-windowsupdate -install && winget upgrade --all

# update windows Office and 365
cmd.exe
whoami
"C:\Program Files\Common Files\microsoft shared\ClickToRun\OfficeC2RClient.exe" /update <user>

Install-Module -Name DellBIOSProvider

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




# https://github.com/oneget/oneget

Install-Module -Name PackageManagement