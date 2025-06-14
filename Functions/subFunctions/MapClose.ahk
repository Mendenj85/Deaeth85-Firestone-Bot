; MapClose.ahk

#Include Functions\util.ahk

;function to close the map screens as they aren't focused and the above function does not work
MapClose()
{
    ControlFocus,, ahk_exe Firestone.exe
    MoveMouseRel(1870, 706)
    Sleep, 1000
    Click
    Sleep, 1500
    Return
}
