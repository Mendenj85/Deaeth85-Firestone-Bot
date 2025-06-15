; HeroUpgrade.ahk

#Include util.ahk
#Include subFunctions\BigClose.ahk
#Include subFunctions\MainMenu.ahk

; function that upgrades heros
HeroUpgrade() {
    WinActivate("ahk_exe Firestone.exe ahk_class UnityWndClass")
    ; open upgrade menu
    ToolTip("Opening Hero Upgrade Menu")
    SetTimer(() => ToolTip(), -1500)
    Send("U")
    Sleep(1500)
    ; check special upgrade
    PixelSearchRel(&FoundX, &FoundY, 1874, 207, 1889, 249, 0x0AA008, 3)
    if !A_LastError {
        MoveMouseRel(1670, 205)
        Sleep(1000)
        Click()
        Sleep(1000)
    }
    ; check 5th hero
    PixelSearchRel(&FoundX, &FoundY, 1868, 880, 1885, 912, 0x0AA008, 3)
    if !A_LastError {
        MoveMouseRel(1670, 873)
        Sleep(1000)
        Click()
        Sleep(1000)
    }
    ; check 4th hero
    PixelSearchRel(&FoundX, &FoundY, 1864, 770, 1889, 802, 0x0AA008, 3)
    if !A_LastError {
        MoveMouseRel(1670, 772)
        Sleep(1000)
        Click()
        Sleep(1000)
    }
    ; check 3rd hero
    PixelSearchRel(&FoundX, &FoundY, 1866, 654, 1889, 693, 0x0AA008, 3)
    if !A_LastError {
        MoveMouseRel(1670, 650)
        Sleep(1000)
        Click()
        Sleep(1000)
    }
    ; check 2nd hero
    PixelSearchRel(&FoundX, &FoundY, 1866, 545, 1885, 584, 0x0AA008, 3)
    if !A_LastError {
        MoveMouseRel(1670, 539)
        Sleep(1000)
        Click()
        Sleep(1000)
    }
    ; check 1st hero
    PixelSearchRel(&FoundX, &FoundY, 1862, 434, 1888, 469, 0x0AA008, 3)
    if !A_LastError {
        MoveMouseRel(1670, 427)
        Sleep(1000)
        Click()
        Sleep(1000)
    }
    ; check guardian
    PixelSearchRel(&FoundX, &FoundY, 1869, 319, 1890, 352, 0x0AA008, 3)
    if !A_LastError {
        MoveMouseRel(1670, 317)
        Sleep(1000)
        Click()
        Sleep(1000)
    }
    BigClose()
}
