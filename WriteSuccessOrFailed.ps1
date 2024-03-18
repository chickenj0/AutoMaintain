function Run-Command {
    param (
        [string]$Command
    )

    # Run the command
    Invoke-Expression $Command

    # Check if the command succeeded
    if ($?) {
        Write-Host "$Command - Successful"
    } else {
        Write-Host "$Command - Failed"
    }
}

# Run commands and check their success or failure
Run-Command "Get-Process"
Run-Command "whoami"
Run-Command "pwd"
Run-Command "ipconfig"