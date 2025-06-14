; WMBlueprintsOnly.ahk

#Include Functions\util.ahk

BPOnly(){
    ; Open Blueprint tab (resolution independent)
    MoveMouseRel(1486, 170)
    Sleep, 1000
    Click
    Sleep, 1000

    ; Check upgrade options
    GuiControlGet, SelectedItem, ,Blueprints
    If (SelectedItem = "Upgrade All"){
        Goto, All
    } Else If (SelectedItem = "Damage Only"){
        Goto, Damage
    } Else If (SelectedItem = "Health"){
        Goto, Health
    } Else If (SelectedItem = "Armor"){
        Goto, Armor
    } Else If (SelectedItem = "Damage and Health"){
        Goto, DnH
    } Else If (SelectedItem = "Damage and Armor"){
        Goto, DnA
    } Else If (SelectedItem = "Health and Armor"){
        Goto, HnA
    }

    All:
        ; upgrade damage
        PixelSearchRel(FoundX, FoundY, 1171, 594, 1225, 644, 0x0AA008, 3)
        If (ErrorLevel = 0){
            MoveMouseRel(1108, 600)
            Sleep, 1000
            Click
            Sleep, 1000
        }
        ; upgrade health
        PixelSearchRel(FoundX, FoundY, 1477, 597, 1536, 644, 0x0AA008, 3)
        If (ErrorLevel = 0){
            MoveMouseRel(1413, 600)
            Sleep, 1000
            Click
            Sleep, 1000
        }
        ; upgrade armor
        PixelSearchRel(FoundX, FoundY, 1786, 596, 1844, 642, 0x0AA008, 3)
        If (ErrorLevel = 0){
            MoveMouseRel(1726, 600)
            Sleep, 1000
            Click
            Sleep, 1000
        }
        Return

    Damage:
        ; upgrade damage
        PixelSearchRel(FoundX, FoundY, 1171, 594, 1225, 644, 0x0AA008, 3)
        If (ErrorLevel = 0){
            MoveMouseRel(1108, 600)
            Sleep, 1000
            Click
            Sleep, 1000
        }
        Return

    Health:
        ; upgrade health
        PixelSearchRel(FoundX, FoundY, 1477, 597, 1536, 644, 0x0AA008, 3)
        If (ErrorLevel = 0){
            MoveMouseRel(1413, 600)
            Sleep, 1000
            Click
            Sleep, 1000
        }
        Return

    Armor:
        ; upgrade armor
        PixelSearchRel(FoundX, FoundY, 1786, 596, 1844, 642, 0x0AA008, 3)
        If (ErrorLevel = 0){
            MoveMouseRel(1726, 600)
            Sleep, 1000
            Click
            Sleep, 1000
        }
        Return

    DnH:
        ; upgrade damage
        PixelSearchRel(FoundX, FoundY, 1171, 594, 1225, 644, 0x0AA008, 3)
        If (ErrorLevel = 0){
            MoveMouseRel(1108, 600)
            Sleep, 1000
            Click
            Sleep, 1000
        }
        ; upgrade health
        PixelSearchRel(FoundX, FoundY, 1477, 597, 1536, 644, 0x0AA008, 3)
        If (ErrorLevel = 0){
            MoveMouseRel(1413, 600)
            Sleep, 1000
            Click
            Sleep, 1000
        }
        Return

    DnA:
        ; upgrade damage
        PixelSearchRel(FoundX, FoundY, 1171, 594, 1225, 644, 0x0AA008, 3)
        If (ErrorLevel = 0){
            MoveMouseRel(1108, 600)
            Sleep, 1000
            Click
            Sleep, 1000
        }
        ; upgrade armor
        PixelSearchRel(FoundX, FoundY, 1786, 596, 1844, 642, 0x0AA008, 3)
        If (ErrorLevel = 0){
            MoveMouseRel(1726, 600)
            Sleep, 1000
            Click
            Sleep, 1000
        }
        Return

    HnA:
        ; upgrade health
        PixelSearchRel(FoundX, FoundY, 1477, 597, 1536, 644, 0x0AA008, 3)
        If (ErrorLevel = 0){
            MoveMouseRel(1413, 600)
            Sleep, 1000
            Click
            Sleep, 1000
        }
        ; upgrade armor
        PixelSearchRel(FoundX, FoundY, 1786, 596, 1844, 642, 0x0AA008, 3)
        If (ErrorLevel = 0){
            MoveMouseRel(1726, 600)
            Sleep, 1000
            Click
            Sleep, 1000
        }
        Return
}