; Guild.ahk

#Include Functions\PTree.ahk
#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\MainMenu.ahk

; expeditions function
Guild(){
    ControlFocus,, ahk_exe Firestone.exe
    MainMenu()
    MouseMove, 1857, 481
    Sleep, 1000
    Click
    Sleep, 1500
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
    ; check if claiming pickaxes
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
    GuiControlGet,Checked, , PTree,
    If (Checked = 1){
        MouseMove, 1560, 366
        Sleep, 1000
        Click
        Sleep, 1500
        PersonalTree()
    }
    ; check if clearing guild notifications
    GuiControlGet,Checked, , GNotif,
    If (Checked = 1){
        ClearNotifications()
    }
    return
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
    MouseMove, 716, 637
    Sleep, 1000
    Click
    Sleep, 1500
    BigClose()
    Return
}
HitCrystal(){
    MouseMove, 1646, 928
    Sleep, 1000
    Click
    Sleep, 1500
    MouseMove, 957, 896
    Sleep, 1000
    Click
    Sleep, 1500
    BigClose()
    Return
}
ClearNotifications(){
    MouseMove, 1056, 487
    Sleep, 1000
    Click
    Sleep, 1500
    MouseMove, 236, 606
    Sleep, 1000
    Click
    Sleep, 1500
    BigClose()
    Return
}