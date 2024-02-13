Certainly! To update Google Chrome using PowerShell, you have a couple of options:

Scheduled Task (Recommended):

Google Chrome creates a scheduled task during installation that automatically keeps Chrome up to date.
You can manually trigger this scheduled task using the following command:
"C:\Program Files (x86)\Google\Update\GoogleUpdate.exe" /ua /installsource scheduler