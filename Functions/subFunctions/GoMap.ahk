; GoMap.ahk

#include Functions\subFunctions\MainMenu.ahk

GoMap()
{ControlFocus,, ahk_exe Firestone.exe
    MsgBox, , Open Map, Opening the map window, 1.5
    Send, M
    Sleep, 1500
}
