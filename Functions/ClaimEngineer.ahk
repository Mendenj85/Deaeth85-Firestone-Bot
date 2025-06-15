; ClaimEngineer.ahk (AHK v2)

#Include util.ahk
#Include subFunctions\BigClose.ahk
#Include subFunctions\WMUpgrade.ahk

global upgradeWMDD := ""  ; Make sure this is assigned in your Gui.ahk

ClaimEngineer() {
    global upgradeWMDD

    WinActivate("ahk_exe Firestone.exe ahk_class UnityWndClass")
    ; open engineer
    MoveMouseRel(1230, 820)
    Sleep(1000)
    Click()
    Sleep(1500)
    ; check if option to level WM's is chosen
    SelectedItem := upgradeWMDD.Value
    if (SelectedItem != "Don't Upgrade WM's") {                
        MoveMouseRel(964, 507)
        Sleep(1000)
        Click()
        Sleep(1500)
        WMUpgrade()
        ; open engineer 
        MoveMouseRel(131, 435)
        Sleep(1000)
        Click()
        Sleep(1500)
        ; fall through to claim tools
    } else {
        ; select engineer
        MoveMouseRel(610, 540)
        Sleep(1000)
        Click()
        Sleep(1500)
    }
    ; claim tools
    result := PixelSearchRel(&FoundX, &FoundY, 1709, 686, 1747, 733, 0x0AA008, 3)
    if result {
        MoveMouseRel(1642, 704)
        Sleep(1000)
        Click()
        Sleep(1000)
    }
    BigClose()
}
