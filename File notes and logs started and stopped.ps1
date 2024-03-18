File notes and logs started and stopped 

Start-Transcript -Path C:\AutoMaintain.log -Append

# Assign file paths to variables
$AutoMaintainLog = "C:\AutoMaintain.log"
$ClientNotes = "C:\ClientNotes.txt"

# Create ClientNotes.txt file
New-Item -ItemType File -Path C:\ClientNotes.txt

Write-Host "very clever"

$CurrentDate = Get-Date -Format "yyyy-MM-dd"
$ComputerName = $env:COMPUTERNAME
$pwd = Get-Location
$ClientNotesName = "${CurrentDate}_${ComputerName}_AutoMaintainClientNotes.txt"
$AutoMaintainLogName = "${CurrentDate}_${ComputerName}_AutoMaintainLog.txt"

# Move files to the current directory with new names
Move-Item -Path 'C:\ClientNotes.txt' -Destination "$pwd\$ClientNotesName" -Force
Move-Item -Path 'C:\AutoMaintain.log' -Destination "$pwd\$AutoMaintainLogName" -Force

# Get contents of ClientNotes.txt
$ClientNotesContent = Get-Content "$pwd\$ClientNotesName"

# Stop transcript logging
Stop-Transcript
