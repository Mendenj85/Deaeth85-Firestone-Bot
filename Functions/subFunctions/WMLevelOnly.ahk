; WMLevelOnly.ahk (AHK v2)

#Include ..\util.ahk

LevelOnly() {
    ; Look for notification (resolution independent)
    result := PixelSearchRel(&FoundX, &FoundY, 1358, 103, 1400, 133, 0xF40000, 3)
    if result {
        ; open anvil tab
        MoveMouseRel(1337, 170)
        Sleep(1000)
        Click()
        Sleep(1000)
        ; click upgrade
        MoveMouseRel(1428, 581)
        Sleep(1000)
        Click()
        Sleep(1000)
    }
}