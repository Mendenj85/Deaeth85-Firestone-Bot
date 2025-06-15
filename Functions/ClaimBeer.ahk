; ClaimBeer.ahk (AHK v2)

#Include util.ahk
#Include subFunctions\BigClose.ahk
#Include subFunctions\CraftArtifact.ahk
#Include subFunctions\UseTavernToken.ahk

; Use the global tokenCB from the GUI
global tokenCB := { Value: 0 }

ClaimBeer() {
    global tokenCB  ; This is assigned in Gui.ahk

    WinActivate("ahk_exe Firestone.exe ahk_class UnityWndClass")
    ; open Tavern
    MoveMouseRel(719, 957)
    Sleep(1000)
    Click()
    Sleep(1500)
    ; check for enough beer to claim tokens
    MoveMouseRel(1735, 69)
    Sleep(1000)
    Click()
    Sleep(1000)
    try {
        PixelSearchRel(&FoundX, &FoundY, 616, 610, 697, 656, 0x659BB0, 3)
        MoveMouseRel(544, 630)
        Sleep(1000)
        Click()
        Sleep(1000)
    }
    BigClose()
    ; check if Use Tavern Token is checked
    if (tokenCB.Value = 1) {
        UseToken()
        CraftArtifact()
    }
    BigClose()
}