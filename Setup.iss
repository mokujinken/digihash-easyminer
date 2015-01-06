; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "DigiHash"
#define MyAppVersion "1.0.0"
#define MyAppPublisher "DigiHash Co."
#define MyAppURL "http://digihash.co/"
#define MyAppExeName "DigiHash.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{BE3C6529-CFAD-4714-B87B-997871BFEBAF}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DisableDirPage=yes
DefaultGroupName={#MyAppName}
OutputBaseFilename=DigiHashSetup
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\eagletsui\IdeaProjects\DigiHash\DigiHash\bin\Release\DigiHash.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\eagletsui\IdeaProjects\DigiHash\DigiHash\bin\Release\Newtonsoft.Json.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\eagletsui\IdeaProjects\DigiHash\DigiHash\bin\Release\Newtonsoft.Json.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\eagletsui\IdeaProjects\DigiHash\DigiHash\bin\Release\System.Net.Http.Extensions.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\eagletsui\IdeaProjects\DigiHash\DigiHash\bin\Release\System.Net.Http.Extensions.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\eagletsui\IdeaProjects\DigiHash\DigiHash\bin\Release\System.Net.Http.Primitives.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\eagletsui\IdeaProjects\DigiHash\DigiHash\bin\Release\System.Net.Http.Primitives.xml"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

