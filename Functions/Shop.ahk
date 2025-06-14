; Shop.ahk

#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\MainMenu.ahk
#Include Functions\util.ahk

lastExecutionTimeShop := 0

Shop(){
    ControlFocus,, ahk_exe Firestone.exe
    PixelSearchRel(X, Y, 1876, 523, 1905, 564, 0xF40000, 3)
    If (ErrorLevel = 0){
        MoveMouseRel(1857, 583)
        Sleep, 1000
        Click
        Sleep, 1500
        ; claim mystery box
        MoveMouseRel(591, 754)
        Sleep, 1000
        Click
        Sleep, 1000
        ; open daily check-in
        MoveMouseRel(1383, 116)
        Sleep, 1000
        Click
        Sleep, 1000
        ; check in
        MoveMouseRel(1346, 894)
        Sleep, 3000
        Click
        Sleep, 1000
        MoveMouseRel(1339, 828)
        Sleep, 3000
        Click
        Sleep, 1000
        BigClose()
        MsgBox, , Main Menu Check, Checking to ensure we are on main screen after redeeming shop gifts, 2
        MainMenu()
    }
}
