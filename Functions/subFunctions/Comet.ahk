; Comet.ahk

#Include Functions\subFunctions\BigClose.ahk
#Include Functions\util.ahk

Comet(){
    ; Search for Comet chest (resolution independent)
    PixelSearchRel(FoundX, FoundY, 1543, 307, 1887, 905, 0x9F3C29, 1)
    If (ErrorLevel=0){
        MoveMouseRel(FoundX, FoundY)
        Sleep, 1000
        Click
        Sleep, 1000
        ; click 1
        MoveMouseRel(914, 812)
        Sleep, 1000
        Click
        Sleep, 10000 ; long delay in case 10 or more chests are opened
        ; clicks equip or space it should be
        MoveMouseRel(962, 850)
        Sleep, 1000
        Click
        Sleep, 1000
        BigClose()
        ; failsafe in case big close opens options
        MoveMouseRel(59, 181)
        Sleep, 1000
        Click
        Sleep, 1000
    }
}