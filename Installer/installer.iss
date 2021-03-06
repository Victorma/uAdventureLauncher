; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Test"
#define MyAppVersion "1.5"
#define MyAppPublisher "Test. Inc"
#define MyAppURL "http://www.test.com/"
#define MyAppExeName "test.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{CD061810-F16B-4D86-AB24-820F4F0ADA9F}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DisableProgramGroupPage=yes
OutputBaseFilename=setup
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\Victorma\RegistryTests\Build/test.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Victorma\RegistryTests\Build/test_Data\*"; DestDir: "{app}\test_Data"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Registry]
Root: HKCR; Subkey: "uadventure"; ValueType: "string"; ValueData: "URL:Custom Protocol"; Flags: uninsdeletekey
Root: HKCR; Subkey: "uadventure"; ValueType: "string"; ValueName: "URL Protocol"; ValueData: ""
Root: HKCR; Subkey: "uadventure\DefaultIcon"; ValueType: "string"; ValueData: "{app}\test.exe,0"
Root: HKCR; Subkey: "uadventure\shell\open\command"; ValueType: "string"; ValueData: """{app}\test.exe"" "" - t %1"""