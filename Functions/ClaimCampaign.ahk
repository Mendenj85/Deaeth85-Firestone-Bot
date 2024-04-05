; ClaimCampaign.ahk

#include Functions\subFunctions\GoMap.ahk
#include Functions\subFunctions\BigClose.ahk

;function to get the campaign coins and tokens
ClaimCampaign(){
    ControlFocus,, ahk_exe Firestone.exe
    ;similar command like this will be used at the beginning of each function to open the map/ screen for the action to be made
    GoMap()
    MouseMove, 1857, 606
    sleep, 1000
    click
    sleep, 1500
    MouseMove, 165, 977
    sleep, 1000
    click
    sleep, 1500
    BigClose()
    return
}