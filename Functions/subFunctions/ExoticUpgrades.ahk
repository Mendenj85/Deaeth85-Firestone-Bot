; ExoticUpgrades.ahk

#Include Functions\util.ahk

ExoticUpgrades(){
    ; open upgrades menu
    MoveMouseRel(1282, 173)
    Sleep, 1000
    Click
    Sleep, 1000
    MoveMouseRel(1270, 567)
    Sleep, 1000
    ; check row 1 spot 1
    PixelSearchRel(FoundX, FoundY, 1004, 833, 1060, 874, 0x0AA008, 3)
    If (ErrorLevel = 0){
        MoveMouseRel(900, 851)
        Sleep, 1000
        Click
        Sleep, 500
        Return
    } Else {
        ; check row 1 spot 2
        PixelSearchRel(FoundX, FoundY, 1350, 830, 1400, 865, 0x0AA008, 3)
        If (ErrorLevel = 0){
            MoveMouseRel(1284, 840)
            Sleep, 1000
            Click
            Sleep, 500
            Return
        } Else {
            ; check row 1 spot 3
            PixelSearchRel(FoundX, FoundY, 1694, 831, 1741, 872, 0x0AA008, 3)
            If (ErrorLevel = 0){
                MoveMouseRel(1626, 836)
                Sleep, 1000
                Click
                Sleep, 500
                Return
            } Else {
                ; scroll to row 2
                Loop, 13{
                    Send, {WheelDown}
                    Sleep, 200
                }
                ; check row 2 spot 1
                PixelSearchRel(FoundX, FoundY, 999, 907, 1051, 946, 0x0AA008, 3)
                If (ErrorLevel = 0){
                    MoveMouseRel(932, 919)
                    Sleep, 1000
                    Click
                    Sleep, 500
                    Return
                } Else {
                    ; check row 2 spot 2
                    PixelSearchRel(FoundX, FoundY, 1353, 905, 1400, 944, 0x0AA008, 3)
                    If (ErrorLevel = 0){
                        MoveMouseRel(1278, 911)
                        Sleep, 1000
                        Click
                        Sleep, 500
                        Return
                    } Else {
                        ; check row 2 spot 3
                        PixelSearchRel(FoundX, FoundY, 1695, 904, 1745, 939, 0x0AA008, 3)
                        If (ErrorLevel = 0){
                            MoveMouseRel(1621, 906)
                            Sleep, 1000
                            Click
                            Sleep, 500
                            Return
                        } Else {
                            ; scroll to row 3
                            Loop, 15{
                                Send, {WheelDown}
                                Sleep, 200
                            }
                            ; check row 3 spot 1
                            PixelSearchRel(FoundX, FoundY, 999, 907, 1051, 946, 0x0AA008, 3)
                            If (ErrorLevel = 0){
                                MoveMouseRel(932, 919)
                                Sleep, 1000
                                Click
                                Sleep, 500
                                Return
                            } Else {
                                ; check row 3 spot 2
                                PixelSearchRel(FoundX, FoundY, 1353, 905, 1400, 944, 0x0AA008, 3)
                                If (ErrorLevel = 0){
                                    MoveMouseRel(1278, 911)
                                    Sleep, 1000
                                    Click
                                    Sleep, 500
                                    Return
                                } Else {
                                    ; check row 3 spot 3
                                    PixelSearchRel(FoundX, FoundY, 1695, 904, 1745, 939, 0x0AA008, 3)
                                    If (ErrorLevel = 0){
                                        MoveMouseRel(1621, 906)
                                        Sleep, 1000
                                        Click
                                        Sleep, 500
                                        Return
                                    } Else {
                                        ; scroll to row 4
                                        Loop, 15{
                                            Send, {WheelDown}
                                            Sleep, 200
                                        }
                                        ; check row 4 spot 1
                                        PixelSearchRel(FoundX, FoundY, 999, 907, 1051, 946, 0x0AA008, 3)
                                        If (ErrorLevel = 0){
                                            MoveMouseRel(932, 919)
                                            Sleep, 1000
                                            Click
                                            Sleep, 500
                                            Return
                                        } Else {
                                            ; check row 4 spot 2
                                            PixelSearchRel(FoundX, FoundY, 1353, 905, 1400, 944, 0x0AA008, 3)
                                            If (ErrorLevel = 0){
                                                MoveMouseRel(1278, 911)
                                                Sleep, 1000
                                                Click
                                                Sleep, 500
                                                Return
                                            } Else {
                                                ; check row 4 spot 3
                                                PixelSearchRel(FoundX, FoundY, 1695, 904, 1745, 939, 0x0AA008, 3)
                                                If (ErrorLevel = 0){
                                                    MoveMouseRel(1621, 906)
                                                    Sleep, 1000
                                                    Click
                                                    Sleep, 500
                                                    Return
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}