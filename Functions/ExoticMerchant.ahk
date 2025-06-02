; SellExotic.ahk

#Include Functions\subFunctions\BuyExotic.ahk
#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\ExoticUpgrades.ahk

ExoticMerchant(){
    ; Open exotic merchant
    MouseMove, 1459, 650
    Sleep, 1000
    Click
    Sleep, 1500
    ; check if Sell Scrolls is checked
    GuiControlGet, Checked, , SellScrolls,
    If (Checked = 1){
        Goto, SellStart
    } Else {
        ; check if Sell All Exotic Items is checked
        GuiControlGet, Checked, , SellAll,
        If (Checked = 1){
            Goto, SellStart
        } Else {
            ; check if Sell All But Keep Gold Items is checked
            GuiControlGet, Checked, , SellNoGold,
            If (Checked = 1){
                Goto, SellStart
            } Else {
                Goto, ExChecks
            }
        }
    }
    SellStart:
        ; sell scroll of speed
        PixelSearch, X, Y, 1026, 596, 1074, 636, 0x0AA008, 3, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, 959, 596
            Sleep, 1000
            Click
            Sleep, 1000
        }
        ; sell scroll of damage
        PixelSearch, X, Y, 1350, 598, 1401, 634, 0x0AA008, 3, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, 1280, 601
            Sleep, 1000
            Click
            Sleep, 1000
        }
        ; sell scroll of health
        PixelSearch, X, Y, 1678, 596, 1724, 635, 0x0AA008, 3, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, 1595, 592
            Sleep, 1000
            Click
            Sleep, 1000
        }
        ; check if Sell ALL exotic items is checked
        GuiControlGet, Checked, , SellAll,
        If (Checked = 1){
            ; sell midas' touch
            PixelSearch, X, Y, 1022, 912, 1078, 951, 0x0AA008, 3, Fast RGB
            If (ErrorLevel = 0){
                MouseMove, 962, 908
                Sleep, 1000
                Click
                Sleep, 1000
            }
            ; sell pouch of gold
            PixelSearch, X, Y, 1336, 916, 1399, 956, 0x0AA008, 3, Fast RGB
            If (ErrorLevel = 0){
                MouseMove, 1278, 910
                Sleep, 1000
                Click
                Sleep, 1000
            }
            ; sell bucket of gold
            PixelSearch, X, Y, 1663, 917, 1720, 950, 0x0AA008, 3, Fast RGB
            If (ErrorLevel = 0){
                MouseMove, 1602, 911
                Sleep, 1000
                Click
                Sleep, 1000
            }
            ; scroll to bottom
            Loop, 35{
                Send, {WheelDown}
                Sleep, 200
            }
            ; sell crate of gold
            PixelSearch, X, Y, 1026, 298, 1081, 338, 0x0AA008, 3, Fast RGB
            If (ErrorLevel = 0){
                MouseMove, 967, 307
                Sleep, 1000
                Click
                Sleep, 1000
            }
            ; sell barrel of gold
            PixelSearch, X, Y, 1341, 296, 1398, 335, 0x0AA008, 3, Fast RGB
            If (ErrorLevel = 0){
                MouseMove, 1280, 313
                Sleep, 1000
                Click
                Sleep, 1000
            }
            ; sell drums of war
            PixelSearch, X, Y, 1678, 298, 1721, 332, 0x0AA008, 3, Fast RGB
            If (ErrorLevel = 0){
                MouseMove, 1611, 313
                Sleep, 1000
                Click
                Sleep, 1000
            }
            ; sell dragon armor
            PixelSearch, X, Y, 1024, 616, 1078, 648, 0x0AA008, 3, Fast RGB
            If (ErrorLevel = 0){
                MouseMove, 954, 616
                Sleep, 1000
                Click
                Sleep, 1000
            }
            ; sell guardian's rune
            PixelSearch, X, Y, 1346, 614, 1399, 651, 0x0AA008, 3, Fast RGB
            If (ErrorLevel = 0){
                MouseMove, 1269, 608
                Sleep, 1000
                Click
                Sleep, 1000
            }
            ; sell totem of agony
            PixelSearch, X, Y, 1667, 616, 1722, 652, 0x0AA008, 3, Fast RGB
            If (ErrorLevel = 0){
                MouseMove, 1591, 610
                Sleep, 1000
                Click
                Sleep, 1000
            }
            ; sell totem of annihilation
            PixelSearch, X, Y, 1030, 930, 1078, 975, 0x0AA008, 3, Fast RGB
            If (ErrorLevel = 0){
                MouseMove, 951, 934
                Sleep, 1000
                Click
                Sleep, 1000
            }
        } Else {
            ; check if Sell All But Keep Gold Items is checked
            GuiControlGet, Checked, , SellNoGold,
            If (Checked = 1){
                Loop, 35{
                    Send, {WheelDown}
                    Sleep, 200
                }
                ; sell drums of war
                PixelSearch, X, Y, 1678, 298, 1721, 332, 0x0AA008, 3, Fast RGB
                If (ErrorLevel = 0){
                    MouseMove, 1611, 313
                    Sleep, 1000
                    Click
                    Sleep, 1000
                }
                ; sell dragon armor
                PixelSearch, X, Y, 1024, 616, 1078, 648, 0x0AA008, 3, Fast RGB
                If (ErrorLevel = 0){
                    MouseMove, 954, 616
                    Sleep, 1000
                    Click
                    Sleep, 1000
                }
                ; sell guardian's rune
                PixelSearch, X, Y, 1346, 614, 1399, 651, 0x0AA008, 3, Fast RGB
                If (ErrorLevel = 0){
                    MouseMove, 1269, 608
                    Sleep, 1000
                    Click
                    Sleep, 1000
                }
                ; sell totem of agony
                PixelSearch, X, Y, 1667, 616, 1722, 652, 0x0AA008, 3, Fast RGB
                If (ErrorLevel = 0){
                    MouseMove, 1591, 610
                    Sleep, 1000
                    Click
                    Sleep, 1000
                }
                ; sell totem of annihilation
                PixelSearch, X, Y, 1030, 930, 1078, 975, 0x0AA008, 3, Fast RGB
                If (ErrorLevel = 0){
                    MouseMove, 951, 934
                    Sleep, 1000
                    Click
                    Sleep, 1000
                }
            }
        }
    ExChecks:
        ; check if Exotic Upgrades is checked
        GuiControlGet, Checked, , ExoticUpgrades
        If (Checked = 1){
            ExoticUpgrades()
        }
        ; check if buy exotic chests is checked
        GuiControlGet, Checked, , BuyEx,
        If (Checked = 1) {
            BuyExotic()
        }
        BigClose()
    }