; WMLevelOnly.ahk

#Include Functions\util.ahk

LevelOnly(){
    ; Look for notification (resolution independent)
    PixelSearchRel(FoundX, FoundY, 1358, 103, 1400, 133, 0xF40000, 3)
    If (ErrorLevel = 0){
        ; open anvil tab
        MoveMouseRel(1337, 170)
        Sleep, 1000
        Click
        Sleep, 1000
        ; click upgrade
        MoveMouseRel(1428, 581)
        Sleep, 1000
        Click
        Sleep, 1000
    }
}