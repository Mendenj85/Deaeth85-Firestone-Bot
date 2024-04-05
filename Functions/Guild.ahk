; Guild.ahk

#Include Functions\PTree.ahk
#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\MainMenu.ahk

; expeditions function
Guild(){
    ControlFocus,, ahk_exe Firestone.exe
    MainMenu()
    MouseMove, 1857, 481
    sleep, 1000
    click
    sleep, 1500
    MouseMove, 308, 406
    sleep, 1000
    click
    sleep, 1500
    MouseMove, 1321, 331
    sleep, 1000
    click
    sleep, 1500
    click
    sleep, 1500
    BigClose()
    ; check if claiming pickaxes
    GuiControlGet, Checked, , Pickaxes, 
        if (Checked = 0){
            ClaimAxes()
    }
    ; check if we are doing crystal hits
    GuiControlGet, Checked, , Crystal,
        if (Checked = 1){
            HitCrystal()
    }
    ; see if we are running personal tree or not
    GuiControlGet,Checked, , PTree,
    if (Checked = 1){
        MouseMove, 1560, 366
        Sleep, 1000
        Click
        Sleep, 1500
        PersonalTree()
    }
    ; check if clearing guild notifications
    GuiControlGet,Checked, , GNotif,
        if (Checked = 1){
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
    return
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
    return
}