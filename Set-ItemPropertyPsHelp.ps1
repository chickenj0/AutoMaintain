# To make PowerShell 7 your default terminal shell with admin credentials, you can use the Set-Item cmdlet to update the registry. Run the following command in a PowerShell session with admin privileges:

# powershell
# Copy code
Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run' -Name 'PowerShell 7' -Value 'C:\Program Files\PowerShell\7\pwsh.exe'

# This assumes that your PowerShell 7 executable is located in the specified path. If it's in a different location, adjust the path accordingly.
# Remember to replace 'C:\Program Files\PowerShell\7\pwsh.exe' with the actual path to your PowerShell 7 executable.
# Please note that modifying the registry can have system-wide effects, so be cautious and ensure that you have the correct path before executing the command.
