; Alchemist.ahk (AHK v2)

#Include util.ahk
#Include subFunctions\BigClose.ahk

global dustCB := "", coinCB := "" 

Alchemist() {
    global dustCB, coinCB

    WinActivate("ahk_exe Firestone.exe ahk_class UnityWndClass")
    ; open Alchemist
    MoveMouseRel(511, 837)
    Sleep(1000)
    Click()
    Sleep(1500)

    ; check if blood alchemy isn't running
    if PixelSearchRel(&FoundX, &FoundY, 928, 519, 948, 535, 0xFFC700, 3) = 0 {
        ToolTip("Dragon Blood alchemy is not running")
        SetTimer(() => ToolTip(), -1500)
    } else {
        ; check for completed alchemy with blood
        if PixelSearchRel(&FoundX, &FoundY, 985, 746, 1037, 792, 0x0AA008, 3) = 0 {
            MoveMouseRel(949, 777)
            ToolTip("Dragon Blood experiment is complete")
            SetTimer(() => ToolTip(), -1500)
            Click()
            Sleep(1000)
        }
    }

    ; check if dust alchemy isn't running
    result := PixelSearchRel(&FoundX, &FoundY, 1274, 515, 1298, 537, 0xFFC700, 3)
    if result = 0 {
        ToolTip("Strange Dust alchemy is not running")
        SetTimer(() => ToolTip(), -1500)
    } else {
        ; check for completed alchemy with dust
        result2 := PixelSearchRel(&FoundX, &FoundY, 1336, 748, 1386, 789, 0x0AA008, 3)
        if result2 = 0 {
            MoveMouseRel(1286, 786)
            ToolTip("Strange Dust experiment is complete")
            SetTimer(() => ToolTip(), -1500)
            Click()
            Sleep(1000)
        }
    }

    ; check if exotic coin alchemy isn't running
    result := PixelSearchRel(&FoundX, &FoundY, 1622, 518, 1645, 538, 0xFFC700, 3)
    if result = 0 {
        ToolTip("Exotic Coins alchemy is not running")
        SetTimer(() => ToolTip(), -1500)
    } else {
        ; check for completed alchemy with exotic coins
        result2 := PixelSearchRel(&FoundX, &FoundY, 1679, 748, 1735, 796, 0x0AA008, 3)
        if result2 = 0 {
            MoveMouseRel(1632, 772)
            ToolTip("Exotic Coins experiment is complete")
            SetTimer(() => ToolTip(), -1500)
            Click()
            Sleep(1000)
        }
    }

    ; check for free to complete alchemy with blood
    result := PixelSearchRel(&FoundX, &FoundY, 969, 742, 1026, 756, 0xF9AA47, 3)
    if result = 0 {
        MoveMouseRel(949, 777)
        ToolTip("Dragon Blood experiment is free to complete")
        SetTimer(() => ToolTip(), -1500)
        Click()
        Sleep(1000)
    }

    ; check for free to complete alchemy with dust
    result := PixelSearchRel(&FoundX, &FoundY, 1336, 748, 1386, 789, 0xF9AA47, 3)
    if result = 0 {
        MoveMouseRel(1286, 786)
        ToolTip("Strange Dust experiment is free to complete")
        SetTimer(() => ToolTip(), -1500)
        Click()
        Sleep(1000)
    }

    ; check for free to complete alchemy with exotic coins
    result := PixelSearchRel(&FoundX, &FoundY, 1679, 748, 1735, 796, 0xF9AA47, 3)
    if result = 0 {
        MoveMouseRel(1632, 772)
        ToolTip("Exotic Coins experiment is free to complete")
        SetTimer(() => ToolTip(), -1500)
        Click()
        Sleep(1000)
    }

    ; check for in-process alchemy with blood
    result := PixelSearchRel(&FoundX, &FoundY, 1007, 735, 1030, 766, 0x916A38, 3)
    if result = 0 {
        ToolTip("Dragon Blood experiment has more than 3 minutes remaining")
        SetTimer(() => ToolTip(), -1500)
        goto DustSearch
    } else {
        MoveMouseRel(951, 771)
        ToolTip("Starting Dragon Blood experiment")
        SetTimer(() => ToolTip(), -1500)
        Click()
        Sleep(1000)
        goto DustSearch
    }

    DustSearch:
    if dustCB.Value = 1 {
        goto ExoticCheck
    } else {
        ; check for in-process alchemy with dust
        result := PixelSearchRel(&FoundX, &FoundY, 1346, 734, 1373, 766, 0x916A38, 3)
        if result = 0 {
            ToolTip("Strange Dust experiment has more than 3 minutes remaining")
            SetTimer(() => ToolTip(), -1500)
            goto ExoticCheck
        } else {
            MoveMouseRel(1286, 786)
            ToolTip("Starting Strange Dust experiment")
            SetTimer(() => ToolTip(), -1500)
            Click()
            Sleep(1000)
            goto ExoticCheck
        }
    }

    ExoticCheck:
    if coinCB.Value = 1 {
        ; check for in-process alchemy with exotic coins
        result := PixelSearchRel(&FoundX, &FoundY, 1699, 737, 1723, 767, 0x916A38, 3)
        if result = 0 {
            ToolTip("Exotic Coins experiment has more than 3 minutes remaining")
            SetTimer(() => ToolTip(), -1500)
            goto FinishAlch
        } else {
            ; start exotic coin alchemy
            MoveMouseRel(1641, 767)
            ToolTip("Starting Exotic Coins experiment")
            SetTimer(() => ToolTip(), -1500)
            Click()
            Sleep(1000)
            goto FinishAlch
        }
    }

    FinishAlch:
    BigClose()
}