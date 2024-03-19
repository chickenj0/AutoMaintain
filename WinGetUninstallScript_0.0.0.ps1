WinGetUninstallScript0.0.0

# List of programs to uninstall
$programs = @(
    "Program1",
    "Program2",
    "Program3"
    # Add more programs as needed
)

# Iterate through the list and uninstall each program
foreach ($program in $programs) {
    Write-Host "Uninstalling $program..."
    winget uninstall -n $program
}
