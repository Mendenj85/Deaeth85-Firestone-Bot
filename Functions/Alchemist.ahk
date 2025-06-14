; Alchemist.ahk

#Include Functions\subFunctions\BigClose.ahk
#Include Functions\util.ahk

;alchemist start
Alchemist(){
    ControlFocus,, ahk_exe Firestone.exe
    ; open Alchemist
    MoveMouseRel(511, 837)
    Sleep, 1000
    Click
    Sleep, 1500

    ; check if blood alchemy isn't running
    PixelSearchRel(FoundX, FoundY, 928, 519, 948, 535, 0xFFC700, 3)
    If (ErrorLevel = 0){
        MsgBox, , Alchemy Status, Dragon Blood alchemy is not running, 1.5
    } Else {
        ; check for completed alchemy with blood
        PixelSearchRel(FoundX, FoundY, 985, 746, 1037, 792, 0x0AA008, 3)
        If (ErrorLevel = 0){
            MoveMouseRel(949, 777)
            MsgBox, , Alchemy Status, Dragon Blood experiment is complete, 1.5
            Click
            Sleep, 1000
        }
    }

    ; check if dust alchemy isn't running
    PixelSearchRel(FoundX, FoundY, 1274, 515, 1298, 537, 0xFFC700, 3)
    If (ErrorLevel = 0){
        MsgBox, , Alchemy Status, Strange Dust alchemy is not running, 1.5
    } Else {
        ; check for completed alchemy with dust
        PixelSearchRel(FoundX, FoundY, 1336, 748, 1386, 789, 0x0AA008, 3)
        If (ErrorLevel = 0){
            MoveMouseRel(1286, 786)
            MsgBox, , Alchemy Status, Strange Dust experiment is complete, 1.5
            Click
            Sleep, 1000
        }
    }

    ; check if exotic coin alchemy isn't running
    PixelSearchRel(FoundX, FoundY, 1622, 518, 1645, 538, 0xFFC700, 3)
    If (ErrorLevel = 0){
        MsgBox, , Alchemy Status, Exotic Coins alchemy is not running, 1.5
    } Else {
        ; check for completed alchemy with exotic coins
        PixelSearchRel(FoundX, FoundY, 1679, 748, 1735, 796, 0x0AA008, 3)
        If (ErrorLevel = 0){
            MoveMouseRel(1632, 772)
            MsgBox, , Alchemy Status, Exotic Coins experiment is complete, 1.5
            Click
            Sleep, 1000
        }
    }

    ; check for free to complete alchemy with blood
    PixelSearchRel(FoundX, FoundY, 969, 742, 1026, 756, 0xF9AA47, 3)
    If (ErrorLevel = 0){
        MoveMouseRel(949, 777)
        MsgBox, , Alchemy Status, Dragon Blood experiment is free to complete, 1.5
        Click
        Sleep, 1000
    }

    ; check for free to complete alchemy with dust
    PixelSearchRel(FoundX, FoundY, 1336, 748, 1386, 789, 0xF9AA47, 3)
    If (ErrorLevel = 0){
        MoveMouseRel(1286, 786)
        MsgBox, , Alchemy Status, Strange Dust experiment is free to complete, 1.5
        Click
        Sleep, 1000
    }

    ; check for free to complete alchemy with exotic coins
    PixelSearchRel(FoundX, FoundY, 1679, 748, 1735, 796, 0xF9AA47, 3)
    If (ErrorLevel = 0){
        MoveMouseRel(1632, 772)
        MsgBox, , Alchemy Status, Exotic Coins experiment is free to complete, 1.5
        Click
        Sleep, 1000
    }

    ; check for in-process alchemy with blood
    PixelSearchRel(FoundX, FoundY, 1007, 735, 1030, 766, 0x916A38, 3)
    If (ErrorLevel = 0){
        MsgBox, , Alchemy Status, Dragon Blood experiment has more than 3 minutes remaining, 1.5
        Goto, DustSearch
    } Else {
        MoveMouseRel(951, 771)
        MsgBox, , Alchemy Status, Starting Dragon Blood experiment, 1.5
        Click
        Sleep, 1000
        Goto, DustSearch
    }

    DustSearch:
    ; check if don't use dust is checked
    GuiControlGet, Checked, , Dust
    If (Checked = 1){
        Goto, ExoticCheck
    } Else {
        ; check for in-process alchemy with dust
        PixelSearchRel(FoundX, FoundY, 1346, 734, 1373, 766, 0x916A38, 3)
        If (ErrorLevel = 0){
            MsgBox, , Alchemy Status, Strange Dust experiment has more than 3 minutes remaining, 1.5
            Goto, ExoticCheck
        } Else {
            MoveMouseRel(1286, 786)
            MsgBox, , Alchemy Status, Starting Strange Dust experiment, 1.5
            Click
            Sleep, 1000
            Goto, ExoticCheck
        }
    }

    ; check If using exotic coins, go through same steps as above If so
    ExoticCheck:
    GuiControlGet, Checked, , Coin
    If (Checked = 1){
        ; check for in-process alchemy with exotic coins
        PixelSearchRel(FoundX, FoundY, 1699, 737, 1723, 767, 0x916A38, 3)
        If (ErrorLevel = 0){
            MsgBox, , Alchemy Status, Exotic Coins experiment has more than 3 minutes remaining, 1.5
            Goto, FinishAlch
        } Else {
            ; start exotic coin alchemy
            MoveMouseRel(1641, 767)
            MsgBox, , Alchemy Status, Starting Exotic Coins experiment, 1.5
            Click
            Sleep, 1000
            Goto, FinishAlch
        }
    }

    FinishAlch:
    BigClose()
    Return
}