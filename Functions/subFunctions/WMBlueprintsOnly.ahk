; WMBlueprintsOnly.ahk (AHK v2)

#Include ..\util.ahk

global blueprintsDD := ""  ; Make sure this is assigned in your Gui.ahk as the control object for the Blueprint dropdown

BPOnly() {
    global blueprintsDD  ; This should be the control object for the Blueprint dropdown

    ; Open Blueprint tab (resolution independent)
    MoveMouseRel(1486, 170)
    Sleep(1000)
    Click()
    Sleep(1000)

    ; Check upgrade options
    SelectedItem := blueprintsDD.Value
    if (SelectedItem = "Upgrade All") {
        UpgradeAll()
    } else if (SelectedItem = "Damage Only") {
        UpgradeDamage()
    } else if (SelectedItem = "Health Only") {
        UpgradeHealth()
    } else if (SelectedItem = "Armor Only") {
        UpgradeArmor()
    } else if (SelectedItem = "Damage and Health") {
        UpgradeDnH()
    } else if (SelectedItem = "Damage and Armor") {
        UpgradeDnA()
    } else if (SelectedItem = "Health and Armor") {
        UpgradeHnA()
    }
}

UpgradeAll() {
    ; upgrade damage
    if PixelSearchRel(&FoundX, &FoundY, 1171, 594, 1225, 644, 0x0AA008, 3) {
        MoveMouseRel(1108, 600)
        Sleep(1000)
        Click()
        Sleep(1000)
    }
    ; upgrade health
    if PixelSearchRel(&FoundX, &FoundY, 1477, 597, 1536, 644, 0x0AA008, 3) {
        MoveMouseRel(1413, 600)
        Sleep(1000)
        Click()
        Sleep(1000)
    }
    ; upgrade armor
    if PixelSearchRel(&FoundX, &FoundY, 1786, 596, 1844, 642, 0x0AA008, 3) {
        MoveMouseRel(1726, 600)
        Sleep(1000)
        Click()
        Sleep(1000)
    }
}

UpgradeDamage() {
    ; upgrade damage
    if PixelSearchRel(&FoundX, &FoundY, 1171, 594, 1225, 644, 0x0AA008, 3) {
        MoveMouseRel(1108, 600)
        Sleep(1000)
        Click()
        Sleep(1000)
    }
}

UpgradeHealth() {
    ; upgrade health
    if PixelSearchRel(&FoundX, &FoundY, 1477, 597, 1536, 644, 0x0AA008, 3) {
        MoveMouseRel(1413, 600)
        Sleep(1000)
        Click()
        Sleep(1000)
    }
}

UpgradeArmor() {
    ; upgrade armor
    if PixelSearchRel(&FoundX, &FoundY, 1786, 596, 1844, 642, 0x0AA008, 3) {
        MoveMouseRel(1726, 600)
        Sleep(1000)
        Click()
        Sleep(1000)
    }
}

UpgradeDnH() {
    ; upgrade damage
    if PixelSearchRel(&FoundX, &FoundY, 1171, 594, 1225, 644, 0x0AA008, 3) {
        MoveMouseRel(1108, 600)
        Sleep(1000)
        Click()
        Sleep(1000)
    }
    ; upgrade health
    if PixelSearchRel(&FoundX, &FoundY, 1477, 597, 1536, 644, 0x0AA008, 3) {
        MoveMouseRel(1413, 600)
        Sleep(1000)
        Click()
        Sleep(1000)
    }
}

UpgradeDnA() {
    ; upgrade damage
    if PixelSearchRel(&FoundX, &FoundY, 1171, 594, 1225, 644, 0x0AA008, 3) {
        MoveMouseRel(1108, 600)
        Sleep(1000)
        Click()
        Sleep(1000)
    }
    ; upgrade armor
    if PixelSearchRel(&FoundX, &FoundY, 1786, 596, 1844, 642, 0x0AA008, 3) {
        MoveMouseRel(1726, 600)
        Sleep(1000)
        Click()
        Sleep(1000)
    }
}

UpgradeHnA() {
    ; upgrade health
    if PixelSearchRel(&FoundX, &FoundY, 1477, 597, 1536, 644, 0x0AA008, 3) {
        MoveMouseRel(1413, 600)
        Sleep(1000)
        Click()
        Sleep(1000)
    }
    ; upgrade armor
    if PixelSearchRel(&FoundX, &FoundY, 1786, 596, 1844, 642, 0x0AA008, 3) {
        MoveMouseRel(1726, 600)
        Sleep(1000)
        Click()
        Sleep(1000)
    }
}