; MainMenu.ahk

#Include Functions\subFunctions\BigClose.ahk
#Include Functions\util.ahk

;check to see if we are on the mainmenu in case script ends up badly on another menu, also skips the rate pop-up, it is done via avatar color(that is taken automatically on script start)
MainMenu(){
    ControlFocus,, ahk_exe Firestone.exe
    ; get to and find settings window, one big close to ensure we're on main page
    Send, !{Tab}
    Sleep, 1000
    WinActivate, ahk_exe Firestone.exe
    SettingsFinder:
        PixelSearchRel(FoundX, FoundY, 1542, 655, 1654, 687, 0x285483, 3)
        If (ErrorLevel = 0){
            BigClose()
            Return
        }
        PixelSearchRel(FoundX, FoundY, 1057, 288, 1321, 335, 0x8E4423, 2)
        If (ErrorLevel = 0){
            MoveMouseRel(1397, 307)
            Sleep, 1000
            Click
            Sleep, 1500
        }
        BigClose()
        Goto, SettingsFinder
}