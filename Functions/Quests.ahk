; Quests.ahk

#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\MainMenu.ahk

ControlFocus,, ahk_exe Firestone.exe
MainMenu()

; claim daily quests
ClaimDaily(){
    ; open character window
    MouseMove, 90, 112
    Sleep, 1000
    Click
    Sleep, 1000
    ; open quests tab
    MouseMove, 1455, 74
    Sleep, 1000
    Click
    Sleep, 1000
    ; click daily quest tab
    MouseMove, 765, 155
    Sleep, 1000
    Click
    Sleep, 1000
    PixelSearch, X, Y, 1544, 286, 1606, 334, 0x0AA008, 3, Fast RGB
    If (ErrorLevel = 0){
        MouseMove, 1503, 309
        Sleep, 1000
        Click
        Sleep, 1000
        MouseMove, 1619, 990
        Sleep, 1000
        Click
        Sleep, 1000
    }
    ; check if claim weekly quests is also checked
    GuiControlGet, Checked, , Weekly,
        If (Checked = 1){
            ; click weekly quests tab
            MouseMove, 1165, 154
            Sleep, 1000
            Click
            Sleep, 1000
            PixelSearch, X, Y, 1544, 286, 1606, 334, 0x0AA008, 3, Fast RGB
            If (ErrorLevel = 0){
            MouseMove, 1503, 309
            Sleep, 1000
            Click
            Sleep, 1000
            MouseMove, 1619, 990
            Sleep, 1000
            Click
            Sleep, 1000
            }
        }
    BigClose()
    return
}

; claim weekly quests
ClaimWeekly(){
    ; check if claim daily quests is also checked
    GuiControlGet, Checked, , Daily,
        If (Checked = 1){
            return
        }
    ; open character window
    MouseMove, 90, 112
    Sleep, 1000
    Click
    Sleep, 1000
    ; open quests tab
    MouseMove, 1455, 74
    Sleep, 1000
    Click
    Sleep, 1000
    ; click weekly tab
    MouseMove, 1165, 154
    Sleep, 1000
    Click
    Sleep, 1000    
    PixelSearch, X, Y, 1544, 286, 1606, 334, 0x0AA008, 3, Fast RGB
    If (ErrorLevel = 0){
        MouseMove, 1503, 309
        Sleep, 1000
        Click
        Sleep, 1000
        MouseMove, 1619, 990
        Sleep, 1000
        Click
        Sleep, 1000
        BigClose()
        Return
    }
}