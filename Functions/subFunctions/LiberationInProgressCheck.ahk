; LiberationInProgressCheck.ahk (AHK v2)

#Include ..\util.ahk

LiberationInProgress() {
    Loop {
        success := PixelSearchRel(&FoundX, &FoundY, 990, 703, 1059, 737, 0x0AA008, 10)
        if success {
            MoveMouseRel(967, 744)
            Sleep(1000)
            Click()
            Sleep(1000)
            return true
        }
        Sleep(2000)
        MoveMouseRel(1650, 500)
    }
}