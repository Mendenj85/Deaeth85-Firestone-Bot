;ClaimBeer.ahk

#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\CraftArtifact.ahk
#Include Functions\subFunctions\UseTavernToken.ahk
#Include Functions\util.ahk

ClaimBeer(){
    ControlFocus,, ahk_exe Firestone.exe
    ; open Tavern
    MoveMouseRel(719, 957)
    Sleep, 1000
    Click
    Sleep, 1500
    ; check for enough beer to claim tokens
    MoveMouseRel(1735, 69)
    Sleep, 1000
    Click
    Sleep, 1000
    PixelSearchRel(FoundX, FoundY, 616, 610, 697, 656, 0x659BB0, 3)
    If (ErrorLevel = 0){
        MoveMouseRel(544, 630)
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