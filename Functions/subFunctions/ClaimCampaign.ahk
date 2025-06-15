; ClaimCampaign.ahk (AHK v2)

#Include ..\util.ahk
#Include LiberationMissions.ahk
#Include GoMap.ahk
#Include BigClose.ahk

global liberationCB

; Function to get the campaign coins and tokens
ClaimCampaign() {
    global liberationCB

    WinActivate("ahk_exe Firestone.exe ahk_class UnityWndClass")
    MoveMouseRel(1857, 606)
    Sleep(1000)
    Click()
    Sleep(1000)
    ; Failsafe in case player doesn't have engineer unlocked
    found1 := PixelSearchRel(&X, &Y, 997, 310, 1305, 461, 0xF4E0C6, 2)
    if (found1) {
        BigClose()
        BigClose()
        return
    }
    found2 := PixelSearchRel(&X, &Y, 187, 926, 246, 990, 0x0AA008, 3)
    if (found2) {
        MoveMouseRel(165, 977)
        Sleep(1000)
        Click()
        Sleep(1000)
    }
    if (liberationCB.Value = 1) {
        LiberationMissions()
    }
    BigClose()
}