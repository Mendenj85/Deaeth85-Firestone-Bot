; ResearchSlotTest.ahk (AHK v2)

#Include ..\util.ahk

ResearchSlotTest() {
    global Slot1InProcess := 0
    global Slot2InProcess := 0

    ; make sure slot 2 is purchased
    ToolTip("Checking status of slot 2...")
    SetTimer(() => ToolTip(), -1500)
    if PixelSearchRel(&FoundX, &FoundY, 1208, 892, 1264, 931, 0x6F6F6F, 1) {
        ToolTip("Slot 2 not purchased - setting to in progress")
        SetTimer(() => ToolTip(), -1500)
        Slot2InProcess := 1
        gotoSlot1Check()
        return
    }
    ; check for in process research in slot 2
    PixelSearchRel(&FoundX, &FoundY, 1228, 889, 1269, 929, 0x916A37, 3)
    if PixelSearchRel(&FoundX, &FoundY, 1228, 889, 1269, 929, 0x916A37, 3) {
        ToolTip("Slot 2 is in progress.")
        SetTimer(() => ToolTip(), -1500)
        Slot2InProcess := 1
        gotoSlot1Check()
        return
    }
    if PixelSearchRel(&FoundX, &FoundY, 1234, 912, 1272, 974, 0xF9AA47, 3) {
        MoveMouseRel(1204, 938)
        ToolTip("Slot 2 is able to be completed for free.")
        SetTimer(() => ToolTip(), -1500)
        Click()
        Sleep(1000)
        Slot2InProcess := 0
        gotoSlot1Check()
        return
    }
    if PixelSearchRel(&FoundX, &FoundY, 1234, 912, 1272, 974, 0x0AA008, 3) {
        ToolTip("Slot 2 is completed and ready to claim.")
        SetTimer(() => ToolTip(), -1500)
        MoveMouseRel(1204, 938)
        Sleep(1000)
        Click()
        Sleep(1000)
        Slot2InProcess := 0
        gotoSlot1Check()
        return
    }
    gotoSlot1Check()
    return

    ; Slot 1 check logic as a nested function for clarity
    }
    
    gotoSlot1Check() {
        ToolTip("Checking status of slot 1...")
        SetTimer(() => ToolTip(), -1500)
        if PixelSearchRel(&FoundX, &FoundY, 603, 891, 624, 932, 0x916A37, 3) {
            ToolTip("Slot 1 is in progress.")
            SetTimer(() => ToolTip(), -1500)
            Slot1InProcess := 1
            return
        }
        ToolTip("Slot 1 is able to be completed for free.")
        SetTimer(() => ToolTip(), -1500)
        if PixelSearchRel(&FoundX, &FoundY, 588, 911, 620, 967, 0xF9AA47, 3) {
            MoveMouseRel(545, 940)
            ToolTip("Slot 1 is able to be completed for free.")
            SetTimer(() => ToolTip(), -1500)
            Click()
            Sleep(1000)
            Slot1InProcess := 0
            if (Slot2InProcess = 1) {
                Slot1InProcess := 1
                Slot2InProcess := 0
                ToolTip("Changing Slot 1 to In Process and Slot 2 to Not in Process")
                SetTimer(() => ToolTip(), -2000)
                return
            }
            return
        }
        MoveMouseRel(545, 940)
        Sleep(1000)
        if PixelSearchRel(&FoundX, &FoundY, 588, 911, 620, 967, 0x0AA008, 3) {
            ToolTip("Slot 1 is completed and ready to claim.")
            SetTimer(() => ToolTip(), -1500)
            MoveMouseRel(545, 940)
            Sleep(1000)
            Click()
            Sleep(1000)
            Slot1InProcess := 0
            if (Slot2InProcess = 1) {
                Slot1InProcess := 1
                Slot2InProcess := 0
                ToolTip("Changing Slot 1 to In Process and Slot 2 to Not in Process")
                SetTimer(() => ToolTip(), -2000)
            }
            return
        }
    }
