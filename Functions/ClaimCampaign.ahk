; ClaimCampaign.ahk

#Include Functions\LiberationMissions.ahk
#Include Functions\subFunctions\GoMap.ahk
#Include Functions\subFunctions\BigClose.ahk

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
    GuiControlGet, SelectedItem, ,LiberationStars,
        If (SelectedItem!="Don't Complete Liberation Missions"){
            LiberationMissions()
        }
    BigClose()
    return
}