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
            MsgBox, Damage Only selected
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
        MouseMove, 1108, 600
        Sleep, 1000
        Click
        Sleep, 1000
        MouseMove, 1413, 600
        Sleep, 1000
        Click
        Sleep, 1000
        MouseMove, 1726, 600
        Sleep, 1000
        Click
        Sleep, 1000
        Return

    Damage:
        MouseMove, 1108, 600
        Sleep, 1000
        Click
        Sleep, 1000
        Return

    Health:
        MouseMove, 1413, 600
        Sleep, 1000
        Click
        Sleep, 1000
        Return

    Armor:
        MouseMove, 1726, 600
        Sleep, 1000
        Click
        Sleep, 1000
        Return

    DnH:
        MouseMove, 1108, 600
        Sleep, 1000
        Click
        Sleep, 1000
        MouseMove, 1413, 600
        Sleep, 1000
        Click
        Sleep, 1000
        Return

    DnA:
        MouseMove, 1108, 600
        Sleep, 1000
        Click
        Sleep, 1000
        MouseMove, 1726, 600
        Sleep, 1000
        Click
        Sleep, 1000
        Return

    HnA:
        MouseMove, 1413, 600
        Sleep, 1000
        Click
        Sleep, 1000
        MouseMove, 1726, 600
        Sleep, 1000
        Click
        Sleep, 1000
        Return
}
