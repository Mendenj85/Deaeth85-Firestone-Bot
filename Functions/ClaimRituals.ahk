; ClaimRituals.ahk

#Include Functions\UpgradeBlessings.ahk
#Include Functions\subFunctions\OpenTown.ahk
#Include Functions\subFunctions\OracleDaily.ahk
#Include Functions\util.ahk

;function that checks Oracle
ClaimRituals(){
    ControlFocus,, ahk_exe Firestone.exe
    ; open Oracle in town
    MoveMouseRel(1023, 994)
    Sleep, 1000
    Click
    Sleep, 1500
    ; open Rituals tab in Oracle if ready
    PixelSearchRel(FoundX, FoundY, 871, 341, 903, 382, 0xF40000, 3)
    If (ErrorLevel = 0){
        MoveMouseRel(830, 420)
        Sleep, 1000
        Click
        Sleep, 1500
        ; cycle through rituals
        PixelSearchRel(FoundX, FoundY, 1259, 463, 1331, 536, 0x0AA008, 3)
        If (ErrorLevel = 0){
            MoveMouseRel(1180, 500)
            Sleep, 1000
            Click
            Sleep, 1000
        }
        PixelSearchRel(FoundX, FoundY, 1609, 458, 1677, 514, 0x0AA008, 3)
        If (ErrorLevel = 0){
            MoveMouseRel(1586, 514)
            Sleep, 1000
            Click
            Sleep, 1000
        }
        PixelSearchRel(FoundX, FoundY, 1272, 811, 1326, 872, 0x0AA008, 3)
        If (ErrorLevel = 0){
            MoveMouseRel(1170, 837)
            Sleep, 1000
            Click
            Sleep, 1000
        }
        PixelSearchRel(FoundX, FoundY, 1619, 805, 1690, 870, 0x0AA008, 3)
        If (ErrorLevel = 0){
            MoveMouseRel(1579, 840)
            Sleep, 1000
            Click
            Sleep, 1000
        }
    }
    ; check if upgradeBlessings box was checked
    GuiControlGet, Checked, , Bless,
    if (Checked = 1){
        UpgradeBlessings()
    }
    ; check if Claim Daily Oracle was checked on startup
    GuiControlGet, Checked, , DailyOracle,
    If (Checked = 1){
        OracleDaily()
    }  
    BigClose()
}