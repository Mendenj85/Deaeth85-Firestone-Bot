; WMLevelOnly.ahk

LevelOnly(){
    PixelSearch, X, Y, 1358, 103, 1400, 133, 0xF40000, 3, Fast RGB
    If (ErrorLevel = 0){
        ; open anvil tab
        MouseMove, 1337, 170
        Sleep, 1000
        Click
        Sleep, 1000
        ; click upgrade
        MouseMove, 1428, 581
        Sleep, 1000
        Click
        Sleep, 1000
    }
}