WINGET COMMANDS 

winget export -o <Path>\<EXPORT.TXT or JASON>
        eg. 
        Exported package requires license agreement to install: 1Password
        Installed package is not available from any source: Bitwarden
        Installed package is not available from any source: Intel® Graphics Command Center
        Installed package is not available from any source: ThunderboltTM Control Center
        Installed package is not available from any source: iTunes
        Exported package requires license agreement to install: Brave
        Installed package is not available from any source: MSP360 Backup (formerly CloudBerry) 7.9.2
        Installed package is not available from any source: Dolby Audio Speaker System
        Installed package is not available from any source: Lenovo Companion
        Installed package is not available from any source: Microsoft Azure Compute Emulator - v2.9.7
        Installed package is not available from any source: Microsoft Edge Update
        Installed package is not available from any source: Microsoft Defender
        Installed package is not available from any source: Get Help
        Installed package is not available from any source: Microsoft Tips
        Installed package is not available from any source: HEIF Image Extensions
        Installed package is not available from any source: HEVC Video Extensions from the Device Manufacturer
        Installed package is not available from any source: English (United Kingdom) Local Experience Pack
        Installed package is not available from any source: MSIX Packaging Tool
        Installed package is not available from any source: Microsoft Edge
        Installed package is not available from any source: Microsoft .Net Native Framework Package 1.3
        Installed package is not available from any source: Microsoft .Net Native Framework Package 1.7
        Installed package is not available from any source: Microsoft .Net Native Framework Package 2.1
        Installed package is not available from any source: Microsoft .Net Native Framework Package 2.2
        Installed package is not available from any source: Microsoft .Net Native Runtime Package 1.4
        Installed package is not available from any source: Microsoft .Net Native Runtime Package 1.7
        Installed package is not available from any source: Microsoft .Net Native Runtime Package 2.1
        Installed package is not available from any source: Microsoft .Net Native Runtime Package 2.2
        Installed package is not available from any source: OneDrive
        Installed package is not available from any source: Outlook for Windows
        Installed package is not available from any source: Microsoft People
        Installed package is not available from any source: Power Automate
        Installed package is not available from any source: PowerShell
        Installed package is not available from any source: PowerToys ImageResizer Context Menu
        Installed package is not available from any source: PowerToys PowerRename Context Menu
        Installed package is not available from any source: Raw Image Extension
        Installed package is not available from any source: Windows Security
        Installed package is not available from any source: Microsoft Engagement Framework
        Installed package is not available from any source: Store Experience Host
        Installed package is not available from any source: Sysinternals Suite
        Installed package is not available from any source: Microsoft To Do
        Installed package is not available from any source: Microsoft Visual C++ 2015 UWP Runtime Package
        Installed package is not available from any source: VP9 Video Extensions
        Installed package is not available from any source: Web Media Extensions
        Installed package is not available from any source: Webp Image Extensions
        Installed package is not available from any source: Dev Home Azure Extension (Preview)
        Installed package is not available from any source: Dev Home GitHub Extension (Preview)
        Installed package is not available from any source: Microsoft Photos
        Installed package is not available from any source: Windows Clock
        Installed package is not available from any source: WindowsAppRuntime.1.1
        Installed package is not available from any source: Microsoft.WindowsAppRuntime.1.3
        Installed package is not available from any source: WindowsAppRuntime.1.4
        Installed package is not available from any source: Windows Calculator
        Installed package is not available from any source: Windows Camera
        Installed package is not available from any source: Feedback Hub
        Installed package is not available from any source: Windows Notepad
        Installed package is not available from any source: Windows Sound Recorder
        Installed package is not available from any source: Microsoft Store
        Installed package is not available from any source: Windows Package Manager Source (platform)
        Installed package is not available from any source: Windows Package Manager Source (winget)
        Installed package is not available from any source: Xbox TCUI
        Installed package is not available from any source: Xbox Game Bar Plugin
        Installed package is not available from any source: Game Bar
        Installed package is not available from any source: Xbox Identity Provider
        Installed package is not available from any source: Xbox Game Speech Window
        Installed package is not available from any source: Phone Link
        Installed package is not available from any source: Quick Assist
        Installed package is not available from any source: Microsoft Teams
        Installed package is not available from any source: Windows Web Experience Pack
        Installed package is not available from any source: Ninja Remote
        Installed package is not available from any source: Notepad++
        Installed package is not available from any source: Microsoft 365 Apps for business - en-us
        Installed package is not available from any source: Proton VPN
        Installed package is not available from any source: Realtek Audio Control
        Installed package is not available from any source: Synaptics Trackpoint Control Panel
        Installed package is not available from any source: Synaptics TouchPad Control Panel
        Installed package is not available from any source: PrebootManager
        Installed package is not available from any source: Lenovo Vantage Service
        Installed package is not available from any source: Proton Mail
        Installed package is not available from any source: Proton Pass Web App
        Installed package is not available from any source: Proton Drive
        Installed package is not available from any source: Proton Mail
        Installed package is not available from any source: Proton Pass Web App
        Installed package is not available from any source: Intel(R) Wireless Bluetooth(R)
        Installed package is not available from any source: Intel(R) Computing Improvement Program
        Installed package is not available from any source: vs_CoreEditorFonts
        Installed package is not available from any source: Microsoft .NET SDK 8.0.101 (x64) from Visual Studio
        Installed package is not available from any source: Microsoft SQL Server 2019 LocalDB
        Installed package is not available from any source: Microsoft Azure PowerShell - April 2018
        Installed package is not available from any source: Microsoft Azure Libraries for .NET – v2.9
        Installed package is not available from any source: Microsoft ODBC Driver 17 for SQL Server
        Installed package is not available from any source: Windows SDK AddOn
        Installed package is not available from any source: Bonjour
        Exported package requires license agreement to install: Microsoft Visual Studio Installer
        Installed package is not available from any source: Splashtop for RMM
        Installed package is not available from any source: Microsoft Azure Authoring Tools - v2.9.7
        Installed package is not available from any source: Microsoft Teams Meeting Add-in for Microsoft Office
        Installed package is not available from any source: Bonjour SDK
        Installed package is not available from any source: Microsoft Update Health Tools
        Installed package is not available from any source: IIS 10.0 Express


winget import -i <Path>\<EXPORT.TXT or JASON>

winget list 
winget list -q Adobe
        PS C:\Users\Owner> winget list
        Name                                               Id                                                        Version             Source
        -----------------------------------------------------------------------------------------------------------------------------------------
        1Password                                          XP99C9G0KRDZ27                                            8.10.24             msstore
        Microsoft Support and Recovery Assistant           Microsoft.SupportAndRecoveryAssistant                     17.1.987.16         winget
        Bitwarden                                          8bitSolutionsLLC.bitwardendesktop_h4e712dmw3xyy           2024.1.0.0
        Intel® Graphics Command Center                     AppUp.IntelGraphicsExperience_8j3eq9eme6ctt               1.100.5287.0
        ThunderboltTM Control Center                       AppUp.ThunderboltControlCenter_8j3eq9eme6ctt              1.0.37.0
        iTunes                                             AppleInc.iTunes_nzyj5cx40ttqa                             12131.3.2010.0
        Brave                                              XP8C9QZMS2PC1T                                            121.1.62.162        msstore
        MSP360 Backup (formerly CloudBerry) 7.9.2          CloudBerry Backup                                         7.9.2
        Dolby Audio Speaker System                         DolbyLaboratories.DolbyAudioSpeakerSystem_rz1tebttyb220   3.20900.902.0
        Lenovo Companion                                   E046963F.LenovoCompanion_k1h2ywk1493x8                    10.2401.24.0
        GitHub Desktop                                     GitHub.GitHubDesktop                                      3.3.8               winget
        Git                                                Git.Git                                                   2.43.0              winget
        GNU Privacy Guard                                  GnuPG.GnuPG                                               2.4.4               winget
        Gpg4win (4.3.0)                                    GnuPG.Gpg4win                                             4.3.0               winget
        Greenshot 1.2.10.6                                 Greenshot.Greenshot                                       1.2.10.6            winget
        Microsoft Teams (work or school)                   Microsoft.Teams                                           23335.232.2637.4844 winget
        Microsoft Azure Compute Emulator - v2.9.7          Microsoft Azure Compute Emulator - v2.9.7                 2.9.8999.43
        Microsoft Edge                                     Microsoft.Edge                                            121.0.2277.106      winget
        Microsoft Edge Update                              Microsoft Edge Update                                     1.3.183.29
        Microsoft Edge WebView2 Runtime                    Microsoft.EdgeWebView2Runtime                             121.0.2277.98       winget
        Microsoft Defender                                 Microsoft.6365217CE6EB4_8wekyb3d8bbwe                     102.2311.21003.0
        App Installer                                      Microsoft.AppInstaller                                    1.21.3482.0         winget
        Get Help                                           Microsoft.GetHelp_8wekyb3d8bbwe                           10.2308.12552.0
        Microsoft Tips                                     Microsoft.Getstarted_8wekyb3d8bbwe                        10.2312.1.0
        HEIF Image Extensions                              Microsoft.HEIFImageExtension_8wekyb3d8bbwe                1.0.63001.0
        HEVC Video Extensions from the Device Manufacturer Microsoft.HEVCVideoExtension_8wekyb3d8bbwe                2.0.61931.0
        English (United Kingdom) Local Experience Pack     Microsoft.LanguageExperiencePacken-GB_8wekyb3d8bbwe       22621.37.194.0
        MSIX Packaging Tool                                Microsoft.MSIXPackagingTool_8wekyb3d8bbwe                 1.2023.1005.0
        Microsoft Edge                                     Microsoft.MicrosoftEdge.Stable_8wekyb3d8bbwe              121.0.2277.106
        Microsoft .Net Native Framework Package 1.3        Microsoft.NET.Native.Framework.1.3_8wekyb3d8bbwe          1.3.24211.0
        Microsoft .Net Native Framework Package 1.7        Microsoft.NET.Native.Framework.1.7_8wekyb3d8bbwe          1.7.27413.0
        Microsoft .Net Native Framework Package 2.1        Microsoft.NET.Native.Framework.2.1_8wekyb3d8bbwe          2.1.27427.0
        Microsoft .Net Native Framework Package 2.2        Microsoft.NET.Native.Framework.2.2_8wekyb3d8bbwe          2.2.29512.0
        Microsoft .Net Native Runtime Package 1.4          Microsoft.NET.Native.Runtime.1.4_8wekyb3d8bbwe            1.4.24201.0
        Microsoft .Net Native Runtime Package 1.7          Microsoft.NET.Native.Runtime.1.7_8wekyb3d8bbwe            1.7.27422.0
        Microsoft .Net Native Runtime Package 2.1          Microsoft.NET.Native.Runtime.2.1_8wekyb3d8bbwe            2.1.26424.0
        Microsoft .Net Native Runtime Package 2.2          Microsoft.NET.Native.Runtime.2.2_8wekyb3d8bbwe            2.2.28604.0
        OneDrive                                           Microsoft.OneDriveSync_8wekyb3d8bbwe                      24023.131.3.0
        Outlook for Windows                                Microsoft.OutlookForWindows_8wekyb3d8bbwe                 1.2024.111.100
        Microsoft People                                   Microsoft.People_8wekyb3d8bbwe                            10.2202.33.0
        Power Automate                                     Microsoft.PowerAutomateDesktop_8wekyb3d8bbwe              11.2401.31.0
        PowerShell                                         Microsoft.PowerShell_8wekyb3d8bbwe                        7.4.1.0
        PowerToys ImageResizer Context Menu                Microsoft.PowerToys.ImageResizerContextMenu_8wekyb3d8bbwe 0.78.0.0
        PowerToys PowerRename Context Menu                 Microsoft.PowerToys.PowerRenameContextMenu_8wekyb3d8bbwe  0.78.0.0
        Raw Image Extension                                Microsoft.RawImageExtension_8wekyb3d8bbwe                 2.3.171.0
        Windows Security                                   Microsoft.SecHealthUI_8wekyb3d8bbwe                       1000.25873.9001.0
        Microsoft Engagement Framework                     Microsoft.Services.Store.Engagement_8wekyb3d8bbwe         10.0.23012.0
        Store Experience Host                              Microsoft.StorePurchaseApp_8wekyb3d8bbwe                  22312.1401.1.0
        Sysinternals Suite                                 Microsoft.SysinternalsSuite_8wekyb3d8bbwe                 2024.1.0.0
        Microsoft To Do                                    Microsoft.Todos_8wekyb3d8bbwe                             2.114.7122.0
        Microsoft.UI.Xaml.2.7                              Microsoft.UI.Xaml.2.7                                     7.2208.15002.0      winget
        Microsoft.UI.Xaml.2.8                              Microsoft.UI.Xaml.2.8                                     8.2310.30001.0      winget
        Microsoft Visual C++ 2015 UWP Desktop Runtime Pac… Microsoft.VCLibs.Desktop.14                               14.0.33519.0        winget
        Microsoft Visual C++ 2015 UWP Runtime Package      Microsoft.VCLibs.140.00_8wekyb3d8bbwe                     14.0.33519.0
        VP9 Video Extensions                               Microsoft.VP9VideoExtensions_8wekyb3d8bbwe                1.1.41.0
        Web Media Extensions                               Microsoft.WebMediaExtensions_8wekyb3d8bbwe                1.0.62931.0
        Webp Image Extensions                              Microsoft.WebpImageExtension_8wekyb3d8bbwe                1.1.171.0
        Dev Home Azure Extension (Preview)                 Microsoft.Windows.DevHomeAzureExtension_8wekyb3d8bbwe     0.500.389.0
        Dev Home GitHub Extension (Preview)                Microsoft.Windows.DevHomeGitHubExtension_8wekyb3d8bbwe    0.1000.393.0
        Dev Home (Preview)                                 Microsoft.DevHome                                         0.1001.389.0        winget
        Microsoft Photos                                   Microsoft.Windows.Photos_8wekyb3d8bbwe                    2024.11010.23003.0
        Windows Clock                                      Microsoft.WindowsAlarms_8wekyb3d8bbwe                     11.2312.2.0
        WindowsAppRuntime.1.1                              Microsoft.WindowsAppRuntime.1.1_8wekyb3d8bbwe             1005.616.1651.0
        Microsoft.WindowsAppRuntime.1.3                    Microsoft.WindowsAppRuntime.1.3_8wekyb3d8bbwe             3000.934.1904.0
        WindowsAppRuntime.1.4                              Microsoft.WindowsAppRuntime.1.4_8wekyb3d8bbwe             4000.1082.2259.0
        Windows Calculator                                 Microsoft.WindowsCalculator_8wekyb3d8bbwe                 11.2311.0.0
        Windows Camera                                     Microsoft.WindowsCamera_8wekyb3d8bbwe                     2023.2312.3.0
        Feedback Hub                                       Microsoft.WindowsFeedbackHub_8wekyb3d8bbwe                1.2309.12711.0
        Windows Notepad                                    Microsoft.WindowsNotepad_8wekyb3d8bbwe                    11.2312.18.0
        Windows Sound Recorder                             Microsoft.WindowsSoundRecorder_8wekyb3d8bbwe              11.2312.2.0
        Microsoft Store                                    Microsoft.WindowsStore_8wekyb3d8bbwe                      22312.1401.5.0
        Windows Terminal                                   Microsoft.WindowsTerminal                                 1.19.10302.0        winget
        Windows Package Manager Source (platform)          Microsoft.Winget.Platform.Source_8wekyb3d8bbwe            2024.105.1947.899
        Windows Package Manager Source (winget)            Microsoft.Winget.Source_8wekyb3d8bbwe                     2024.207.2106.119
        Xbox TCUI                                          Microsoft.Xbox.TCUI_8wekyb3d8bbwe                         1.24.10001.0
        Xbox Game Bar Plugin                               Microsoft.XboxGameOverlay_8wekyb3d8bbwe                   1.54.4001.0
        Game Bar                                           Microsoft.XboxGamingOverlay_8wekyb3d8bbwe                 6.124.1221.0
        Xbox Identity Provider                             Microsoft.XboxIdentityProvider_8wekyb3d8bbwe              12.95.3001.0
        Xbox Game Speech Window                            Microsoft.XboxSpeechToTextOverlay_8wekyb3d8bbwe           1.21.13002.0
        Phone Link                                         Microsoft.YourPhone_8wekyb3d8bbwe                         1.23122.73.0
        Quick Assist                                       MicrosoftCorporationII.QuickAssist_8wekyb3d8bbwe          2.0.22.0
        Microsoft Teams                                    MicrosoftTeams_8wekyb3d8bbwe                              23335.242.2641.4129
        Windows Web Experience Pack                        MicrosoftWindows.Client.WebExperience_cw5n1h2txyewy       424.1301.40.0
        Ninja Remote                                       Ninja Remote                                              5.22.4853
        Notepad++ (64-bit x64)                             Notepad++.Notepad++                                       8.6.2               winget
        Notepad++                                          NotepadPlusPlus_7njy0v32s6xk6                             1.0.0.0
        Microsoft 365 Apps for business - en-us            O365BusinessRetail - en-us                                16.0.17328.20004
        Microsoft OneDrive                                 Microsoft.OneDrive                                        24.023.0131.0003    winget
        Proton Drive                                       Proton.ProtonDrive                                        1.4.9               winget
        Proton VPN                                         Proton VPN_is1                                            3.2.10
        Realtek Audio Control                              RealtekSemiconductorCorp.RealtekAudioControl_dt26b99r8h8… 1.36.273.0
        Synaptics Trackpoint Control Panel                 SynapticsIncorporated.241916F58D6E7_807d65c4rvak2         19005.19089.0.0
        Synaptics TouchPad Control Panel                   SynapticsIncorporated.SynapticsControlPanel_807d65c4rvak2 19005.19089.0.0
        PrebootManager                                     SynapticsIncorporated.SynapticsUtilities_807d65c4rvak2    1.1.18.0
        Lenovo Vantage Service                             VantageSRV_is1                                            4.0.52.0
        Proton Mail                                        ba0a5967afb94ec617d4d596422a6b5e                          1.0
        Visual Studio Community 2022                       XPDCFJDKLZJLP8                                            17.8.6              winget
        Proton Pass Web App                                cfa59daeae7ecb72aa48c733f14501c9                          1.0
        Proton Drive                                       drive.proton.me-E277631A_37yaamzysv498                    1.0.0.0
        Proton Mail                                        mail.proton.me-A095E971_t5g3qc2xefh5c                     1.0.0.0
        Proton Pass Web App                                pass.proton.me-BD81EBC2_t4tnc84bssn4j                     1.0.0.0
        Intel(R) Wireless Bluetooth(R)                     {00000010-0230-1033-84C8-B8D95FA3C8C3}                    23.10.0.2
        Intel(R) Computing Improvement Program             {15E71D2B-4046-4B9D-A8BB-EBFC5CC12D86}                    2.4.10717
        vs_CoreEditorFonts                                 {1851460E-0E63-4117-B5BA-25A2F045801B}                    17.7.40001
        Microsoft .NET SDK 8.0.101 (x64) from Visual Stud… {24E9FB48-4983-4C9C-93D2-27307AE92B5E}                    8.1.123.58017
        Microsoft SQL Server 2019 LocalDB                  {36E492B8-CB83-4DA5-A5D2-D99A8E8228A1}                    15.0.4153.1
        Microsoft Azure PowerShell - April 2018            {3BA7CAA9-97BA-4528-B7E1-B640910BB149}                    5.7.0.18831
        Microsoft Azure Libraries for .NET – v2.9          {3C188EC3-3DFE-48B1-9C45-D1AF419D534F}                    3.0.2310.23
        Microsoft Visual C++ 2015-2022 Redistributable (x… Microsoft.VCRedist.2015+.x86                              14.38.33135.0       winget
        Microsoft ODBC Driver 17 for SQL Server            {57B9F896-DE52-4CFA-B7DE-9EFD00A1E020}                    17.10.5.1
        Windows SDK AddOn                                  {5AC9D20F-F065-4ECB-A0A4-EEFAB6A34832}                    10.1.0.0
        Microsoft System CLR Types for SQL Server 2019     Microsoft.CLRTypesSQLServer.2019                          15.0.2000.5         winget
        Bonjour                                            {6E3610B2-430D-4EB0-81E3-2B57E8B9DE8D}                    3.0.0.10
        Microsoft Visual Studio Installer                  XPDCFJDKLZJLP8                                            3.8.2122.37638      msstore
        Windows Software Development Kit - Windows 10.0.2… Microsoft.WindowsSDK.10.0.22621                           10.1.22621.2428     winget
        Microsoft Visual Studio Code (User)                XP9KHM4BK9FZ7Q                                            1.86.0              winget
        Splashtop for RMM                                  {80153EE6-5E0E-4940-B913-A2B82299E9AF}                    3.5.802.0
        Intel® Driver & Support Assistant                  Intel.IntelDriverAndSupportAssistant                      23.4.39.9           winget
        Microsoft Azure Authoring Tools - v2.9.7           {90462BD2-DF5B-449C-A401-FCC1DC264E4E}                    2.9.8999.45
        VLC media player                                   VideoLAN.VLC                                              3.0.20              winget
        Microsoft Teams Meeting Add-in for Microsoft Offi… {A7AB73A3-CB10-4AA5-9D38-6AEFFBDE4C91}                    1.23.33413
        Adobe Acrobat (64-bit)                             Adobe.Acrobat.Reader.64-bit                               23.008.20470        winget
        Bonjour SDK                                        {C0F5A19A-055A-4902-9D41-864127BFAF11}                    3.0.0.10
        Microsoft Update Health Tools                      {C6FD611E-7EFE-488C-A0E0-974C09EF6473}                    5.72.0.0
        Microsoft Web Deploy 4.0                           Microsoft.WebDeploy                                       10.0.7421           winget
        IIS 10.0 Express                                   {D6E7BFE4-895D-49E9-9D2E-A214C18FA1E5}                    10.0.08412
        PowerToys (Preview) x64                            Microsoft.PowerToys                                       0.78.0              winget
        Microsoft Visual C++ 2015-2022 Redistributable (x… Microsoft.VCRedist.2015+.x64                              14.38.33135.0       winget