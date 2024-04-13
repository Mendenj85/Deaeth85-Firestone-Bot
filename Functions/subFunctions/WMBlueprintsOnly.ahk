; WMBlueprintsOnly.ahk

BPOnly(){
    ; Open Blueprint tab
    MouseMove, 1486, 170
    Sleep, 1000
    Click
    Sleep, 1000

    ; Check upgrade options
    GuiControlGet, SelectedItem, ,Blueprints
    If (SelectedItem = "Upgrade All"){
        Goto, All
    } Else {
        If (SelectedItem = "Damage Only"){
            Goto, Damage
        } Else {
            If (SelectedItem = "Health"){
                Goto, Health
            } Else {
                If (SelectedItem = "Armor"){
                    Goto, Armor
                } Else {
                    If (SelectedItem = "Damage and Health"){
                        Goto, DnH
                    } Else {
                        If (SelectedItem = "Damage and Armor"){
                            Goto, DnA
                        } Else {
                            If (SelectedItem = "Health and Armor"){
                                Goto, HnA
                            }
                        }
                    }
                }
            }
        }
    }

    All:
        ; upgrade damage
        PixelSearch, X, Y, 1171, 594, 1225, 644, 0x0AA008, 3, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, 1108, 600
            Sleep, 1000
            Click
            Sleep, 1000
        }
        ; upgrade health
        PixelSearch, X, Y, 1477, 597, 1536, 644, 0x0AA008, 3, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, 1413, 600
            Sleep, 1000
            Click
            Sleep, 1000
        }
        ; upgrade armor
        PixelSearch, X, Y, 1786, 596, 1844, 642, 0x0AA008, 3, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, 1726, 600
            Sleep, 1000
            Click
            Sleep, 1000
        }
        Return

    Damage:
        ; upgrade damage
        PixelSearch, X, Y, 1171, 594, 1225, 644, 0x0AA008, 3, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, 1108, 600
            Sleep, 1000
            Click
            Sleep, 1000
        }
        Return

    Health:
        ; upgrade health
        PixelSearch, X, Y, 1477, 597, 1536, 644, 0x0AA008, 3, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, 1413, 600
            Sleep, 1000
            Click
            Sleep, 1000
        }
        Return

    Armor:
        ; upgrade armor
        PixelSearch, X, Y, 1786, 596, 1844, 642, 0x0AA008, 3, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, 1726, 600
            Sleep, 1000
            Click
            Sleep, 1000
        }
        Return

    DnH:
        ; upgrade damage
        PixelSearch, X, Y, 1171, 594, 1225, 644, 0x0AA008, 3, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, 1108, 600
            Sleep, 1000
            Click
            Sleep, 1000
        }
        ; upgrade health
        PixelSearch, X, Y, 1477, 597, 1536, 644, 0x0AA008, 3, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, 1413, 600
            Sleep, 1000
            Click
            Sleep, 1000
        }
        Return

    DnA:
        ; upgrade damage
        PixelSearch, X, Y, 1171, 594, 1225, 644, 0x0AA008, 3, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, 1108, 600
            Sleep, 1000
            Click
            Sleep, 1000
        }
        ; upgrade armor
        PixelSearch, X, Y, 1786, 596, 1844, 642, 0x0AA008, 3, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, 1726, 600
            Sleep, 1000
            Click
            Sleep, 1000
        }
        Return

    HnA:
        ; upgrade health
        PixelSearch, X, Y, 1477, 597, 1536, 644, 0x0AA008, 3, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, 1413, 600
            Sleep, 1000
            Click
            Sleep, 1000
        }
        ; upgrade armor
        PixelSearch, X, Y, 1786, 596, 1844, 642, 0x0AA008, 3, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, 1726, 600
            Sleep, 1000
            Click
            Sleep, 1000
        }
        Return
}