;ClaimBeer.ahk

#include Functions\subFunctions\MainMenu.ahk
#include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\OpenTown.ahk
#Include Functions\subFunctions\UseTavernToken.ahk

; skip claiming beer from tavern
ClaimBeer(){
    GuiControlGet, Checked, , Beer, ;get state of Research checkbox
        if (Checked=0){
            ControlFocus,, ahk_exe Firestone.exe
            MainMenu()
            OpenTown()
            ; open Tavern
            MouseMove, 719, 957
            Sleep, 1000
            click
            Sleep, 1500
            ; check for enough beer to claim tokens
            MouseMove, 1735, 69
            Sleep, 1000
            click
            Sleep, 1500
            MouseMove, 544, 630
            Sleep, 1000
            click
            Sleep, 1500
            BigClose()
            ; check if Use Tavern Token is checked
            GuiControlGet, Checked, , Token,
            If (Checked = 1){
                UseToken()
            }
            BigClose()
            BigClose()
            Return
        }
    Return
}