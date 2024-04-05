; MapClose.ahk

;function to close the map screens as they aren't focused and the above function does not work
MapClose()
{
    ControlFocus,, ahk_exe Firestone.exe
    MouseMove, 1870, 706
    sleep, 1000
    click
    sleep, 1500
    return
}
