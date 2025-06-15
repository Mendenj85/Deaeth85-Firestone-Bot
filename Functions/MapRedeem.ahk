; MapRedeem.ahk

#Include util.ahk
#Include subFunctions\ClaimCampaign.ahk
#Include subFunctions\MapClose.ahk
#Include subFunctions\MapStart.ahk

; Function to redeem the missions
MapRedeem() {
    WinActivate("ahk_exe Firestone.exe ahk_class UnityWndClass")
    ; Check and correct map position
    if PixelSearchRel(&X, &Y, 811, 44, 1057, 102, 0x1652B5, 3) = 1 {
        MoveMouseRel(1053, 154)
        Sleep(500)
        Click("Down")
        Sleep(500)
        MoveMouseRel(1043, 326)
        Sleep(500)
        Click("Up")
        Sleep(500)
    }
    ; check if missions can be reset for free
    PixelSearchRel(&X, &Y, 221, 878, 277, 891, 0xFCAC47, 3)
    if (A_LastError = 0) {
        MoveMouseRel(173, 918)
        Sleep(500)
        Click()
        Sleep(1000)
    }
Checks:
    ; check for active missions and their progress
    ; look for no missions
    PixelSearchRel(&X, &Y, 117, 249, 208, 334, 0x1452B4, 3)
    if (A_LastError = 0) {
        ; No active missions found
        goto Troops
    }
    ; check for already completed missions
    PixelSearchRel(&X, &Y, 207, 305, 244, 348, 0x0AA008, 3)
    if (A_LastError = 0) {
        MoveMouseRel(162, 334)
        Sleep(500)
        Click()
        Sleep(1000)
        MoveMouseRel(971, 628)
        Sleep(1000)
        Click()
        Sleep(1000)
        goto Checks
    }
    ; look for greater than 3 minutes left
    MoveMouseRel(162, 334)
    Sleep(1000)
    Click()
    Sleep(1000)
    PixelSearchRel(&X, &Y, 1427, 730, 1481, 762, 0x916A38, 0)
    if (A_LastError = 0) {
        MapClose()
        goto Troops
    } else {
        ; check for free to complete early missions
        PixelSearchRel(&X, &Y, 1427, 730, 1481, 762, 0xF9AA47, 10)
        if (A_LastError = 0) {
            MoveMouseRel(1365, 758)
            Sleep(500)
            Click()
            Sleep(1000)
            MoveMouseRel(971, 628)
            Sleep(1000)
            Click()
            Sleep(1000)
            goto Checks
        }
    }
    ; check 2nd mission in case of greyed out first mission bug
    PixelSearchRel(&X, &Y, 205, 443, 242, 484, 0x0AA008, 3)
    if (A_LastError = 0) {
        goto Troops
    }
Troops:
    ; Check if there are idle troops
    PixelSearchRel(&X, &Y, 1175, 996, 1187, 1012, 0x542710, 10)
    if (A_LastError = 0) {
        MapStart()
    }
    ClaimCampaign()
}
