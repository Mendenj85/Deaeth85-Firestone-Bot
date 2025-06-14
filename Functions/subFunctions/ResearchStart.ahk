; ResearchStart.ahk

#Include Functions\subFunctions\ResearchClicks.ahk
#Include Functions\util.ahk

ResearchStart() {
    ; Move to tree area (resolution independent)
    MoveMouseRel(1429, 944)
    Sleep, 1000
    MsgBox, , Setup, Scrolling to ensure tree setup, 1.5
    If (Slot2InProcess = 1){
        Return
    }

    ; Page 2
    Loop, 35{
        Send, {WheelDown}
        Sleep, 200
    }
    Loop {
        XCheck := 1700 - ((A_Index - 1) * 100)
        PixelSearchRel(FoundX, FoundY, XCheck, 300, XCheck+100, 750, 0x0D49DE, 0)
        If (ErrorLevel = 0){
            MoveMouseRel(FoundX, FoundY)
            Click
            Sleep, 500
            ResearchClicks()
        }
        If (Slot2InProcess = 1){
            Return
        }
        if (XCheck < 100)
            break
    }
    Loop, 35{
        Send, {WheelUp}
        Sleep, 200
    }
    ; look for available research - Page 1
    Loop {
        XCheck := 1700 - ((A_Index - 1) * 100)
        PixelSearchRel(FoundX, FoundY, XCheck, 300, XCheck+50, 750, 0x0D49DE, 0)
        If (ErrorLevel = 0){
            MoveMouseRel(FoundX, FoundY)
            Click
            Sleep, 500
            ResearchClicks()
        }
        If (Slot2InProcess = 1){
            Return
        }
        if (XCheck < 100)
            break
    }
}
