; ExoticMerchant.ahk (AHK v2)

#Include util.ahk
#Include subFunctions\BuyExotic.ahk
#Include subFunctions\BigClose.ahk
#Include subFunctions\ExoticUpgrades.ahk

; Use global control objects from Gui.ahk
global sellScrollsRB, sellAllRB, sellNoGoldRB, exoticUpgradesCB, buyExCB

ExoticMerchant() {
    global sellScrollsRB, sellAllRB, sellNoGoldRB
    WinActivate("ahk_exe Firestone.exe ahk_class UnityWndClass")
    ; Open exotic merchant
    MoveMouseRel(1459, 650)
    Sleep(1000)
    Click()
    Sleep(1500)

    ; Check which selling option is checked
    if (sellScrollsRB.Value = 1) {
        SellStart()
        ExChecks()
        return
    }
    if (sellAllRB.Value = 1) {
        SellStart()
        ExChecks()
        return
    }
    if (sellNoGoldRB.Value = 1) {
        SellStart()
        ExChecks()
        return
    }
    ExChecks()
}

SellStart() {
    global sellAllRB, sellNoGoldRB
    ; Sell scroll of speed
    result := PixelSearchRel(&FoundX, &FoundY, 1026, 596, 1074, 636, 0x0AA008, 3)
    if (result = 0) {
        MoveMouseRel(959, 596)
        Sleep(1000)
        Click()
        Sleep(1000)
    }
    ; Sell scroll of damage
    result := PixelSearchRel(&FoundX, &FoundY, 1350, 598, 1401, 634, 0x0AA008, 3)
    if (result = 0) {
        MoveMouseRel(1280, 601)
        Sleep(1000)
        Click()
        Sleep(1000)
    }
    ; Sell scroll of health
    result := PixelSearchRel(&FoundX, &FoundY, 1678, 596, 1724, 635, 0x0AA008, 3)
    if (result = 0) {
        MoveMouseRel(1595, 592)
        Sleep(1000)
        Click()
        Sleep(1000)
    }

    ; Sell ALL exotic items if checked
    if (sellAllRB.Value = 1) {
        ; Sell midas' touch
        result := PixelSearchRel(&FoundX, &FoundY, 1022, 912, 1078, 951, 0x0AA008, 3)
        if (result = 0) {
            MoveMouseRel(962, 908)
            Sleep(1000)
            Click()
            Sleep(1000)
        }
        ; Sell pouch of gold
        result := PixelSearchRel(&FoundX, &FoundY, 1336, 916, 1399, 956, 0x0AA008, 3)
        if (result = 0) {
            MoveMouseRel(1278, 910)
            Sleep(1000)
            Click()
            Sleep(1000)
        }
        ; Sell bucket of gold
        result := PixelSearchRel(&FoundX, &FoundY, 1663, 917, 1720, 950, 0x0AA008, 3)
        if (result = 0) {
            MoveMouseRel(1602, 911)
            Sleep(1000)
            Click()
            Sleep(1000)
        }
        ; Scroll to bottom
        Loop 35 {
            Send("{WheelDown}")
            Sleep(200)
        }
        ; Sell crate of gold
        result := PixelSearchRel(&FoundX, &FoundY, 1026, 298, 1081, 338, 0x0AA008, 3)
        if (result = 0) {
            MoveMouseRel(967, 307)
            Sleep(1000)
            Click()
            Sleep(1000)
        }
        ; Sell barrel of gold
        result := PixelSearchRel(&FoundX, &FoundY, 1341, 296, 1398, 335, 0x0AA008, 3)
        if (result = 0) {
            MoveMouseRel(1280, 313)
            Sleep(1000)
            Click()
            Sleep(1000)
        }
        ; Sell drums of war
        result := PixelSearchRel(&FoundX, &FoundY, 1678, 298, 1721, 332, 0x0AA008, 3)
        if (result = 0) {
            MoveMouseRel(1611, 313)
            Sleep(1000)
            Click()
            Sleep(1000)
        }
        ; Sell dragon armor
        result := PixelSearchRel(&FoundX, &FoundY, 1024, 616, 1078, 648, 0x0AA008, 3)
        if (result = 0) {
            MoveMouseRel(954, 616)
            Sleep(1000)
            Click()
            Sleep(1000)
        }
        ; Sell guardian's rune
        result := PixelSearchRel(&FoundX, &FoundY, 1346, 614, 1399, 651, 0x0AA008, 3)
        if (result = 0) {
            MoveMouseRel(1269, 608)
            Sleep(1000)
            Click()
            Sleep(1000)
        }
        ; Sell totem of agony
        result := PixelSearchRel(&FoundX, &FoundY, 1667, 616, 1722, 652, 0x0AA008, 3)
        if (result = 0) {
            MoveMouseRel(1591, 610)
            Sleep(1000)
            Click()
            Sleep(1000)
        }
        ; Sell totem of annihilation
        result := PixelSearchRel(&FoundX, &FoundY, 1030, 930, 1078, 975, 0x0AA008, 3)
        if (result = 0) {
            MoveMouseRel(951, 934)
            Sleep(1000)
            Click()
            Sleep(1000)
        }
    } else if (sellNoGoldRB.Value = 1) {
        ; Sell All But Keep Gold Items if checked
        Loop 35 {
            Send("{WheelDown}")
            Sleep(200)
        }
        ; Sell drums of war
        result := PixelSearchRel(&FoundX, &FoundY, 1678, 298, 1721, 332, 0x0AA008, 3)
        if (result = 0) {
            MoveMouseRel(1611, 313)
            Sleep(1000)
            Click()
            Sleep(1000)
        }
        ; Sell dragon armor
        result := PixelSearchRel(&FoundX, &FoundY, 1024, 616, 1078, 648, 0x0AA008, 3)
        if (result = 0) {
            MoveMouseRel(954, 616)
            Sleep(1000)
            Click()
            Sleep(1000)
        }
        ; Sell guardian's rune
        result := PixelSearchRel(&FoundX, &FoundY, 1346, 614, 1399, 651, 0x0AA008, 3)
        if (result = 0) {
            MoveMouseRel(1269, 608)
            Sleep(1000)
            Click()
            Sleep(1000)
        }
        ; Sell totem of agony
        result := PixelSearchRel(&FoundX, &FoundY, 1667, 616, 1722, 652, 0x0AA008, 3)
        if (result = 0) {
            MoveMouseRel(1591, 610)
            Sleep(1000)
            Click()
            Sleep(1000)
        }
        ; Sell totem of annihilation
        result := PixelSearchRel(&FoundX, &FoundY, 1030, 930, 1078, 975, 0x0AA008, 3)
        if (result = 0) {
            MoveMouseRel(951, 934)
            Sleep(1000)
            Click()
            Sleep(1000)
        }
    }
}

ExChecks() {
    global exoticUpgradesCB, buyExCB
    if (exoticUpgradesCB.Value = 1) {
        ExoticUpgrades()
    }
    if (buyExCB.Value = 1) {
        BuyExotic()
    }
    BigClose()
}