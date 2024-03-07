# Set permissions
Start-Process powershell -Verb RunAs
# 
# Create a new text file 'NewFile.txt' in C:\
New-Item -Path C:\Users\NewFile.txt -itemtype file

