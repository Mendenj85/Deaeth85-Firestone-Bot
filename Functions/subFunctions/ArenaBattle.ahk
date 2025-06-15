; ArenaBattle.ahk (AHK v2)

#Include ..\util.ahk

; Uses util.ahk helpers for resolution independence
ArenaBattle() {
    Loop {
        result := PixelSearchRel(&foundX, &foundY, 979, 753, 1056, 798, 0x0AA008, 3)
        if result {
            MoveMouseRel(959, 775)
            Sleep(1000)
            Click()
            Sleep(1000)
            return true
        }
        ToolTip("Waiting for arena battle...")
        SetTimer(() => ToolTip(), -2000)
        Sleep(2000)
    }
}