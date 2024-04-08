; HeroUpgrade.ahk

#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\MainMenu.ahk

; function that upgrades heros
HeroUpgrade(){
    ControlFocus,, ahk_exe Firestone.exe
    MainMenu()
    MouseMove, 1447, 938
    Sleep, 1000
    Click
    Sleep, 1000
    MouseMove, 1769, 205
    Sleep, 1000
    Click
    Sleep, 500
    MouseMove, 1752, 873
    Sleep, 1000
    Click
    Sleep, 500
    MouseMove, 1770, 772
    Sleep, 1000
    Click
    Sleep, 500
    MouseMove, 1773, 650
    Sleep, 1000
    Click
    Sleep, 500
    MouseMove, 1759, 539
    Sleep, 1000
    Click
    Sleep, 500
    MouseMove, 1763, 427
    Sleep, 1000
    Click
    Sleep, 500
    MouseMove, 1757, 317
    Sleep, 1000
    Click
    Sleep, 500
    BigClose()
}