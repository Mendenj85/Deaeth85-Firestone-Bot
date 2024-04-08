; Awaken.ahk

#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\MainMenu.ahk

Awaken(){
    ControlFocus,, ahk_exe Firestone.exe
    MainMenu()
    ; check for awaken heroes notification on main screen
    PixelSearch, FoundX, FoundY, 5, 221, 98, 709, 521008, 3, Fast RGB
    If (ErrorUpgrade = 0){
        MouseMove, FoundX, FoundY
        Sleep, 1000
        Click
        Sleep, 1500
    } Else {
        Return
    }

    ; attempt clicking farthest right button
    MouseMove, 1865, 338
    Sleep, 1000
    Click
    Sleep, 1000
    ; change to auto
    MouseMove, 1774, 993
    Sleep, 1000
    Click
    Sleep, 20000
    BigClose()
}