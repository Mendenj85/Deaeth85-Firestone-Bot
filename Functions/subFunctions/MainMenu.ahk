; MainMenu.ahk

#include Functions\subFunctions\BigClose.ahk

;check to see if we are on the mainmenu in case script ends up badly on another menu, also skips the rate pop-up, it is done via avatar color(that is taken automatically on script start)
MainMenu(){
    ControlFocus,, ahk_exe Firestone.exe
    ; get to and find settings window, one big close to ensure we're on main page
    SettingsFinder:
        PixelSearch, X, Y, 1542, 655, 1654, 687, 0x285483, 3, Fast RGB
        If (ErrorLevel = 0){
            BigClose()
            Return
        }
        BigClose()
        Goto, SettingsFinder
    }