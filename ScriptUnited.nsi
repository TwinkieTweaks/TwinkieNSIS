!include "MUI.nsh"

Name "Twinkie for TrackMania United"
OutFile "TwinkieUnitedInstaller.exe"
InstallDir "$PROGRAMFILES\TmUnitedForever\"

!insertmacro MUI_PAGE_WELCOME
!insertmacro MUI_PAGE_LICENSE "LICENSE.txt"
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_PAGE_FINISH

!insertmacro MUI_LANGUAGE "English"

Section ""
    SetOutPath $INSTDIR
    File "dinput8.dll"
    CreateDirectory "$INSTDIR\Scripts\"
    SetOutPath "$INSTDIR\Scripts\"
    File "TwinkieUnited.asi"
SectionEnd