SCRIPTING DRAFT ENVIRONMENT

# copy text to the clipboard
Set-Clipboard -Value "Your text here"

# update windows Office and 365
cmd.exe
whoami
"C:\Program Files\Common Files\microsoft shared\ClickToRun\OfficeC2RClient.exe" /update <user>

# install choco and set execution policy
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# choco install & upgrade intel dsa
choco install intel-dsa
choco upgrade intel-dsa

# install relevant modules
Install-Module -Name PackageManagement -Force && Write-Host "install relevant modules: PackageManagement"




# output done!
Write-Host "Done!"



Using Command Prompt (CMD):

You can run Windows Update from the Command Prompt using the wuauclt.exe utility. This allows you to check for updates, download them, and install them from the command line. Keep in mind that running Windows Update through CMD won’t show progress; only the results will be displayed when the process is complete1.
Example command:

wuauclt.exe /detectnow

Using PowerShell:

On Windows 10 and 11, Microsoft uses the Update Session Orchestrator Client (UsoClient.exe) tool for updating system components. You can run it from PowerShell to trigger updates.
Example command:

UsoClient.exe startscan