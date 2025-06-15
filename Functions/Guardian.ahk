; Guardian.ahk (AHK v2)

#Include util.ahk
#Include subFunctions\BigClose.ahk

; Function that does the guardian training and guardian evolving
Guardian() {
    WinActivate("ahk_exe Firestone.exe ahk_class UnityWndClass")
    ; open Magic Quarter
    MoveMouseRel(658, 284)
    Sleep(1000)
    Click()
    Sleep(1500)
    ; check for evolve
    result := PixelSearchRel(&FoundX, &FoundY, 1307, 107, 1346, 136, 0x0F40000, 3)
    if !result {
        MoveMouseRel(1275, 165)
        Sleep(1000)
        Click()
        Sleep(1000)
        MoveMouseRel(1117, 750)
        Click()
        Sleep(10500)
        MoveMouseRel(1291, 171)
        Sleep(1000)
        Click()
        Sleep(1000)
    }
    ; check for training
    result := PixelSearchRel(&FoundX, &FoundY, 1199, 766, 1257, 810, 0x0AA008, 3)
    if !result {
        MoveMouseRel(1138, 787)
        Sleep(1000)
        Click()
        Sleep(1000)
    }
    BigClose()
}