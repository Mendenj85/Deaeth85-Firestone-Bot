; MysteryBox.ahk

#Include Functions\subFunctions\BigClose.ahk
#Include Functions\util.ahk

MysteryBox(){
    PixelSearchRel(FoundX, FoundY, 1543, 307, 1887, 905, 0x4800A9, 3)
    If (ErrorLevel=0){
        MoveMouseRel(FoundX, FoundY)    ; Move to mystery box
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(904, 724)          ; Click "1" to open one box
        Sleep, 1000
        Click
        Sleep, 10000                    ; Wait for animation
        BigClose()
        MoveMouseRel(59, 181)           ; Failsafe: click to close options if needed
        Sleep, 1000
        Click
        Sleep, 1000
    }
}