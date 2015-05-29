;
; PiAware.iss --
;
; Written by Joe Mistachkin.

; See the file "license.terms" for information on usage and redistribution of
; this file, and for a DISCLAIMER OF ALL WARRANTIES.
;

[Setup]
AllowNoIcons=yes
AlwaysShowComponentsList=no
AppCopyright=Copyright © 2015 by FlightAware.  All rights reserved.
AppID={{b9783c1f-764a-4b45-91bf-84e16d324bd1}
AppMutex=PiAware_Setup,Global\PiAware_Setup
AppName=PiAware for Windows
AppPublisher=FlightAware
AppPublisherURL=https://flightaware.com/
AppSupportURL=https://flightaware.com/adsb/
AppUpdatesURL=https://flightaware.com/adsb/
AppVerName=PiAware for Windows v1.0
AppVersion=1.0
AppReadmeFile={app}\README.md
ChangesEnvironment=yes
DefaultDirName={pf}\FlightAware\PiAware
DefaultGroupName=FlightAware\PiAware
LicenseFile=..\LICENSE.txt
OutputBaseFilename=PiAwareSetup1.0
OutputDir=..\Releases
OutputManifestFile=PiAwareSetup1.0-manifest.txt
SetupLogging=yes
SetupIconFile=..\PiAware.ico
UninstallDisplayIcon={app}\bin\tclkit-8.6.4.exe,0
UninstallFilesDir={app}\uninstall
VersionInfoVersion=1.0
ExtraDiskSpaceRequired=5242880

[Components]
Name: Application; Description: Required components.; Types: custom compact full

[Files]
Components: Application; Source: ..\..\externals\bin\Tcl\bin\*; DestDir: {app}\bin; Flags: restartreplace uninsrestartdelete recursesubdirs createallsubdirs
Components: Application; Source: ..\..\externals\bin\Tcl\lib\*; DestDir: {app}\lib; Flags: restartreplace uninsrestartdelete recursesubdirs createallsubdirs
Components: Application; Source: ..\LICENSE.txt; DestDir: {app}\doc; Flags: restartreplace uninsrestartdelete
Components: Application; Source: ..\PiAware.url; DestDir: {app}\doc; Flags: restartreplace uninsrestartdelete
Components: Application; Source: ..\README.md; DestDir: {app}\doc; Flags: restartreplace uninsrestartdelete isreadme
Components: Application; Source: ..\doc\*.1; DestDir: {app}\doc; Flags: restartreplace uninsrestartdelete isreadme
Components: Application; Source: ..\package\*.tcl; DestDir: {app}\lib\fa_adept_packages; Flags: restartreplace uninsrestartdelete
Components: Application; Source: ..\package\ca\DigiCertCA.crt; DestDir: {app}\lib\fa_adept_packages; Flags: restartreplace uninsrestartdelete
Components: Application; Source: ..\programs\piaware\*; Excludes: Makefile; DestDir: {app}\lib\piaware; Flags: restartreplace uninsrestartdelete
Components: Application; Source: ..\programs\piaware-config\*; Excludes: Makefile; DestDir: {app}\lib\piaware-config; Flags: restartreplace uninsrestartdelete
Components: Application; Source: ..\programs\piaware-status\*; Excludes: Makefile; DestDir: {app}\lib\piaware-status; Flags: restartreplace uninsrestartdelete

[Registry]
Components: Application; Root: HKLM; SubKey: Software\FlightAware; Flags: uninsdeletekeyifempty
Components: Application; Root: HKLM; SubKey: Software\FlightAware\PiAware; Flags: uninsdeletekeyifempty
Components: Application; Root: HKLM; SubKey: Software\FlightAware\PiAware\1.0; Flags: uninsdeletekey
Components: Application; Root: HKLM; SubKey: Software\FlightAware\PiAware\1.0; ValueType: string; ValueName: AppId; ValueData: b9783c1f-764a-4b45-91bf-84e16d324bd1
Components: Application; Root: HKLM; SubKey: Software\FlightAware\PiAware\1.0; ValueType: string; ValueName: Path; ValueData: {app}

[Icons]
Name: {group}\PiAware; IconFilename: {app}\bin\tclkit-8.6.4.exe; Filename: {app}\bin\tclkit-8.6.4.exe; Parameters: {app}\lib\piaware\main.tcl; WorkingDir: {app}\bin; Comment: Run PiAware; Flags: createonlyiffileexists
Name: {group}\License; Filename: {app}\doc\license.terms; WorkingDir: {app}\doc; Comment: View License; Flags: createonlyiffileexists
Name: {group}\Project Website; Filename: {app}\doc\PiAware.url; WorkingDir: {app}\doc; Comment: View Website; Flags: createonlyiffileexists
Name: {group}\README; Filename: {app}\doc\README.md; WorkingDir: {app}\doc; Comment: View ReadMe; Flags: createonlyiffileexists
