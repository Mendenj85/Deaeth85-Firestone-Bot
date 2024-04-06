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
    PixelSearch, X, Y, 1310, 184, 1422, 206, 0xF2AF42, 10, Fast RGB
        If (ErrorLevel = 0){
            Goto, 1am
        }
    MouseMove, 1375, 239,
    Sleep, 1000
    Click
    Sleep, 1500
    ClickBless()
    1am:
    PixelSearch, X, Y, 1491, 224, 1588, 253, 0xF2AF42, 10, Fast RGB
        If (ErrorLevel = 0){
            Goto, 2am
        }
    MouseMove, 1535, 286
    Sleep, 1000
    Click
    Sleep, 1500
    ClickBless()
    2am:
    PixelSearch, X, Y, 1617, 348, 1708, 368, 0xF2AF42, 10, Fast RGB
        If (ErrorLevel = 0){
            Goto, 3am
        }
    MouseMove, 1662, 407
    Sleep, 1000
    Click
    Sleep, 1500
    ClickBless()
    3am:
    PixelSearch, X, Y, 1656, 515, 1742, 533, 0xF2AF42, 10, Fast RGB
        If (ErrorLevel = 0){
            Goto, 4am
        }
    MouseMove, 1703, 578
    Sleep, 1000
    Click
    Sleep, 1500
    ClickBless()
    4am:
    PixelSearch, X, Y, 1608, 684, 1705, 702, 0xF2AF42, 10, Fast RGB
        If (ErrorLevel = 0){
            Goto, 5am
        }
    MouseMove, 1653, 741
    Sleep, 1000
    Click
    Sleep, 1500
    ClickBless()
    5am:
    PixelSearch, X, Y, 1489, 801, 1580, 817, 0xF2AF42, 10, Fast RGB
        If (ErrorLevel = 0){
            Goto, 6am
        }
    MouseMove, 1531, 860
    Sleep, 1000
    Click
    Sleep, 1500
    ClickBless()
    6am:
    PixelSearch, X, Y, 1331, 842, 1418, 865, 0xF2AF42, 10, Fast RGB
        If (ErrorLevel = 0){
            Goto, 7am
        }
    MouseMove, 1372, 903
    Sleep, 1000
    Click
    Sleep, 1500
    ClickBless()
    7am:
    PixelSearch, X, Y, 1171, 797, 1250, 817, 0xF2AF42, 10, Fast RGB
        If (ErrorLevel = 0){
            Goto, 8am
        }
    MouseMove, 1207, 852
    Sleep, 1000
    Click
    Sleep, 1500
    ClickBless()
    8am:
    PixelSearch, X, Y, 1052, 674, 1130, 699, 0xF2AF42, 10, Fast RGB
        If (ErrorLevel = 0){
            Goto, 9am
        }
    MouseMove, 1089, 742
    Sleep, 1000
    Click
    Sleep, 1500
    ClickBless()
    9am:
    PixelSearch, X, Y, 992, 506, 1088, 533, 0xF2AF42, 10, Fast RGB
        If (ErrorLevel = 0){
            Goto, 10am
        }
    MouseMove, 1045, 575
    Sleep, 1000
    Click
    Sleep, 1500
    ClickBless()
    10am:
    PixelSearch, X, Y, 1041, 364, 1138, 369, 0xF2AF42, 10, Fast RGB
        If (ErrorLevel = 0){
            Goto, 11am
        }
    MouseMove, 1089, 415
    Sleep, 1000
    Click
    Sleep, 1500
    ClickBless()
    11am:
    PixelSearch, X, Y, 1155, 233, 1252, 246, 0xF2AF42, 10, Fast RGB
        If (ErrorLevel = 0){
            Goto, Mid
        }
    MouseMove, 1209, 291
    Sleep, 1000
    Click
    Sleep, 1500
    ClickBless()
    Mid:
    MouseMove, 1370, 572
    Sleep, 1000
    Click
    Sleep, 1500
    ClickBless()
}