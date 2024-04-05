; upgradeBlessings

#include Functions\subFunctions\MainMenu.ahk
#include Functions\subFunctions\BigClose.ahk
#include Functions\subFunctions\ClickBless.ahk

ControlFocus,, ahk_exe Firestone.exe
MainMenu()

UpgradeBlessings(){
    ; open blessings page
    MouseMove, 828, 585
    Sleep, 1000
    Click
    Sleep, 1500
    ; cycle through blessings
    MouseMove, 1375, 239,
    Sleep, 1000
    Click
    Sleep, 1500
    ClickBless()
    MouseMove, 1535, 286
    Sleep, 1000
    Click
    Sleep, 1500
    ClickBless()
    MouseMove, 1662, 407
    Sleep, 1000
    Click
    Sleep, 1500
    ClickBless()
    MouseMove, 1703, 578
    Sleep, 1000
    Click
    Sleep, 1500
    ClickBless()
    MouseMove, 1653, 741
    Sleep, 1000
    Click
    Sleep, 1500
    ClickBless()
    MouseMove, 1531, 860
    Sleep, 1000
    Click
    Sleep, 1500
    ClickBless()
    MouseMove, 1372, 903
    Sleep, 1000
    Click
    Sleep, 1500
    ClickBless()
    MouseMove, 1207, 852
    Sleep, 1000
    Click
    Sleep, 1500
    ClickBless()
    MouseMove, 1089, 742
    Sleep, 1000
    Click
    Sleep, 1500
    ClickBless()
    MouseMove, 1045, 575
    Sleep, 1000
    Click
    Sleep, 1500
    ClickBless()
    MouseMove, 1089, 415
    Sleep, 1000
    Click
    Sleep, 1500
    ClickBless()
    MouseMove, 1209, 291
    Sleep, 1000
    Click
    Sleep, 1500
    ClickBless()
}