; ClaimRituals.ahk (AHK v2)

#Include util.ahk
#Include UpgradeBlessings.ahk
#Include subFunctions\OpenTown.ahk
#Include subFunctions\OracleDaily.ahk
#Include subFunctions\BigClose.ahk

global blessCB
global dailyOracleCB

; Function that checks Oracle
ClaimRituals() {
    global blessCB, dailyOracleCB

    WinActivate("ahk_exe Firestone.exe ahk_class UnityWndClass")
    ; open Oracle in town
    MoveMouseRel(1023, 994)
    Sleep(1000)
    Click()
    Sleep(1500)
    ; open Rituals tab in Oracle if ready
    PixelSearchRel(&FoundX, &FoundY, 871, 341, 903, 382, 0xF40000, 3)
    if !A_LastError {
        MoveMouseRel(830, 420)
        Sleep(1000)
        Click()
        Sleep(1500)
        ; cycle through rituals
        PixelSearchRel(&FoundX, &FoundY, 1259, 463, 1331, 536, 0x0AA008, 3)
        if !A_LastError {
            MoveMouseRel(1180, 500)
            Sleep(1000)
            Click()
            Sleep(1000)
        }
        PixelSearchRel(&FoundX, &FoundY, 1609, 458, 1677, 514, 0x0AA008, 3)
        if !A_LastError {
            MoveMouseRel(1586, 514)
            Sleep(1000)
            Click()
            Sleep(1000)
        }
        PixelSearchRel(&FoundX, &FoundY, 1272, 811, 1326, 872, 0x0AA008, 3)
        if !A_LastError {
            MoveMouseRel(1170, 837)
            Sleep(1000)
            Click()
            Sleep(1000)
        }
        PixelSearchRel(&FoundX, &FoundY, 1619, 805, 1690, 870, 0x0AA008, 3)
        if !A_LastError {
            MoveMouseRel(1579, 840)
            Sleep(1000)
            Click()
            Sleep(1000)
        }
    }
    ; check if upgradeBlessings box was checked
    if (blessCB.Value = 1) {
        UpgradeBlessings()
    }
    ; check if Claim Daily Oracle was checked on startup
    if (dailyOracleCB.Value = 1) {
        OracleDaily()
    }  
    BigClose()
}