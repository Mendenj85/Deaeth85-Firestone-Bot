; LiberationInProgressCheck.ahk

#Include Functions\util.ahk

LiberationInProgress(){
    Loop {
        PixelSearchRel(FoundX, FoundY, 990, 703, 1059, 737, 0x0AA008, 10)
        If(ErrorLevel=0){
            MoveMouseRel(967, 744)
            Sleep, 1000
            Click
            Sleep, 1000
            Return True
        }
        Sleep, 2000
        MoveMouseRel(1650, 500)
    }
}