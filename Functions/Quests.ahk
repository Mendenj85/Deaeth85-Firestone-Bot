; Quests.ahk

#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\MainMenu.ahk

; claim daily quests
ClaimQuests(){
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
    Return