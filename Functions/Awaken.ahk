; Awaken.ahk

#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\MainMenu.ahk

AwakenRun(){
    ControlFocus,, ahk_exe Firestone.exe
    MainMenu()
    ; Check for awaken heroes notification on main screen
    MsgBox, Looking for awaken heroes notification...
    PixelSearch, FoundX, FoundY, 5, 221, 116, 726, 0x651605, 5, Fast RGB
    If (ErrorLevel = 0){
        MsgBox, Awaken heroes notification found at X: %FoundX%, Y: %FoundY%
        MouseMove, FoundX, FoundY
        Sleep, 1000
        Click
        Sleep, 1500
    } Else {
        MsgBox, Awaken heroes notification not found!
        Return
    }
    ; Attempt clicking farthest right button
    MsgBox, Attempting to click farthest right button...
    MouseMove, 1865, 338
    Sleep, 1000
    Click
    Sleep, 1000
    ; Change to auto
    MsgBox, Changing to auto...
    MouseMove, 1774, 993
    Sleep, 1000
    Click
    Sleep, 20000
    MsgBox, Awaken completed.
    BigClose()
}
