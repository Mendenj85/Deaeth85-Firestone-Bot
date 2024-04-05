; Quests.ahk

#Include %A_ScriptDir%\Functions\subFunctions\BigClose.ahk
#Include %A_ScriptDir%\Functions\subFunctions\MainMenu.ahk

ControlFocus,, ahk_exe Firestone.exe
MainMenu()

; claim daily quests
ClaimDaily(){
    MouseMove, 90, 112
    Sleep, 1000
    Click
    Sleep, 1500
    MouseMove, 1455, 74
    Sleep, 1000
    Click
    Sleep, 1500
    MouseMove, 765, 155
    Sleep, 1000
    Click
    Sleep, 1500
    MouseMove, 1503, 309
    Sleep, 1000
    Click
    Sleep, 1500
    MouseMove, 1619, 990
    Sleep, 1000
    Click
    Sleep, 1500
    ; check if claim weekly quests is also checked
    GuiControlGet, Checked, , Weekly,
        if (Checked = 1){
            MouseMove, 1165, 154
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 1503, 309
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 1619, 990
            Sleep, 1000
            Click
            Sleep, 1500
        }
    BigClose()
    return
}

; claim weekly quests
ClaimWeekly(){
    ; check if claim daily quests is also checked
    GuiControlGet, Checked, , Daily,
        if (Checked = 1){
            return
        }
    MouseMove, 90, 112
    Sleep, 1000
    Click
    Sleep, 1500
    MouseMove, 1455, 74
    Sleep, 1000
    Click
    Sleep, 1500
    MouseMove, 1165, 154
    Sleep, 1000
    Click
    Sleep, 1500
    MouseMove, 1503, 309
    Sleep, 1000
    Click
    Sleep, 1500
    MouseMove, 1619, 990
    Sleep, 1000
    Click
    Sleep, 1500
    BigClose()
    return
}