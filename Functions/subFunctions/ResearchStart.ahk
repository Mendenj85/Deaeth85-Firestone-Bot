; ResearchStart.ahk (AHK v2)

#Include ..\util.ahk
#Include ResearchClicks.ahk

ResearchStart() {
    global Slot2InProcess

    ; Move to tree area (resolution independent)
    MoveMouseRel(1429, 944)
    Sleep(1000)
    ToolTip("Scrolling to ensure tree setup")
    SetTimer(() => ToolTip(), -1500)
    if (Slot2InProcess = 1) {
        return
    }

    ; Page 2
    Loop 35 {
        Send("{WheelDown}")
        Sleep(200)
    }
    Loop {
        XCheck := 1700 - ((A_Index - 1) * 100)
        PixelSearchRel(&FoundX, &FoundY, XCheck, 300, XCheck+100, 750, 0x0D49DE, 0)
        if (A_LastError = 0) {
            MoveMouseRel(FoundX, FoundY)
            Click()
            Sleep(500)
            ResearchClicks()
        }
        if (Slot2InProcess = 1) {
            return
        }
        if (XCheck < 100)
            break
    }
    Loop 35 {
        Send("{WheelUp}")
        Sleep(200)
    }
    ; look for available research - Page 1
    Loop {
        XCheck := 1700 - ((A_Index - 1) * 100)
        PixelSearchRel(&FoundX, &FoundY, XCheck, 300, XCheck+50, 750, 0x0D49DE, 0)
        if (A_LastError = 0) {
            MoveMouseRel(FoundX, FoundY)
            Click()
            Sleep(500)
            ResearchClicks()
        }
        if (Slot2InProcess = 1) {
            return
        }
        if (XCheck < 100)
            break
    }
}
