; Chaos.ahk (AHK v2)

#Include ..\util.ahk
#Include BigClose.ahk

HitChaos() {
    WinActivate("ahk_exe Firestone.exe ahk_class UnityWndClass")
    ; Check for Chaos notification on guild screen
    result := PixelSearchRel(&X, &Y, 1525, 695, 1555, 725, 0xF40000, 3)
    if (result == 0) {
        MoveMouseRel(1410, 625)
        Sleep 1000
        Click
        Sleep 1500
        ; Change to auto
        MoveMouseRel(1740, 980)
        Sleep 1000
        Click
        Sleep 10000
        BigClose()
    }
}
