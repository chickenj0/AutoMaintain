# Create a COM object for Microsoft Update
$updateSession = New-Object -ComObject Microsoft.Update.Session

# Create a COM object for the update searcher
$updateSearcher = $updateSession.CreateUpdateSearcher()

# Search for pending updates related to Microsoft Office
$officeUpdates = $updateSearcher.Search("IsInstalled=0 and Type='Software' and CategoryIDs contains '6C0A7FC0-1A41-4622-87B1-1D4F581AD9D2'")

# Check if there are updates available
if ($officeUpdates.Updates.Count -gt 0) {
    Write-Host "Updates available for Microsoft Office:"

    # Display information about each update
    foreach ($update in $officeUpdates.Updates) {
        Write-Host "Title: $($update.Title)"
        Write-Host "Description: $($update.Description)"
        Write-Host "IsMandatory: $($update.IsMandatory)"
        Write-Host "--------------"
    }
} else {
    Write-Host "No updates available for Microsoft Office."
}
