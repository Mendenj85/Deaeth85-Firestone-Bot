; OracleDaily

#Include Functions\subFunctions\BigClose.ahk

OracleDaily(){
    ; Look for oracle gift notification
    PixelSearch, FoundX, FoundY, 5, 215, 124, 741, 0xFFE300, 3, Fast RGB
    If (ErrorLevel = 0){
        MouseMove, FoundX, FoundY
        Sleep, 1000
        Click
        Sleep, 1500
    } Else {
        Return
    }
    ; Claim Oracle's gift
    MouseMove, 619, 756
    Sleep, 1000
    Click
    Sleep, 1500
    BigClose()
}
