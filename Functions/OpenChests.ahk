; OpenChests.ahk

#Include util.ahk
#Include subFunctions\MainMenu.ahk
#Include subFunctions\BigClose.ahk
#Include subFunctions\Chests.ahk

global gearChestDD, jewelChestDD, blessCB, chestsCB

OpenChests() {
    global gearChestDD, jewelChestDD, blessCB, chestsCB

    ; open bag
    MoveMouseRel(1581, 939)
    Sleep 1000
    Click
    Sleep 1000
    ; click chests tab
    MoveMouseRel(1487, 460)
    Sleep 1000
    Click
    Sleep 1000

    ; looks for Gear Chests
    SelectedItem := gearChestDD.Value
    if (SelectedItem = "Exclude All") {
        goto JewelChests
    }
    if (SelectedItem = "Don't Exclude Any") {
        goto Mythic
    }
    if (SelectedItem = "Mythic") {
        goto Legendary
    }
    if (SelectedItem = "Legendary and Higher") {
        goto Epic
    }
    if (SelectedItem = "Epic and Higher") {
        goto Rare
    }
    Mythic:
    ToolTip("Opening Mythic Chests")
    SetTimer(() => ToolTip(), -1500)
    OpenChest("mythic")
    Legendary:
    ToolTip("Opening Legendary Chests")
    SetTimer(() => ToolTip(), -1500)
    OpenChest("legendary")
    Epic:
    ToolTip("Opening Epic Chests")
    SetTimer(() => ToolTip(), -1500)
    OpenChest("epic")
    Rare:
    ToolTip("Opening Rare Chests")
    SetTimer(() => ToolTip(), -1500)
    OpenChest("rare")
    ToolTip("Opening Uncommon Chests")
    SetTimer(() => ToolTip(), -1500)
    OpenChest("uncommon")
    ToolTip("Opening Common Chests")
    SetTimer(() => ToolTip(), -1500)
    OpenChest("common")

    JewelChests:
    ; look for Jewel Chests
    SelectedItem := jewelChestDD.Value
    if (SelectedItem = "Exclude All") {
        goto Gifts
    }
    if (SelectedItem = "Don't Exclude Any") {
        goto Emerald
    }
    if (SelectedItem = "Diamond and Higher") {
        goto Golden
    }
    if (SelectedItem = "Opal and Higher") {
        goto Diamond
    }
    if (SelectedItem = "Emerald") {
        goto Opal
    }
    Emerald:
    ToolTip("Opening Emerald Chests")
    SetTimer(() => ToolTip(), -1500)
    OpenChest("emerald")
    Opal:
    ToolTip("Opening Opal Chests")
    SetTimer(() => ToolTip(), -1500)
    OpenChest("opal")
    Diamond:
    ToolTip("Opening Diamond Chests")
    SetTimer(() => ToolTip(), -1500)
    OpenChest("diamond")
    Golden:
    ToolTip("Opening Golden Chests")
    SetTimer(() => ToolTip(), -1500)
    OpenChest("golden")
    ToolTip("Opening Iron Chests")
    SetTimer(() => ToolTip(), -1500)
    OpenChest("iron")
    ToolTip("Opening Wooden Chests")
    SetTimer(() => ToolTip(), -1500)
    OpenChest("wooden")

    Gifts:
    ; look for Gifts
    ToolTip("Opening Oracle Gifts")
    SetTimer(() => ToolTip(), -1500)
    OpenChest("oraclesgift")
    ToolTip("Opening Mystery Boxes")
    SetTimer(() => ToolTip(), -1500)
    OpenChest("mysterybox")

    ;check if Upgrade Blessings is checked
    if (blessCB.Value = 1) {
        OpenBlessChests()
    } else {
        ;close bag
        MoveMouseRel(1870, 246)
        Sleep 1000
        Click
        Sleep 1500
        return
    }
}

; section will trigger if Upgrade Blessings is selected and Open Chests is not
OpenBlessChests() {
    global chestsCB
    if (chestsCB.Value = 1) {
        goto OpenBlessChestsNoBag
    }
    ; open bag
    MoveMouseRel(1581, 939)
    Sleep 1000
    Click
    Sleep 1000
    ; click chests tab
    MoveMouseRel(1487, 460)
    Sleep 1000
    Click
    Sleep 1000
    ; start here if also claiming other chests
    OpenBlessChestsNoBag:
    ; look for blessing chests
    ToolTip("Opening Galaxy Chests")
    SetTimer(() => ToolTip(), -1500)
    OpenChest("galaxy")
    ToolTip("Opening Cosmic Chests")
    SetTimer(() => ToolTip(), -1500)
    OpenChest("cosmic")
    ToolTip("Opening Nebula Chests")
    SetTimer(() => ToolTip(), -1500)
    OpenChest("nebula")
    ToolTip("Opening Solar Chests")
    SetTimer(() => ToolTip(), -1500)
    OpenChest("solar")
    ToolTip("Opening Lunar Chests")
    SetTimer(() => ToolTip(), -1500)
    OpenChest("lunar")
    ToolTip("Opening Comet Chests")
    SetTimer(() => ToolTip(), -1500)
    OpenChest("comet")
    ; close bag
    MoveMouseRel(1870, 246)
    Sleep 1000
    Click
    Sleep 1000
    return
}
