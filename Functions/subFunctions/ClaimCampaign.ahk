; ClaimCampaign.ahk

#Include Functions\subFunctions\LiberationMissions.ahk
#Include Functions\subFunctions\GoMap.ahk
#Include Functions\subFunctions\BigClose.ahk

;function to get the campaign coins and tokens
ClaimCampaign(){
    ControlFocus,, ahk_exe Firestone.exe
    MouseMove, 1857, 606
    Sleep, 1000
    Click
    Sleep, 1000
    PixelSearch, X, Y, 187, 926, 246, 990, 0x0AA008, 3, Fast RGB
    If (ErrorLevel = 0){
        MouseMove, 165, 977
        Sleep, 1000
        Click
        Sleep, 1000
    }
    GuiControlGet, SelectedItem, , LiberationStars
    If (SelectedItem != "Don't Complete Liberation Missions") {
        ; Get the current date and time
        currentTimeLiberation := A_TickCount 
        ; Check if it's been 24 hours since the last execution
        If (lastExecutionTimeLiberation <= 0 || (currentTimeLiberation - lastExecutionTimeLiberation >= 12 * 60 * 60 * 1000)){
            LiberationMissions()
            lastExecutionTimeLiberation := currentTimeLiberation
            Return
        }
    }    
    BigClose()
}