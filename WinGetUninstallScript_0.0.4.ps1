WinGetUninstallScript

# Common suffix for Microsoft apps
$suffix  = "_8wekyb3d8bbwe"

# List of programs to uninstall
$programs = @(
    "Clipchamp.Clipchamp_yxz26nhyzhsrt", 
    "Microsoft.549981C3F5F10", #cortana
    "Microsoft.BingNews",
    "Microsoft.MicrosoftSolitaireCollection",
    "Microsoft.GamingApp", #Xbox
    "Microsoft.XboxGameOverlay", #Xbox Game Bar Plugin
    "Microsoft.ZuneMusic", #Media Player
    "Microsoft.ZuneVideo", #Movies and TV
    "MicrosoftCorporationII.MicrosoftFamily",
    "Microsoft.MicrosoftOfficeHub",
    "Microsoft.Xbox.TCUI" #Xbox TCUI 
    "Microsoft.XboxGamingOverlay" #Game Bar
    "Microsoft.XboxIdentityProvider" #Xbox Identity Provider 
    "Microsoft.XboxSpeechToTextOverlayer" #Xbox Game Speech Window
    "Microsoft.WindowsFeedbackHub" # feedback app 
    "Microsoft.WindowsMaps" # maps  
    "Microsoft.WindowsAlarms" # windows clock
    "Microsoft.BingWeather"    # weather 
    "Microsoft.WindowsSoundRecorder"    # sound recorder
    "MicrosoftCorporationII.QuickAssist" # quick assist
    "Microsoft.PowerAutomateDesktop"    # power automate 
    "Microsoft.People"    # People 
    "Microsoft.Todos"    # microsoft to do 
    # bad teams
    # outlook
    # Add more programs as needed
    # remote desktop connection
)

# Iterate through the list and uninstall each program
foreach ($program in $programs) {
    Write-Host "Uninstalling $program..."
    winget uninstall ($program + $suffix)
}
