[Setup]
AppName=Incuboot
AppVersion={#AppVersion}
AppPublisher=Incuboot-IO
WizardStyle=modern
Compression=lzma2
SolidCompression=yes
DefaultDirName={autopf}\Incuboot\
DefaultGroupName=Incuboot
SetupIconFile=flowy_logo.ico
UninstallDisplayIcon={app}\Incuboot.exe
UninstallDisplayName=Incuboot
VersionInfoVersion={#AppVersion}
UsePreviousAppDir=no

[Files]
Source: "Incuboot\Incuboot.exe"; DestDir: "{app}"; DestName: "Incuboot.exe"; Flags: ignoreversion
Source: "Incuboot\*";DestDir: "{app}"
Source: "Incuboot\data\*";DestDir: "{app}\data\"; Flags: recursesubdirs

[Icons]
Name: "{userdesktop}\Incuboot"; Filename: "{app}\Incuboot.exe"
Name: "{group}\Incuboot"; Filename: "{app}\Incuboot.exe"

[Registry]
Root: HKCR; Subkey: "Incuboot"; ValueType: "string"; ValueData: "URL:Custom Protocol"; Flags: uninsdeletekey
Root: HKCR; Subkey: "Incuboot"; ValueType: "string"; ValueName: "URL Protocol"; ValueData: ""
Root: HKCR; Subkey: "Incuboot\DefaultIcon"; ValueType: "string"; ValueData: "{app}\Incuboot.exe,0"
Root: HKCR; Subkey: "Incuboot\shell\open\command"; ValueType: "string"; ValueData: """{app}\Incuboot.exe"" ""%1"""