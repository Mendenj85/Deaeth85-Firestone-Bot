; Alchemist.ahk

#include Functions\subFunctions\MainMenu.ahk
#include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\OpenTown.ahk

;alchemist start
Alchemist(){
    ControlFocus,, ahk_exe Firestone.exe
    MainMenu()
    OpenTown()
    ; open Alchemist
    MouseMove, 511, 837
    Sleep, 1000
    Click
    Sleep, 1500
    ; check for completed alchemy with blood
    PixelSearch, X, Y, 985, 746, 1037, 792, 0x0AA008, 100, Fast RGB
        if (ErrorLevel = 0){
            MouseMove, 949, 777
            Sleep, 1000
            click
            sleep, 1500
            MouseMove, 935, 765
            Sleep, 1000
            Click
            Sleep, 1500
        }
    ; check for completed alchemy with dust
    PixelSearch, x, y, 1336, 748, 1386, 789, 0x0AA008, 100, Fast RGB
        if (ErrorLevel = 0){
            MouseMove, 1286, 786
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 1286, 770
            Sleep, 1000
            Click
            Sleep, 1500
        }
    ; check for in-process alchemy with blood
    PixelSearch, X, Y, 1007, 735, 1030, 766, 0x916A38, 100, Fast RGB
        if (ErrorLevel = 0){
            Goto, DustSearch
        } else {
            MouseMove, 951, 771
            Sleep, 1000
            Click
            Sleep, 1500
        }
    DustSearch:
    ; check for in-process alchemy with dust
    PixelSearch,X,Y, 1344, 775, 1381, 815, 0xF39E42, 100, Fast RGB
        if (ErrorLevel = 0){
            Goto, ExoticCheck
        } else {
            MouseMove, 1286, 786
            Sleep, 1000
            Click
            Sleep, 1500
        }
    ; check if using exotic coins, go through same steps as above if so
    ExoticCheck:
    GuiControlGet, Checked, , Coin,
        if (Checked = 1){
            ; check for completed alchemy with exotic coins
            PixelSearch, X, Y, 1679, 748, 1735, 796, 0x0AA008, 100, Fast RGB
                if (ErrorLevel = 0){
                    MouseMove, 1632, 772
                    Sleep, 1000
                    Click
                    Sleep, 1500
                    Goto, StartExotic
                }
            ; check for in-process alchemy with exotic coins
            PixelSearch, x, y, 1693, 732, 1731, 767, 0x916A38, 100 Fast RGB
                if (ErrorLevel = 0){
                    Return
                }
            StartExotic:
            MouseMove, 1641, 767
            Sleep, 1000
            Click
            Sleep, 1500
            Return
        }
    BigClose()
    BigClose()
}
