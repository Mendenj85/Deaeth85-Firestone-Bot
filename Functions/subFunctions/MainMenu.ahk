; MainMenu.ahk

#include Functions\subFunctions\BigClose.ahk

;check to see if we are on the mainmenu in case script ends up badly on another menu, also skips the rate pop-up, it is done via avatar color(that is taken automatically on script start)
MainMenu()
{
    ControlFocus,, ahk_exe Firestone.exe
    PixelSearch, X, Y, 135, 54, 135, 54, %Color%, 3, Fast RGB
    If(ErrorLevel=0){
        Return
    } Else {
        BigClose()
    }
    PixelSearch, X, Y, 135, 54, 135, 54, %Color%, 3, Fast RGB
    If(ErrorLevel=0){
        Return
    } Else {
        BigClose()
    }
    PixelSearch, X, Y, 135, 54, 135, 54, %Color%, 3, Fast RGB
    If(ErrorLevel=0){
        Return
    } Else {
        BigClose()
    }
    PixelSearch, X, Y, 135, 54, 135, 54, %Color%, 3, Fast RGB
    if(ErrorLevel=0){
        Return
    } Else {
        MouseMove, 1402, 327
        Sleep, 1000
        Click
    }
    PixelSearch, X, Y, 135, 54, 135, 54, %Color%, 3, Fast RGB
    if(ErrorLevel=0){
        Return
    } Else {
        MouseMove, 960, 805
        Sleep, 1000
        Click
        Sleep, 60000
    }
    return
}