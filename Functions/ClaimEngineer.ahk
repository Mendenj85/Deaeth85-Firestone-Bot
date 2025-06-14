; ClaimEngineer.ahk

;#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\WMUpgrade.ahk
;#Include Functions\util.ahk

ClaimEngineer(){
    ControlFocus,, ahk_exe Firestone.exe
    ; open engineer
    MoveMouseRel(1230, 820)
    Sleep, 1000
    Click
    Sleep, 1500
    ; check if option to level WM's is chosen
    GuiControlGet, SelectedItem, ,UpgradeWM,
    If (SelectedItem != "Don't Upgrade WM's"){                
        MoveMouseRel(964, 507)
        Sleep, 1000
        Click
        Sleep, 1500
        WMUpgrade()
        ; open engineer 
        MoveMouseRel(131, 435)
        Sleep, 1000
        Click
        Sleep, 1500
        Goto, ClaimTools
    } 
    ; select engineer
    MoveMouseRel(610, 540)
    Sleep, 1000
    Click
    Sleep, 1500
    ClaimTools:
    ; claim tools
    PixelSearchRel(FoundX, FoundY, 1709, 686, 1747, 733, 0x0AA008, 3)
    If (ErrorLevel = 0 ){
        MoveMouseRel(1642, 704)
        Sleep, 1000
        Click
        Sleep, 1000
    }
    BigClose()
    return
}
