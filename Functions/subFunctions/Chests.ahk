; Chests.ahk (AHK v2)
#Include ..\util.ahk
#Include BigClose.ahk

; Map of chest names to color codes and open coordinates
global ChestData := Map(
    "comet",      { color: 0x9F3C29 },
    "common",     { color: 0xC9782B },
    "cosmic",     { color: 0xD326C0 },
    "diamond",    { color: 0xF60151 },
    "emerald",    { color: 0x7B6926 },
    "epic",       { color: 0xB273F5 },
    "galaxy",     { color: 0xB9F2F7 },
    "golden",     { color: 0xCF7029 },
    "iron",       { color: 0x071250 },
    "legendary",  { color: 0xC63A07 },
    "lunar",      { color: 0x00F694 },
    "mysterybox", { color: 0x4800A9, openX: 904, openY: 724 },
    "mythic",     { color: 0xF09C15 },
    "nebula",     { color: 0x5B1D84 },
    "opal",       { color: 0x9DEEDE },
    "oraclesgift",{ color: 0x00EAF6, openX: 904, openY: 724 },
    "rare",       { color: 0x5C98FB },
    "solar",      { color: 0xFEF343 },
    "uncommon",   { color: 0xB54424 },
    "wooden",     { color: 0x442522 }
)

OpenChest(chestName) {
    global ChestData
    chest := StrLower(chestName)
    if !ChestData.Has(chest) {
        ToolTip("Unknown chest: " chestName)
        SetTimer(() => ToolTip(), -2000)
        return
    }
    data := ChestData[chest]
    ; Default search area for chests
    searchX1 := 1543, searchY1 := 307, searchX2 := 1887, searchY2 := 905
    color := data.color
    PixelSearchRel(&FoundX, &FoundY, searchX1, searchY1, searchX2, searchY2, color, 3)
    if !A_LastError {
        MoveMouseRel(FoundX, FoundY)
        Sleep(1000)
        Click()
        Sleep(1000)
        ; Use custom open coords if provided, else default
        openX := data.HasOwnProp("openX") ? data.openX : 914
        openY := data.HasOwnProp("openY") ? data.openY : 812
        MoveMouseRel(openX, openY)
        Sleep(1000)
        Click()
        Sleep(10000)
        ; Equip or close
        MoveMouseRel(962, 850)
        Sleep(1000)
        Click()
        Sleep(1000)
        BigClose()
        ; Failsafe in case big close opens options
        MoveMouseRel(59, 181)
        Sleep(1000)
        Click()
        Sleep(1000)
    }
}