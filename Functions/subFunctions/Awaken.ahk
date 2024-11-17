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
        ; look for and click highest x#
        PixelSearch, X, Y, 1839, 313, 1902, 328, 0x0AA008, 3, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, 1865, 338
            Sleep, 1000
            Click
            Sleep, 1000
        } Else {
            PixelSearch, X, Y, 1739, 316, 1802, 330, 0x0AA008, 3, Fast RGB
            If (ErrorLevel = 0){
                MouseMove, 1767, 342
                Sleep, 1000
                Click
                Sleep, 1000
            } Else {
                PixelSearch, X, Y, 1639, 315, 1706, 319, 0x0AA008, 3, Fast RGB
                If (ErrorLevel = 0){
                    MouseMove, 1676, 339
                    Sleep, 1000
                    Click
                    Sleep, 1000
                }
            }
        }
        ; Change to auto
        MouseMove, 1774, 993
        Sleep, 1000
        Click
        Sleep, 20000
        BigClose()
    }
}
