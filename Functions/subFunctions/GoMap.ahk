; GoMap.ahk

#include %A_ScriptDir%\Functions\subFunctions\MainMenu.ahk

GoMap()
{ControlFocus,, ahk_exe Firestone.exe
    MainMenu()
    MouseMove, 1863, 353
    Sleep, 1000
    click
    sleep, 1500
}
