; MainMenu.ahk

#include %A_ScriptDir%\Functions\subFunctions\BigClose.ahk

;check to see if we are on the mainmenu in case script ends up badly on another menu, also skips the rate pop-up, it is done via avatar color(that is taken automatically on script start)
MainMenu()
{
    ControlFocus,, ahk_exe Firestone.exe
    PixelSearch, X, Y, 135, 54, 135, 54, %Color%, 3, Fast RGB
    if(ErrorLevel=1)
    {
        BigClose()
    }
    if(ErrorLevel=0)
    {
        return
    }
    PixelSearch, X, Y, 135, 54, 135, 54, %Color%, 3, Fast RGB
    if(ErrorLevel=1)
    {
        BigClose()
    }
    if(ErrorLevel=0)
    {
        return
    }
    PixelSearch, X, Y, 135, 54, 135, 54, %Color%, 3, Fast RGB
    if(ErrorLevel=1)
    {
        BigClose()
    }
    if(ErrorLevel=0)
    {
        return
    }
    PixelSearch, X, Y, 135, 54, 135, 54, %Color%, 3, Fast RGB
    if(ErrorLevel=1)
    {
        MouseMove, 1402, 327
        Sleep, 1000
        Click
    }
    if(ErrorLevel=0)
    {
        return
    }
    PixelSearch, X, Y, 135, 54, 135, 54, %Color%, 3, Fast RGB
    if(ErrorLevel=1)
    {
        MouseMove, 960, 805
        Sleep, 1000
        Click
        Sleep, 60000
    }
    if(ErrorLevel=0)
    {
        return
    }
    return
}
