; Shop.ahk

#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\MainMenu.ahk

lastExecutionTimeShop := 0

Shop(){
    ControlFocus,, ahk_exe Firestone.exe
    PixelSearch, X, Y, 1876, 523, 1905, 564, 0xF40000, 3, Fast RGB
    If (ErrorLevel = 0){
        MouseMove, 1857, 583
        Sleep, 1000
        Click
        Sleep, 1500
        ; claim mystery box
        MouseMove, 591, 754
        Sleep, 1000
        Click
        Sleep, 1000
        ; open daily check-in
        MouseMove, 1383, 116
        Sleep, 1000
        Click
        Sleep, 1000
        ; check in
        MouseMove, 1346, 894
        Sleep, 3000
        Click
        Sleep, 1000
        MouseMove, 1339, 828
        Sleep, 3000
        Click
        Sleep, 1000
        BigClose()
        MsgBox, , Main Menu Check, Checking to ensure we are on main screen after redeeming shop gifts, 2
        MainMenu()
    }
}
