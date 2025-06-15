; MapClose.ahk (AHK v2)

#Include ..\util.ahk

; Function to close the map screens as they aren't focused and the above function does not work
MapClose() {
    WinActivate("ahk_exe Firestone.exe ahk_class UnityWndClass")
    MoveMouseRel(1870, 706)
    Sleep(1000)
    Click
    Sleep(1500)
}
