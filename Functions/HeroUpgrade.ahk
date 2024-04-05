; HeroUpgrade.ahk

#include Functions\subFunctions\BigClose.ahk
#include Functions\subFunctions\MainMenu.ahk

;function that upgrades heros
HeroUpgrade(){
    ControlFocus,, ahk_exe Firestone.exe
    MainMenu()
    MouseMove, 1447, 938
    sleep, 1000
    click
    sleep, 1500
    MouseMove, 1769, 205
    sleep, 1000
    click
    sleep, 1500
    MouseMove, 1752, 873
    sleep, 1000
    click
    sleep, 1500
    MouseMove, 1770, 772
    sleep, 1000
    click
    sleep, 1500
    MouseMove, 1773, 650
    sleep, 1000
    click
    sleep, 1500
    MouseMove, 1759, 539
    sleep, 1000
    click
    sleep, 1500
    MouseMove, 1763, 427
    sleep, 1000
    click
    sleep, 1500
    MouseMove, 1757, 317
    sleep, 1000
    click
    sleep, 1500
    BigClose()
}