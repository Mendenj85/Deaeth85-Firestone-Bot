; Guild.ahk

#Include Functions\subFunctions\Awaken.ahk
#Include Functions\subFunctions\Chaos.ahk
#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\PTree.ahk

; expeditions function
Guild(){
    ControlFocus,, ahk_exe Firestone.exe
    ; open guild
    MouseMove, 1857, 481
    Sleep, 1000
    Click
    Sleep, 1500
    ; check if expeditions are ready
    PixelSearch, X, Y, 450, 410, 380, 490, 0xF40000, 3, Fast RGB
    If (ErrorLevel = 0){
        MouseMove, 308, 406
        Sleep, 1000
        Click
        Sleep, 1500
        MouseMove, 1321, 331
        Sleep, 1000
        Click
        Sleep, 1500
        Click
        Sleep, 1000
        BigClose()
    }
    ; check if awaken heroes is selected
    GuiControlGet, Checked, , Awaken,
    If (Checked = 1){
        AwakenRun()
    }
    ; check if Chaos Rift is selected
    GuiControlGet, Checked, , Chaos,
    If (Checked = 1){
        HitChaos()
    }
    ; check if skipping claiming pickaxes
    GuiControlGet, Checked, , Pickaxes,
        If (Checked = 1){
            Goto, CrystalHit
        } Else {
            ClaimAxes()
        }
    CrystalHit:
    ; check if we are doing crystal hits
    GuiControlGet, Checked, , Crystal,
        If (Checked = 1){
            HitCrystal()
        }
    ; see if we are running personal tree or not
    GuiControlGet, Checked, , PTree,
    If (Checked = 1){
        MouseMove, 1560, 366
        Sleep, 1000
        Click
        Sleep, 1500
        PersonalTree()
    }
    ; check if clearing guild notifications
    GuiControlGet, Checked, , GNotif,
    If (Checked = 1){
        ClearNotifications()
    }
    BigClose()
    Return
}
ClaimAxes(){
    MouseMove, 639, 263
    Sleep, 1000
    Click
    Sleep, 1500
    MouseMove, 141, 740
    Sleep, 1000
    Click
    Sleep, 1500
    PixelSearch, X, Y, 764, 617, 869, 653, 0x1EA569, 3, Fast RGB
    If (ErrorLevel = 0){
        MouseMove, 716, 637
        Sleep, 1000
        Click
        Sleep, 1500
    }
    BigClose()
    Return
}
HitCrystal(){
    MouseMove, 1646, 928
    Sleep, 1000
    Click
    Sleep, 1500
    PixelSearch, X, Y, 1101, 904, 1075, 946, 0x0AA008, 3, Fast RGB
    If (ErrorLevel = 0){
        MouseMove, 957, 896
        Sleep, 1000
        Click
        Sleep, 1500
    }
    BigClose()
    Return
}
ClearNotifications(){
    MouseMove, 1056, 487
    Sleep, 1000
    Click
    Sleep, 1500
    BigClose()
    MouseMove, 230, 667
    Sleep, 1000
    Click
    Sleep, 1500
    BigClose()
    Return
}
