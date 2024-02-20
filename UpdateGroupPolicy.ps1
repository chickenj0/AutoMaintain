# Define the registry path for the Windows Update Group Policy setting
$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate"

# Check if the registry path exists, and create it if not
if (-not (Test-Path $registryPath)) {
    New-Item -Path $registryPath -Force
}

# Set the registry value to enable updates for other Microsoft products
Set-ItemProperty -Path $registryPath -Name "AcceptTrustedPublisherCerts" -Value 1

# Display a message indicating that the script has completed
Write-Host "Group Policy updated to allow updates for other Microsoft products."
