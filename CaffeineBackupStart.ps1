To schedule Caffeine.exe to start and stop automatically at 3 PM on Fridays in Windows 11, you can use the Task Scheduler. Here's a step-by-step guide:

1. **Open Task Scheduler:**
   - Press `Win + S` to open the search bar.
   - Type "Task Scheduler" and press `Enter` to open it.

2. **Create a new task:**
   - In the Task Scheduler, right-click on the "Task Scheduler Library" in the left pane.
   - Choose "Create Basic Task" from the context menu.

3. **Name and description:**
   - Enter a name and description for your task.
   - Click "Next."

4. **Trigger:**
   - Choose "Weekly" as the trigger.
   - Set the day to "Friday."
   - Set the start date to today or any future date.
   - Set the start time to "3:00 PM."
   - Click "Next."

5. **Action:**
   - Choose "Start a program" as the action.
   - Click "Next."

6. **Program/script:**
   - Browse and select the Caffeine.exe file on your computer.

7. **Finish:**
   - Review your settings and click "Finish."

8. **Modify the task for stopping:**
   - In the Task Scheduler Library, find your newly created task.
   - Right-click on it and choose "Properties."
   - Go to the "Actions" tab, click on the existing action, and then click "Edit."
   - In the "Add arguments" field, add the argument `/force` (e.g., `C:\Path\To\Caffeine.exe /force`).
   - Click "OK" to save the changes.

Now, your Caffeine.exe will start automatically at 3 PM every Friday. The modified task will force it to stop at the end time. Make sure to adjust the file path according to the actual location of your Caffeine.exe executable.