; Arena.ahk (AHK v2)

#Include util.ahk
#Include subFunctions\ArenaBattle.ahk
#Include subFunctions\BigClose.ahk

Arena() {
    WinActivate("ahk_exe Firestone.exe ahk_class UnityWndClass")
    ; open battles
    MoveMouseRel(362, 204)
    Sleep(1000)
    Click()
    Sleep(1500)
    ; choose arena of kings
    MoveMouseRel(1120, 507)
    Sleep(1000)
    Click()
    Sleep(1500)
    ; define Xcoords for random opponent selection (absolute, util.ahk will convert)
    XCoords := [700, 954, 1220]
    RandomIndex := Random(1, 3)
    RandomX := XCoords[RandomIndex]
    Sleep(1000)
    Loop 5 {
        ; refresh opponents
        MoveMouseRel(871, 195)
        Sleep(1000)
        Click()
        Sleep(3000)
        ; choose random opponent
        MoveMouseRel(RandomX, 630)
        Sleep(1000)
        Click()
        Sleep(1000)
        ; check for buy more battles popup
        result := PixelSearchRel(&FoundX, &FoundY, 1243, 669, 1291, 713, 0x0AA008, 10)
        if result {
            BigClose()
            BigClose()
            return
        }
        MoveMouseRel(961, 570)
        Sleep(1000)
        Click()
        while !ArenaBattle() {
            Sleep(5000)
        }
    }
    BigClose()
}