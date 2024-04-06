; ClaimCampaign.ahk

#Include Functions\LiberationMissions.ahk
#Include Functions\subFunctions\GoMap.ahk
#Include Functions\subFunctions\BigClose.ahk

lastExecutionTimeLiberation := 0

;function to get the campaign coins and tokens
ClaimCampaign(){
    ControlFocus,, ahk_exe Firestone.exe
    GoMap()
    MouseMove, 1857, 606
    sleep, 1000
    click
    sleep, 1500
    MouseMove, 165, 977
    sleep, 1000
    click
    sleep, 1500
    GuiControlGet, SelectedItem, , LiberationStars,
        If (SelectedItem != "Don't Complete Liberation Missions"){
            ; get current time
            currentTime := A_TickCount
            ;check if it's been 24 hours since last execution
            If (lastExecutionTimeLiberation <= 0){
                LiberationMissions()
                lastExecutionTimeLiberation := currentTime
            } Else {
                If (currentTime - lastExecutionTimeLiberation >= 24 * 60 * 60 * 1000){
                    LiberationMissions()
                    lastExecutionTimeLiberation := currentTime
                }
            }
        }   
    BigClose()
    return
}