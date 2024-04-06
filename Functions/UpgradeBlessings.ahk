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
    ; 12 o-clock position
    PixelSearch, X, Y, 1402, 185, 1457, 231, 0xF60000, 10, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, 1375, 239,
            Sleep, 1000
            Click
            Sleep, 1500
            ClickBless()
        }
    ; 1 o-clock position
    PixelSearch, X, Y, 1565, 220, 1631, 291, 0xF60000, 10, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, 1535, 286
            Sleep, 1000
            Click
            Sleep, 1500
            ClickBless()
        }
    ; 2 o-clock position
    PixelSearch, X, Y, 1688, 340, 1734, 389, 0xF60000, 10, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, 1662, 407
            Sleep, 1000
            Click
            Sleep, 1500
            ClickBless()
        }
    ; 3 o-clock position
    PixelSearch, X, Y, 1734, 507, 1782, 570, 0xF60000, 10, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, 1703, 578
            Sleep, 1000
            Click
            Sleep, 1500
            ClickBless()
        }
    ; 4 o-clock position
    PixelSearch, X, Y, 1695, 673, 1741, 730, 0xF60000, 10, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, 1653, 741
            Sleep, 1000
            Click
            Sleep, 1500
            ClickBless()
        }
    ; 5 o-clock position
    PixelSearch, X, Y, 1584, 802, 1622, 849, 0xF60000, 10, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, 1531, 860
            Sleep, 1000
            Click
            Sleep, 1500
            ClickBless()
        }
    ; 6 o-clock position
    PixelSearch, X, Y, 1414, 844, 1458, 904, 0xF60000, 10, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, 1372, 903
            Sleep, 1000
            Click
            Sleep, 1500
            ClickBless()
        }
    ; 7 o-clock position
    PixelSearch, X, Y, 1258, 809, 1291, 847, 0xF60000, 10, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, 1207, 852
            Sleep, 1000
            Click
            Sleep, 1500
            ClickBless()
        }
    ; 8 o-clock position
    PixelSearch, X, Y, 1115, 656, 1164, 711, 0xF60000, 10, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, 1089, 742
            Sleep, 1000
            Click
            Sleep, 1500
            ClickBless()
        }
    ; 9 o-clock position
    PixelSearch, X, Y, 1084, 501, 1121, 559, 0xF60000, 10, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, 1045, 575
            Sleep, 1000
            Click
            Sleep, 1500
            ClickBless()
        }
    ; 10 o-clock position
    PixelSearch, X, Y, 1121, 334, 1159, 394, 0xF60000, 10, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, 1089, 415
            Sleep, 1000
            Click
            Sleep, 1500
            ClickBless()
        }
    ; 11 o-clock position
    PixelSearch, X, Y, 1238, 210, 1281, 266, 0xF60000, 10, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, 1209, 291
            Sleep, 1000
            Click
            Sleep, 1500
            ClickBless()
        }
    MouseMove, 1370, 572
    Sleep, 1000
    Click
    Sleep, 1500
    ClickBless()
}