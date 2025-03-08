!include "MUI.nsh"

Name "Twinkie for TrackMania Forever"
OutFile "TwinkieModloaderInstaller.exe"
InstallDir "$LOCALAPPDATA\TMLoader\database\TmForever\products\"
Var version
Var descexecfile

!insertmacro MUI_PAGE_WELCOME
!insertmacro MUI_PAGE_LICENSE "LICENSE.txt"
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_PAGE_FINISH

!insertmacro MUI_LANGUAGE "English"

Section ""
    StrCpy $version "1.5.0"
    SetOutPath $INSTDIR
    CreateDirectory "$INSTDIR\Twinkie\$version\"
    SetOutPath "$INSTDIR\Twinkie\"
    File "description.yaml"
    SetOutPath "$INSTDIR\Twinkie\$version\"
    File "TwinkieModloader.dll"
    FileOpen $descexecfile "$INSTDIR\Twinkie\$version\description.yaml" w
    FileWrite $descexecfile 'executable: TwinkieModloader.dll'
    FileClose $descexecfile

SectionEnd