# Set permissions
Start-Process powershell -Verb RunAs
cd C:\Users\Owner\'OneDrive - Nerds 2 You'\Documents\GitHub\AutoMaintain
Set-ExecutionPolicy bypass -scope process -force


# Return permissions to normal 
Set-ExecutionPolicy -Scope Process -Default