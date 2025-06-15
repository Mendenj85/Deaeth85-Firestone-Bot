; Awaken.ahk (AHK v2)

#Include ..\util.ahk
#Include BigClose.ahk

AwakenRun() {
    WinActivate("ahk_exe Firestone.exe ahk_class UnityWndClass")

    ; Check for awaken heroes notification on crystal screen
    if !PixelSearchRel(&foundX, &foundY, 1877, 308, 1905, 339, 0xF40000, 3) {
        MoveMouseRel(1826, 360)
        Sleep(1000)
        Click()
        Sleep(1500)

        ; Look for and click highest x#
        PixelSearchRel(&foundX, &foundY, 1839, 313, 1902, 328, 0x0AA008, 3)
        if !PixelSearchRel(&foundX, &foundY, 1839, 313, 1902, 328, 0x0AA008, 3) {
            MoveMouseRel(1865, 338)
            Sleep(1000)
            Click()
            Sleep(1000)
        } else if !PixelSearchRel(&foundX, &foundY, 1739, 316, 1802, 330, 0x0AA008, 3) {
            MoveMouseRel(1767, 342)
            Sleep(1000)
            Click()
            Sleep(1000)
        } else if !PixelSearchRel(&foundX, &foundY, 1639, 315, 1706, 319, 0x0AA008, 3) {
            MoveMouseRel(1676, 339)
            Sleep(1000)
            Click()
            Sleep(1000)
        }
        ; Change to auto
        MoveMouseRel(1774, 993)
        Sleep(1000)
        Click()
        Sleep(20000)

        BigClose()
    }
}
