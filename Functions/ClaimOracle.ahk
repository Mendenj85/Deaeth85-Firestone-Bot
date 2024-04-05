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
    MouseMove, 1180, 500
    sleep, 1000
    click
    sleep, 1500
    MouseMove, 1586, 514
    sleep, 1000
    click
    sleep, 1500
    MouseMove, 1579, 840
    sleep, 1000
    click
    sleep, 1500
    MouseMove, 1170, 837
    sleep, 1000
    click
    sleep, 1500
    ; check if Claim Daily Oracle was checked on startup
    GuiControlGet, Checked, , DailyOracle,
        if (Checked = 1){
            MouseMove, 833, 758
            Sleep, 1000
            Click
            Sleep, 1500
            ImageSearch,x,y, 422,602,580,744, Images\Oracle.png 
            if(ErrorLevel=0){
                BigClose()
                Goto, UpgradeBlessings
            } else {
            MouseMove, 619, 756
            Sleep, 1000
            Click
            Sleep, 5000 ; longer delay to allow for steam to load for the following failsafe to trigger
            ;failsafe in case of steam popup
            ImageSearch, X, Y, 1208, 223, 1453, 311, Images\steam.png, 100
                if (ErrorLevel=0)
                    MouseMove, 1583, 168
                    Sleep, 1000
                    Click
                    Sleep, 1500
                    MouseMove, 919, 579
                    Sleep, 1000
                    Click
                    Sleep, 5000 ; longer delay to allow for Purchase failed popup before proceeding
                    BigClose()
                    BigClose()
        }
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