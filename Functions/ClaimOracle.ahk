; ClaimOracle.ahk

#Include Functions\UpgradeBlessings.ahk
#include Functions\subFunctions\MainMenu.ahk
#include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\OpenTown.ahk

lastExecutionTimeOracle := 0

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
    If (Checked = 1){
        ; get current time
        currentTime := A_TickCount
        ;check if it's been 24 hours since last execution
        If (lastExecutionTimeOracle <= 0){
            lastExecutionTimeOracle := currentTime
            Goto, Claim
        } Else {
            If (currentTime - lastExecutionTimeOracle >= 24 * 60 * 60 * 1000){
            lastExecutionTimeOracle := currentTime
            Goto, Claim
            }
        Return
        }   
    Claim:
        MouseMove, 833, 758
        Sleep, 1000
        Click
        Sleep, 1500
        ImageSearch, X, Y, 407, 178, 841, 875, Images\Oracle.png 
            If (ErrorLevel=0){
                MouseMove, 619, 756
                Sleep, 1000
                Click
                Sleep, 1500
                BigClose()
                Goto, UpgradeBlessings
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