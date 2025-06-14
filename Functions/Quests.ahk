; Quests.ahk

#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\MainMenu.ahk
#Include Functions\util.ahk

; claim daily quests
ClaimQuests(){
    ; open character window
    MoveMouseRel(90, 112)
    Sleep, 1000
    Click
    Sleep, 1000
    ; open quests tab
    MoveMouseRel(1455, 74)
    Sleep, 1000
    Click
    Sleep, 1000
    ; click daily quest tab
    MoveMouseRel(765, 155)
    Sleep, 1000
    Click
    Sleep, 1000
    PixelSearchRel(X, Y, 1544, 286, 1606, 334, 0x0AA008, 3)
    If (ErrorLevel = 0){
        MoveMouseRel(1503, 309)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(1619, 990)
        Sleep, 1000
        Click
        Sleep, 1000
    }
    ; click weekly quests tab
    MoveMouseRel(1165, 154)
    Sleep, 1000
    Click
    Sleep, 1000
    PixelSearchRel(X, Y, 1544, 286, 1606, 334, 0x0AA008, 3)
    If (ErrorLevel = 0){
        MoveMouseRel(1503, 309)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(1619, 990)
        Sleep, 1000
        Click
        Sleep, 1000
    }
    BigClose()
    Return
}