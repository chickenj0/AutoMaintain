# Getting Started with the PowerShell Gallery

# isnall powershell
winget install --id Microsoft.Powershell --source winget

# isntall choco and set execution policy
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# choco install & upgrade intel dsa
choco install intel-dsa
choco upgrade intel-dsa

# set execution policy PS
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned 
Write-Host "Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned"

# Create restore checkpoint
Enable-ComputerRestore -Drive "C:\"
Checkpoint-Computer -Description "MaintenanceRestorePoint" -RestorePointType "MODIFY_SETTINGS"  
Write-Host "Restore point 'MaintenanceRestorePoint' created"


# install powershellget
Find-Module -Name PowerShellGet | Install-Module -Force | clip

# install relevant modules
Install-Module -Name PSWindowsUpdate -Force 
Install-Module -Name PackageManagement -Force && Write-Host "install relevant modules: PackageManagement"

# update WindowsOS & WinGet
get-windowsupdate -install -acceptall -forceinstall -Verbose && Write-Host "WindowsOS updated" | clip
winget upgrade -h --all
Write-Host "WinGet Run" | clip

# update windows 
get-windowsupdate -install -acceptall -forceinstall -Verbose && Write-Host "windows updated"

# disk cleanup 
cleanmgr /sagerun:1 -Verbose && Write-Host "disk cleanup run"

# disk defragment 
Optimize-Volume -DriveLetter C -Analyze -Verbose && Write-Host "disk defragment analysed" && Optimize-Volume -DriveLetter C -Defrag -Verbose && Write-Host "disk defragment completed" 

# system file check 
Start-Process -FilePath "C:\Windows\System32\sfc.exe" -ArgumentList 'verifyonly' && Write-Host "system file check verify completed" 

Start-Process -FilePath "C:\Windows\System32\sfc.exe" -ArgumentList 'scannow' && Write-Host "system file check completed" 

# output done!
Write-Host "Done!"



# update windows Office and 365
cmd.exe
"C:\Program Files\Common Files\microsoft shared\ClickToRun\OfficeC2RClient.exe" /update <user>