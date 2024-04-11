; GoMap.ahk

#include Functions\subFunctions\MainMenu.ahk

GoMap()
{ControlFocus,, ahk_exe Firestone.exe
    MainMenu()
    Send, M
    Sleep, 1500
}
