; Chaos.ahk

#Include Functions\subFunctions\BigClose.ahk
#Include Functions\util.ahk

HitChaos(){
    ControlFocus,, ahk_exe Firestone.exe
    ; Check for Chaos notification on guild screen
    PixelSearchRel(X, Y, 1525, 695, 1555, 725, 0xF40000, 3)
    If (ErrorLevel = 0){
        MoveMouseRel(1410, 625)
        Sleep, 1000
        Click
        Sleep, 1500
        ; Change to auto
        MoveMouseRel(1740, 980)
        Sleep, 1000
        Click
        Sleep, 10000
        BigClose()
    }
}
