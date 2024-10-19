; Chaos.ahk

#Include Functions\subFunctions\BigClose.ahk

HitChaos(){
    ControlFocus,, ahk_exe Firestone.exe
    ; Check for Chaos notificiation on guild scdreen
    PixelSearch, X, Y, 1525, 695, 1555, 725, 0xF40000, 3, Fast RGB
    If (ErrorLevel = 0){
        MouseClick, Left, 1410, 625, 1, 0
        Sleep, 1500
    ; Change to auto
    MouseClick, Left, 1740, 980, 1, 0
    Sleep, 10000
    BigClose()
    }
}
