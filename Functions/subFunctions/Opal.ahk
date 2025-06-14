; Opal.ahk

#Include Functions\subFunctions\BigClose.ahk
#Include Functions\util.ahk

Opal(){
    PixelSearchRel(FoundX, FoundY, 1543, 307, 1887, 905, 0x9DEEDE, 1)
    If (ErrorLevel=0){
        MoveMouseRel(FoundX, FoundY)    ; Move to opal chest
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(914, 812)          ; Click "1" to open one chest
        Sleep, 1000
        Click
        Sleep, 10000                    ; Wait for animation
        MoveMouseRel(962, 850)          ; Click "equip" or where it should be
        Sleep, 1000
        Click
        Sleep, 1000
        BigClose()
        MoveMouseRel(59, 181)           ; Failsafe: click to close options if needed
        Sleep, 1000
        Click
        Sleep, 1000
    }
}