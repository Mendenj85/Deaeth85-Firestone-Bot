; OracleDaily

#Include Functions\subFunctions\BigClose.ahk
#Include Functions\util.ahk

OracleDaily(){
    ; Look for oracle gift notification (resolution independent)
    PixelSearchRel(FoundX, FoundY, 859, 684, 901, 740, 0xF40000, 3)
    If (ErrorLevel = 0){
        MoveMouseRel(823, 760)
        Sleep, 1000
        Click
        Sleep, 1500
        ; Claim Oracle's gift
        MoveMouseRel(619, 756)
        Sleep, 1000
        Click
        Sleep, 1500
        BigClose()
    }
    Return
}
