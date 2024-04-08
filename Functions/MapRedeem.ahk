; MapRedeem.ahk

#Include Functions\MapStart.ahk
#Include Functions\subFunctions\MapClose.ahk

; Function to redeem the missions
MapRedeem(){
    ControlFocus,, ahk_exe Firestone.exe
    ; check if missions can be reset for free
    MsgBox, , Mission Restart, Checking if we can reset missions for free, 2
    PixelSearch, X, Y, 92, 961, 268, 964, 0xF7A242, 3, Fast RGB
    If (ErrorLevel = 0){
        MouseMove, 173, 918
        Sleep, 1000
        Click
        Sleep, 1000
    }
    Checks:
    ; click top mission on left-side list
    MouseMove, 166, 333
    Sleep, 1000
    Click
    Sleep, 1000
    ; check if mission is still longer than 3 mins (speed w/gems)
    MsgBox, , Mission Check, Checking for duration over 3 Minutes, 2
    PixelSearch, X, Y, 1427, 726, 1470, 758, 0x916A38, 10, Fast RGB
    If (ErrorLevel = 0){
        MsgBox, , Mission Check, Mission has more than 3 minutes remaining, 2
    } Else {
        MsgBox, , Mission Check, Checking if mission is free to complete, 2
        ; check if mission is free to finish early
        PixelSearch, X, Y, 1394, 721, 1482, 759, 0xF9AA47, 10, Fast RGB
        If (ErrorLevel = 0){
            MsgBox, , Mission Check, Mission can be completed early for free, 2
            MouseMove, 1365, 758
            Sleep, 1000
            Click
            Sleep, 1000
            MouseMove, 971, 628
            Sleep, 1000
            Click
            Sleep, 1000
            Goto, Checks
        } Else {
        ; check if mission is complete
        MsgBox, , Mission Check, Checking if mission is already complete, 2
        PixelSearch, X, Y, 1077, 597, 1111, 649, 0x0AA008, 10, Fast RGB
            If (ErrorLevel = 0){
                MsgBox, , Mission Check, Mission Complete - claiming and checking for more!, 2
                MouseMove, 971, 628
                Sleep, 1000
                Click
                Sleep, 1000
                Goto, Checks
            }
        }
    MapClose()
    }
    ; checking 2nd highest mission to fail-safe the grayed out first mission bug
    MsgBox, , Fail-Safe Check, Checking 2nd highest mission for fail-safe, 2
    MouseMove, 155, 446
    Sleep, 1000
    Click
    Sleep, 1000
    ; check if mission is still longer than 3 mins (speed w/gems)
    MsgBox, , Mission Check, Checking for duration over 3 Minutes, 2
    PixelSearch, X, Y, 1427, 726, 1470, 758, 0x916A38, 10, Fast RGB
    If (ErrorLevel = 0){
        MsgBox, , Mission Check, Mission has more than 3 minutes remaining, 2
        MapClose()
    } Else {
        MsgBox, , Mission Check, Checking if mission is free to complete, 2
        ; check if mission is free to finish early
        PixelSearch, X, Y, 1394, 721, 1482, 759, 0xF9AA47, 10, Fast RGB
        If (ErrorLevel = 0){
            MsgBox, , Mission Check, Mission can be completed early for free, 2
            MouseMove, 1365, 758
            Sleep, 1000
            Click
            Sleep, 1000
            MouseMove, 971, 628
            Sleep, 1000
            Click
            Sleep, 1000
            Goto, Checks
        } Else {
        ; check if mission is complete
        MsgBox, , Mission Check, Checking if mission is already complete, 2
        PixelSearch, X, Y, 1077, 597, 1111, 649, 0x0AA008, 10, Fast RGB
            If (ErrorLevel = 0){
                MsgBox, , Mission Check, Mission Complete - claiming and checking for more!, 2
                MouseMove, 971, 628
                Sleep, 1000
                Click
                Sleep, 1000
                Goto, Checks
            }
        }
    MapClose()
    }
    Troops:
    MsgBox, , Troop Check, Checking for idle troops., 2
    ; Check if there are idle troops
    PixelSearch, X, Y, 1175, 996, 1187, 1012, 0x542710, 10, Fast RGB
        If (ErrorLevel = 0){
            MsgBox, , Troop Check, Slackers found - starting maps, 2
            MapStart()
        } Else {
            MsgBox, , Troop Check, No troops found - leaving maps, 2
        }
}
