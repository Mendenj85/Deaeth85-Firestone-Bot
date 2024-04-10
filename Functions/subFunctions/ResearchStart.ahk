; ResearchStart.ahk

#Include Functions\subFunctions\ResearchClicks.ahk

ResearchStart() {
    MouseMove, 1429, 944
    MsgBox, , Setup, Scrolling to ensure tree setup, 1.5
    If (Slot2InProcess = 0){
        Loop, 35{
            Send, {WheelUp}
            Sleep, 200
        }
    }
    ; look for available research - column 1 upper
    PixelSearch, X, Y, 546, 219, 605, 311, 0x0D49DE, 3, Fast RGB
    If (ErrorLevel = 0){
        MouseMove, 405, 270
        Sleep, 1000
        Click
        Sleep, 500
        ResearchClicks()
    }
    If (Slot2InProcess = 1){
        Return
    }
    ; column 1 mid upper
    PixelSearch, X, Y, 538, 336, 597, 434, 0x0D49DE, 3, Fast RGB
    If (ErrorLevel = 0){
        MouseMove, 427, 391
        Sleep, 1000
        Click
        Sleep, 500
        ResearchClicks()
    }
    If (Slot2InProcess = 1){
        Return
    }
    ; column 1 middle
    PixelSearch, X, Y, 541, 461, 597, 557, 0x0D49DE, 3, Fast RGB
    If (ErrorLevel = 0){
        MouseMove, 424, 506
        Sleep, 1000
        Click
        Sleep, 500
        ResearchClicks()
    }
    If (Slot2InProcess = 1){
        Return
    }
    ; column 1 mid lower
    PixelSearch, X, Y, 538, 584, 599, 680, 0x0D49DE, 3, Fast RGB
    If (ErrorLevel = 0){
        MouseMove, 423, 629
        Sleep, 1000
        Click
        Sleep, 500
        ResearchClicks()
    }
    If (Slot2InProcess = 1){
        Return
    }
    ; column 1 lower
    PixelSearch, X, Y, 536, 703, 611, 796, 0x0D49DE, 3, Fast RGB
    If (ErrorLevel = 0){
        MouseMove, 422, 749
        Sleep, 1000
        Click
        Sleep, 500
        ResearchClicks()
    }
    If (Slot2InProcess = 1){
        Return
    }
    ; column 2 upper
    PixelSearch, X, Y, 998, 215, 1064, 309, 0x0D49DE, 3, Fast RGB
    If (ErrorLevel = 0){
        MouseMove, 876, 272
        Sleep, 1000
        Click
        Sleep, 500
        ResearchClicks()
    }
    If (Slot2InProcess = 1){
        Return
    }
    ; column 2 mid upper
    PixelSearch, X, Y, 991, 336, 1062, 438, 0x0D49DE, 3, Fast RGB
    If (ErrorLevel = 0){
        MouseMove, 875, 384
        Sleep, 1000
        Click
        Sleep, 500
        ResearchClicks()
    }
    If (Slot2InProcess = 1){
        Return
    }
    ; column 2 middle
    PixelSearch, X, Y, 1001, 459, 1061, 555, 0x0D49DE, 3, Fast RGB
    If (ErrorLevel = 0){
        MouseMove, 879, 514
        Sleep, 1000
        Click
        Sleep, 500
        ResearchClicks()
    }
    If (Slot2InProcess = 1){
        Return
    }
    ; column 2 mid lower
    PixelSearch, X, Y, 994, 580, 1065, 676, 0x0D49DE, 3, Fast RGB
    If (ErrorLevel = 0){
    MouseMove, 870, 634
    Sleep, 1000
    Click
    Sleep, 500
    ResearchClicks()
    }
    If (Slot2InProcess = 1){
        Return
    }
    ; column 2 lower
    PixelSearch, X, Y, 987, 703, 1063, 801, 0x0D49DE, 3, Fast RGB
    If (ErrorLevel = 0){
    MouseMove, 870, 758
    Sleep, 1000
    Click
    Sleep, 500
    ResearchClicks()
    }
    If (Slot2InProcess = 1){
        Return
    }
    ; column 3 upper
    PixelSearch, X, Y, 1447, 216, 1521, 312, 0x0D49DE, 3, Fast RGB
    If (ErrorLevel = 0){
    MouseMove, 1344, 264
    Sleep, 1000
    Click
    Sleep, 500
    ResearchClicks()
    }
    If (Slot2InProcess = 1){
        Return
    }
    ; column 3 mid upper
    PixelSearch, X, Y, 1447, 338, 1529, 437, 0x0D49DE, 3, Fast RGB
    If (ErrorLevel = 0){
    MouseMove, 1336, 384
    Sleep, 1000
    Click
    Sleep, 500
    ResearchClicks()
    }
    If (Slot2InProcess = 1){
        Return
    }
    ; column 3 middle
    PixelSearch, X, Y, 1455, 457, 1531, 554, 0x0D49DE, 3, Fast RGB
    If (ErrorLevel = 0){
    MouseMove, 1344, 515
    Sleep, 1000
    Click
    Sleep, 500
    ResearchClicks()
    }
    If (Slot2InProcess = 1){
        Return
    }
    ; column 3 mid lower
    PixelSearch, X, Y, 1448, 576, 1523, 680, 0x0D49DE, 3, Fast RGB
    If (ErrorLevel = 0){
    MouseMove, 1340, 631
    Sleep, 1000
    Click
    Sleep, 500
    ResearchClicks()
    }
    If (Slot2InProcess = 1){
        Return
    }
    ; column 3 lower
    PixelSearch, X, Y, 1451, 703, 1529, 801, 0x0D49DE, 3, Fast RGB
    If (ErrorLevel = 0){
    MouseMove, 1350, 754
    Sleep, 1000
    Click
    Sleep, 500
    ResearchClicks()
    }
    If (Slot2InProcess = 1){
        Return
    }
    ; column 4
    PixelSearch, X, Y, 1677, 459, 1757, 556, 0x0D49DE, 3, Fast RGB
    If (ErrorLevel = 0){
    MouseMove, 1795, 503
    Sleep, 1000
    Click
    Sleep, 500
    ResearchClicks()
    }
    If (Slot2InProcess = 1){
        Return
    }
    ; column 5 upper
    Loop, 35{
        Send, {WheelDown}
        Sleep, 200
    }
    PixelSearch, X, Y, 413, 340, 480, 437, 0x0D49DE, 3, Fast RGB
    If (ErrorLevel = 0){
    MouseMove, 306, 379
    Sleep, 1000
    Click
    Sleep, 500
    ResearchClicks()
    }
    If (Slot2InProcess = 1){
        Return
    }
    ; column 5 lower
    PixelSearch, X, Y, 411, 582, 476, 676, 0x0D49DE, 3, Fast RGB
    If (ErrorLevel = 0){
    MouseMove, 299, 628
    Sleep, 1000
    Click
    Sleep, 500
    ResearchClicks()
    }
    If (Slot2InProcess = 1){
        Return
    }
    ; column 6 upper
    PixelSearch, X, Y, 867, 342, 938, 432, 0x0D49DE, 3, Fast RGB
    If (ErrorLevel = 0){
    MouseMove, 754, 383
    Sleep, 1000
    Click
    Sleep, 500
    ResearchClicks()
    }
    If (Slot2InProcess = 1){
        Return
    }
    ; column 6 middle
    PixelSearch, X, Y, 868, 462, 938, 553, 0x0D49DE, 3, Fast RGB
    If (ErrorLevel = 0){
    MouseMove, 780, 508
    Sleep, 1000
    Click
    Sleep, 500
    ResearchClicks()
    }
    If (Slot2InProcess = 1){
        Return
    }
    ; column 6 lower
    PixelSearch, X, Y, 864, 581, 940, 672, 0x0D49DE, 3, Fast RGB
    If (ErrorLevel = 0){
    MouseMove, 766, 632
    Sleep, 1000
    Click
    Sleep, 500
    ResearchClicks()
    }
    If (Slot2InProcess = 1){
        Return
    }
    ; column 7 upper
    PixelSearch, X, Y, 1325, 218, 1400, 313, 0x0D49DE, 3, Fast RGB
    If (ErrorLevel = 0){
    MouseMove, 1232, 269
    Sleep, 1000
    Click
    Sleep, 500
    ResearchClicks()
    }
    If (Slot2InProcess = 1){
        Return
    }
    ; column 7 mid upper
    PixelSearch, X, Y, 1329, 335, 1406, 436, 0x0D49DE, 3, Fast RGB
    If (ErrorLevel = 0){
    MouseMove, 1233, 391
    Sleep, 1000
    Click
    Sleep, 500
    ResearchClicks()
    }
    If (Slot2InProcess = 1){
        Return
    }
    ; column 7 middle
    PixelSearch, X, Y, 1334, 462, 1412, 550, 0x0D49DE, 3, Fast RGB
    If (ErrorLevel = 0){
    MouseMove, 1228, 511
    Sleep, 1000
    Click
    Sleep, 500
    ResearchClicks()
    }
    If (Slot2InProcess = 1){
        Return
    }
    ; column 7 mid lower
    PixelSearch, X, Y, 1329, 582, 1404, 678, 0x0D49DE, 3, Fast RGB
    If (ErrorLevel = 0){
    MouseMove, 1221, 632
    Sleep, 1000
    Click
    Sleep, 500
    ResearchClicks()
    }
    If (Slot2InProcess = 1){
        Return
    }
    ; column 7 lower
    PixelSearch, X, Y, 1329, 704, 1406, 801, 0x0D49DE, 3, Fast RGB
    If (ErrorLevel = 0){
    MouseMove, 1221, 632
    Sleep, 1000
    Click
    Sleep, 500
    ResearchClicks()
    }
    If (Slot2InProcess = 1){
        Return
    }
    ; column 8 upper
    PixelSearch, X, Y, 1789, 215, 1866, 312, 0x0D49DE, 3, Fast RGB
    If (ErrorLevel = 0){
    MouseMove, 1687, 278
    Sleep, 1000
    Click
    Sleep, 500
    ResearchClicks()
    }
    If (Slot2InProcess = 1){
        Return
    }
    ; column 8 mid upper
    PixelSearch, X, Y, 1793, 338, 1871, 436, 0x0D49DE, 3, Fast RGB
    If (ErrorLevel = 0){
    MouseMove, 1675, 388
    Sleep, 1000
    Click
    Sleep, 500
    ResearchClicks()
    }
    If (Slot2InProcess = 1){
        Return
    }
    ; column 8 middle
    PixelSearch, X, Y, 1791, 459, 1868, 551, 0x0D49DE, 3, Fast RGB
    If (ErrorLevel = 0){
    MouseMove, 1693, 509
    Sleep, 1000
    Click
    Sleep, 500
    ResearchClicks()
    }
    If (Slot2InProcess = 1){
        Return
    }
    ; column 8 mid lower
    PixelSearch, X, Y, 1789, 577, 1868, 677, 0x0D49DE, 3, Fast RGB
    If (ErrorLevel = 0){
    MouseMove, 1676, 628
    Sleep, 1000
    Click
    Sleep, 500
    ResearchClicks()
    }
    If (Slot2InProcess = 1){
        Return
    }
    ; column 8 lower
    PixelSearch, X, Y, 1793, 706, 1867, 796, 0x0D49DE, 3, Fast RGB
    If (ErrorLevel = 0){
    MouseMove, 1697, 752
    Sleep, 1000
    Click
    Sleep, 500
    ResearchClicks()
    }
    If (Slot2InProcess = 1){
        Return
    }
}
