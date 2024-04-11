; Awaken.ahk

#Include Functions\subFunctions\BigClose.ahk

AwakenRun(){
    ControlFocus,, ahk_exe Firestone.exe
    ; Check for awaken heroes notification on crystal screen
    PixelSearch, X, Y, 1877, 308, 1905, 339, 0xF40000, 3, Fast RGB
    If (ErrorLevel = 0){
        MouseMove, 1826, 360
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
