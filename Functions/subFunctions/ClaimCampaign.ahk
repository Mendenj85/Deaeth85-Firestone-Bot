; ClaimCampaign.ahk

#Include Functions\subFunctions\LiberationMissions.ahk
#Include Functions\subFunctions\GoMap.ahk
#Include Functions\subFunctions\BigClose.ahk
#Include Functions\util.ahk

;function to get the campaign coins and tokens
ClaimCampaign(){
    ControlFocus,, ahk_exe Firestone.exe
    MoveMouseRel(1857, 606)
    Sleep, 1000
    Click
    Sleep, 1000
    ; failsafe in case player doesn't have engineer unlocked
    PixelSearchRel(X, Y, 997, 310, 1305, 461, 0xF4E0C6, 2)
    If (ErrorLevel = 0){
        BigClose()
        BigClose()
        Return
    }
    PixelSearchRel(X, Y, 187, 926, 246, 990, 0x0AA008, 3)
    If (ErrorLevel = 0){
        MoveMouseRel(165, 977)
        Sleep, 1000
        Click
        Sleep, 1000
    }
    GuiControlGet, Checked, , Liberation,
    If (Checked=1){
        LiberationMissions()
    } 
    BigClose()
}