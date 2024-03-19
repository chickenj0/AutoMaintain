WinGetUninstallScript0.0.0

# List of programs to uninstall
$programs = @(
    "Clipchamp.Clipchamp_yxz26nhyzhsrt", 
    "Microsoft.549981C3F5F10_8wekyb3d8bbwe", #cortana
    "Microsoft.BingNews_8wekyb3d8bbwe",
    "Microsoft.MicrosoftSolitaireCollection_8wekyb3d8bbwe",
    "Microsoft.GamingApp_8wekyb3d8bbw",
    "Microsoft.XboxGamingOverlay_8wekyb3d8bbw",
    "Microsoft.ZuneMusic_8wekyb3d8bbwe",
    "Microsoft.ZuneVideo_8wekyb3d8bbwe",
    "MicrosoftCorporationII.MicrosoftFamily_8wekyb3d8bbwe",
    "Microsoft.MicrosoftOfficeHub_8wekyb3d8bbwe",
    "Microsoft.GamingApp_8wekyb3d8bbwe"
    # dolby access
    # feedback app 
    # english uk local experience pack 
    # maps .\.1passwordmovie player 
    # media  
    # teams 
    # xbox live
    # windows clock
    # weather 
    # sound recorder
    # remote desktop connection
    # quick assist
    # power automate 
    # People 
    # microsoft to do 
    # bad teams
    # outlook
    # Add more programs as needed
)

# Iterate through the list and uninstall each program
foreach ($program in $programs) {
    Write-Host "Uninstalling $program..."
    winget uninstall $program
}
