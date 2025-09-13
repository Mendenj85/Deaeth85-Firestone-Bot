;ClaimBeer.ahk

#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\CraftArtifact.ahk
#Include Functions\subFunctions\UseTavernToken.ahk

ClaimBeer(){
    ; check if skip beer was selected
    GuiControlGet, Checked, , Beer,
        If (Checked=1){
            Return
        } Else {
            ControlFocus,, ahk_exe Firestone.exe
            ; open Tavern
            MouseMove, 719, 957
            Sleep, 1000
            Click
            Sleep, 1000
            MouseMove, 773, 500
            Sleep, 1000
            Click
            Sleep, 1000
            ; check for enough beer to claim tokens
            MouseMove, 1735, 69
            Sleep, 1000
            Click
            Sleep, 1000
            PixelSearch, X, Y, 616, 610, 697, 656, 0x659BB0, 3, Fast RGB
            If (ErrorLevel = 0){
                MouseMove, 544, 630
                Sleep, 1000
                Click
                Sleep, 1000
            }
            BigClose()
            ; check if Use Tavern Token is checked
            GuiControlGet, Checked, , Token,
            If (Checked = 1){
                UseToken()
                CraftArtifact()
            }
            BigClose()
        }
}