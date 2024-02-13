// See https://aka.ms/new-console-template for more information
using System.Diagnostics;

Console.WriteLine("Hello, World!");

# Check for Windows updates
$updates = Get - WindowsUpdate

# Check if updates are available
if ($updates.Count - gt 0) {
# Install updates
    Install - WindowsUpdate - MicrosoftUpdate - AcceptAll - Force

    # Check if the update was successful
    if ($?) {
        "Windows 10/11 Updated" | Out - File - FilePath "$env:userprofile\Desktop\update_status.txt" - Force
        Start - Process wordpad - ArgumentList "$env:userprofile\Desktop\update_status.txt"
    } else
    {
        "Update Failed" | Out - File - FilePath "$env:userprofile\Desktop\update_status.txt" - Force
        Start - Process wordpad - ArgumentList "$env:userprofile\Desktop\update_status.txt"
    }
} else
{
    "No updates available" | Out - File - FilePath "$env:userprofile\Desktop\update_status.txt" - Force
    Start - Process wordpad - ArgumentList "$env:userprofile\Desktop\update_status.txt"
}
