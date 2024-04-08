; MysteryBox.ahk

#Include Functions\subFunctions\BigClose.ahk

MysteryBox(){
    PixelSearch, FoundX, FoundY, 1543, 307, 1887, 905, 0x4800A9, 3, Fast RGB
    If (ErrorLevel=0){
        MouseMove, FoundX, FoundY
        Sleep, 1000
        Click
        Sleep, 1000
        ; click 1
        MouseMove, 904, 724
        Sleep, 1000
        Click
        Sleep, 10000 ; long delay in case 10 or more chests are opened
        BigClose()
        ; failsafe in case big close opens options
        MouseMove, 59, 181
        Sleep, 1000
        Click
        Sleep, 1000
    }
}