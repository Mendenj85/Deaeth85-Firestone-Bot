; ClaimOracle.ahk

#Include Functions\UpgradeBlessings.ahk
#include Functions\subFunctions\MainMenu.ahk
#include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\OpenTown.ahk

;function that checks Oracle
ClaimOracle(){
    ControlFocus,, ahk_exe Firestone.exe
    MainMenu()
    OpenTown()
    ; open Oracle in town
    MouseMove, 1023, 994
    sleep, 1000
    click
    sleep, 1500
    ; open Rituals tab in Oracle
    MouseMove, 830, 420
    sleep, 1000
    click
    sleep, 1500
    ; cycle through rituals
    PixelSearch, X, Y, 1259, 463, 1331, 536, 0x0AA008, 10, Fast RGB
    If (ErrorLevel = 0){
        MouseMove, 1180, 500
        sleep, 1000
        click
        sleep, 1000
    }
    PixelSearch, X, Y, 1609, 458, 1677, 514, 0x0AA008, 10, Fast RGB
    If (ErrorLevel = 0){
        MouseMove, 1586, 514
        sleep, 1000
        click
        sleep, 1000
    }
    PixelSearch, X, Y, 1619, 805, 1690, 870, 0x0AA008, 10, Fast RGB
    If (ErrorLevel = 0){
        MouseMove, 1579, 840
        sleep, 1000
        click
        sleep, 1000
    }
    PixelSearch, X, Y, 1272, 811, 1326, 872, 0x0AA008, 10, Fast RGB
    If (ErrorLevel = 0){
        MouseMove, 1170, 837
        sleep, 1000
        click
        sleep, 1000
    }
    ; check if upgradeBlessings box was checked
    UpgradeBlessings:
    GuiControlGet, Checked, , Bless,
        if (Checked = 1){
            UpgradeBlessings()
        }
    BigClose()
    BigClose()
}