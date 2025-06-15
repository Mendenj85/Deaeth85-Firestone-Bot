; ResearchAfterStartTest.ahk (AHK v2)

#Include ..\util.ahk
#Include BigClose.ahk

RAST() {
    global Slot1InProcess := 0
    global Slot2InProcess := 0

    ; check for status of slot 2
    ToolTip("Checking status of slot 2...")
    SetTimer(() => ToolTip(), -1500)
    MoveMouseRel(1202, 944)
    Sleep(1000)
    Click()
    Sleep(500)
    result := PixelSearchRel(&FoundX, &FoundY, 562, 245, 754, 311, 0x8C4221, 10)
    if !result {
        ToolTip("Slot 2 is in progress.")
        SetTimer(() => ToolTip(), -1500)
        Slot2InProcess := 1
        BigClose()
    } else {
        ToolTip("Slot 2 is not in progress.")
        SetTimer(() => ToolTip(), -1500)
        Slot2InProcess := 0
    }

    if (Slot1InProcess = 1) {
        ToolTip("Slot 1 is in Progress - skipping test")
        SetTimer(() => ToolTip(), -1500)
        return
    } else {
        ; check for status of slot 1
        ToolTip("Checking status of slot 1...")
        SetTimer(() => ToolTip(), -1500)
        MoveMouseRel(554, 939)
        Sleep(1000)
        Click()
        Sleep(500)
        result := PixelSearchRel(&FoundX, &FoundY, 562, 245, 754, 311, 0x8C4221, 10)
        if !result {
            ToolTip("Slot 1 is in progress.")
            SetTimer(() => ToolTip(), -1500)
            Slot1InProcess := 1
            BigClose()
            return
        } else {
            ToolTip("Slot 1 is not in progress.")
            SetTimer(() => ToolTip(), -1500)
            Slot1InProcess := 0
        }
    }
}