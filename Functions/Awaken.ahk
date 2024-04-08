; Awaken.ahk

#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\MainMenu.ahk

AwakenRun(){
    ControlFocus,, ahk_exe Firestone.exe
    MainMenu()
    ; Check for awaken heroes notification on main screen
    PixelSearch, FoundX, FoundY, 5, 221, 116, 726, 0x651605, 5, Fast RGB
    If (ErrorLevel = 0){
        MouseMove, FoundX, FoundY
        Sleep, 1000
        Click
        Sleep, 1500
    } Else {
        Return
    }
    ; Attempt clicking farthest right button
    MouseMove, 1865, 338
    Sleep, 1000
    Click
    Sleep, 1000
    ; Change to auto
    MouseMove, 1774, 993
    Sleep, 1000
    Click
    Sleep, 20000
    BigClose()
}
