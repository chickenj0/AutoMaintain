# To schedule a computer restart in 15 minutes using PowerShell, you have a couple of options:

# Using shutdown.exe:
# Calculate the time difference between the current time and 15 minutes from now (e.g., if it’s currently 10:00 AM, we want to restart at 10:15 AM).
# Run the following command to schedule the restart:

shutdown -r -t 900

# You can calculate the time difference between the current time and the desired restart time (e.g., 3:00 AM the following day) in seconds. Then, use the following command to schedule the restart:

shutdown -r -t ( [decimal]::round ( ( (Get-Date).AddDays (1).Date.AddHours (3) - (Get-Date)).TotalSeconds))


# As a scheduled task:
# Create a scheduled task that runs the following PowerShell command:
# Set this task to run 15 minutes from the current time. You can use the New-ScheduledTaskTrigger cmdlet to configure the desired start time and repetition interval

Restart-Computer -Force

# New-ScheduledTaskTrigger
# To schedule a task to be executed in 15 minutes using PowerShell, you can create a scheduled task trigger with the desired delay. Here’s how you can do it:

# Using New-ScheduledTaskTrigger:
# First, create the action for your task (replace <task.exe> with the actual path to your executable):

$action = New-ScheduledTaskAction -Execute "<task.exe>"

# Next, create the trigger with a 15-minute delay:

$trigger = New-ScheduledTaskTrigger -Once -At (Get-Date).AddMinutes(15)

# Finally, register the scheduled task:
# Register-ScheduledTask -TaskName "MyTask" -Action $action -Trigger $trigger
# This will create a task named “MyTask” that runs <task.exe> after a 15-minute delay from the current time.
# Remember to replace <task.exe> with the actual path to your executable. Happy scheduling! 😊