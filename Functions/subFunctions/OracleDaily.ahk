; OracleDaily

#Include Functions\subFunctions\BigClose.ahk

OracleDaily(){
    ; Look for oracle gift notification
    PixelSearch, X, Y, 859, 684, 901, 740, 0xF40000, 3, Fast RGB
    If (ErrorLevel = 0){
        MouseMove, 823, 760
        Sleep, 1000
        Click
        Sleep, 1500
        ; Claim Oracle's gift
        MouseMove, 619, 756
        Sleep, 1000
        Click
        Sleep, 1500
        BigClose()
    }
    Return
}
