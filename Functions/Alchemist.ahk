; Alchemist.ahk

#Include Functions\subFunctions\BigClose.ahk

;alchemist start
Alchemist(){
    ControlFocus,, ahk_exe Firestone.exe
    ; open Alchemist
    MouseMove, 511, 837
    Sleep, 1000
    Click
    Sleep, 1500
    ; check for completed alchemy with blood
    PixelSearch, X, Y, 985, 746, 1037, 792, 0x0AA008, 3, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, 949, 777
            click
            sleep, 1000
            MouseMove, 935, 765
            Sleep, 1000
            Click
            Sleep, 1000
        }
    ; check for completed alchemy with dust
    PixelSearch, x, y, 1336, 748, 1386, 789, 0x0AA008, 3, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, 1286, 786
            Click
            Sleep, 1000
            MouseMove, 1286, 770
            Sleep, 1000
            Click
            Sleep, 1000
        }
    ; check for free to complete alchemy with blood
    PixelSearch, X, Y, 985, 746, 1037, 792, 0xF9AA47, 3, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, 949, 777
            click
            sleep, 1000
            MouseMove, 935, 765
            Sleep, 1000
            Click
            Sleep, 1000
        }
        ; check for free to complete alchemy with dust
        PixelSearch, x, y, 1336, 748, 1386, 789, 0xF9AA47, 3, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, 1286, 786
            Click
            Sleep, 1000
            MouseMove, 1286, 770
            Sleep, 1000
            Click
            Sleep, 1000
        }
    ; check for in-process alchemy with blood
    PixelSearch, X, Y, 1007, 735, 1030, 766, 0x916A38, 3, Fast RGB
        If (ErrorLevel = 0){
            Goto, DustSearch
        } Else {
            MouseMove, 951, 771
            Sleep, 1000
            Click
            Sleep, 1000
            Goto, DustSearch
        }
    DustSearch:
    ; check for in-process alchemy with dust
    PixelSearch,X,Y, 1344, 775, 1381, 815, 0xF39E42, 3, Fast RGB
    If (ErrorLevel = 0){
        Goto, ExoticCheck
    } Else {
        MouseMove, 1286, 786
        Sleep, 1000
        Click
        Sleep, 1000
    }
    ; check If using exotic coins, go through same steps as above If so
    ExoticCheck:
    GuiControlGet, Checked, , Coin,
        If (Checked = 1){
            ; check for completed alchemy with exotic coins
            PixelSearch, X, Y, 1679, 748, 1735, 796, 0x0AA008, 3, Fast RGB
            If (ErrorLevel = 0){
                MouseMove, 1632, 772
                Sleep, 1000
                Click
                Sleep, 1000
                UseExoticCoins()
            } Else {
                ; check for free to complete alchemy with exotic coins
                PixelSearch, X, Y, 1679, 748, 1735, 796, 0xF9AA47, 3, Fast RGB
                If (ErrorLevel = 0){
                    MouseMove, 1632, 772
                    Sleep, 1000
                    Click
                    Sleep, 1000
                    UseExoticCoins()
                } Else {
                    ; check for in-process alchemy with exotic coins
                    PixelSearch, x, y, 1693, 732, 1731, 767, 0x916A38, 3 Fast RGB
                    If (ErrorLevel = 0){
                        Return
                    }
                }
            }
        } Else {
            BigClose()
            Return
        }
}
UseExoticCoins(){
    MouseMove, 1641, 767
    Sleep, 1000
    Click
    Sleep, 1000
    BigClose()
}