; OracleDaily.ahk (AHK v2)

#Include ..\util.ahk
#Include BigClose.ahk

OracleDaily() {
    ; Look for oracle gift notification (resolution independent)
    result := PixelSearchRel(&FoundX, &FoundY, 859, 684, 901, 740, 0xF40000, 3)
    if (result = 0) {
        MoveMouseRel(823, 760)
        Sleep(1000)
        Click()
        Sleep(1500)
        ; Claim Oracle's gift
        MoveMouseRel(619, 756)
        Sleep(1000)
        Click()
        Sleep(1500)
        BigClose()
    }
}
