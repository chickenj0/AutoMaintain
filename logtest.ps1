$logFilePath = "C:\Users\Owner\OneDrive - Nerds 2 You\Pictures\Desktop\VerboseLogs.txt"

# Start logging to the file
Start-Transcript -Path $logFilePath -Append

Write-host "skinny penis"

# Stop logging
Stop-Transcript
