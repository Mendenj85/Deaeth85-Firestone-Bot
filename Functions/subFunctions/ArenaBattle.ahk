; ArenaBattle.ahk

; Uses util.ahk helpers for resolution independence
ArenaBattle(){
    Wait:
    ; Convert pixel search area to percentages (reference 1920x1080)
    PixelSearchRel(foundX, foundY, 979, 753, 1056, 798, 0x0AA008, 3)
    If (ErrorLevel=0){
        MoveMouseRel(959, 775)
        Sleep, 1000
        Click
        Sleep, 1000
        Return True
    }
    Sleep, 2000
    Goto, Wait
}