; Awaken.ahk

#Include Functions\subFunctions\BigClose.ahk

AwakenRun(){
    ControlFocus,, ahk_exe Firestone.exe
    ; Check for awaken heroes notification on guild screen
    PixelSearch, X, Y, 1321, 876, 1353, 913, 0xF40000, 3, Fast RGB
    If (ErrorLevel = 0){
        MouseMove, 1202, 846
        Sleep, 1000
        Click
        Sleep, 1500
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
}
