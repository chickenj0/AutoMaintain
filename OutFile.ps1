function Run-Command {
    param (
        [string]$Command,
        [string]$ClientNotes
    )

    # Run the command and capture the output
    $output = Invoke-Expression $Command

    # Check if the command succeeded
    if ($?) {
        # Write success message to file
        "$Command - Successful" | Out-File -FilePath $ClientNotes -Append
    } else {
        # Write failure message to file
        "$Command - Failed" | Out-File -FilePath $ClientNotes -Append
    }

    # Output the command's output to the console
    $output
}

# Specify the output file path
$ClientNotes = "C:\ClientNotes.txt"

# Run commands and check their success or failure, and output messages to the file
Run-Command "Get-Process" $ClientNotes
Run-Command "whoami" $ClientNotes
Run-Command "pwd" $ClientNotes
Run-Command "ipconfig" $ClientNotes