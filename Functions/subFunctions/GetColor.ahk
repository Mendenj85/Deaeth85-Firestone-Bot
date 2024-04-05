; GetColor.ahk

;function that automatically gets the color for the main menu check
GetColor()
{
    ControlFocus,, ahk_exe Firestone.exe
    PixelGetColor, Color, 135, 54, RGB
    return
}