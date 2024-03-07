
To reduce repetition in your script, you can create a function that takes care of the logging and execution of each command. This way, you only need to define the command and log message once. Here's an example:

powershell
Copy code
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
This script defines a function Invoke-CommandAndLog that takes a command and a log message. It then uses a hashtable to store the commands and their corresponding log messages. The script iterates through the hashtable and executes each command with the associated log message using the Invoke-CommandAndLog function. This approach makes the script more modular and easier to maintain. Adjust the commands and log messages as needed.



User
talk me through how that code works 
ChatGPT
Certainly! Let's break down the code step by step:

Function Definition:

powershell
Copy code
function Invoke-CommandAndLog {
    param (
        [string]$Command,
        [string]$LogMessage
    )

    Write-Output "$LogMessage..." >> C:\AutoMaintainLogs.txt
    Invoke-Expression $Command
}
This defines a PowerShell function named Invoke-CommandAndLog.
It takes two parameters: $Command (the command to be executed) and $LogMessage (the log message associated with the command).
Inside the function, it appends the log message followed by "..." to the log file (C:\AutoMaintainLogs.txt).
Then, it uses Invoke-Expression to execute the command.
Hashtable Definition:

powershell
Copy code
$commands = @{
    "Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned" = "Setting permissions to RemoteSigned";
    "Enable-ComputerRestore -Drive 'C:\'" = "Enabling System Restore for C: drive";
    # ... (other commands and log messages)
}
This defines a hashtable named $commands where each key represents a command, and the associated value is the log message.
Execution Loop:

powershell
Copy code
foreach ($command in $commands.Keys) {
    Invoke-CommandAndLog -Command $command -LogMessage $commands[$command]
}
This loop iterates through each key in the $commands hashtable (each command).
For each command, it calls the Invoke-CommandAndLog function with the command and the corresponding log message.
Result:

As a result, each command is executed one by one, and its log message is appended to the log file. The use of the hashtable makes it easy to define and maintain the commands and log messages in a structured way.
This approach enhances code maintainability and readability by encapsulating the repetitive logic into a function and using a hashtable to manage the relationship between commands and log messages. It also allows for easy additions or modifications to the list of commands without duplicating code.