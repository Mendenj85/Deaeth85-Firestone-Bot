; BuyExotic.ahk (AHK v2)

#Include ..\util.ahk
#Include BigClose.ahk

BuyExotic() {
    MoveMouseRel(1436, 187)
    Sleep(1000)
    Click()
    Sleep(1000)
    MoveMouseRel(689, 470)
    Sleep(1000)
    Click()
    Sleep(1000)
    result := PixelSearchRel(&X, &Y, 1211, 579, 1253, 640, 0x0AA008, 3)
    if !result {
        MoveMouseRel(1153, 611)
        Sleep(1000)
        Click()
        Sleep(1000)
    }
    MoveMouseRel(695, 622)
    Sleep(1000)
    Click()
    Sleep(1000)
    result := PixelSearchRel(&X, &Y, 1211, 579, 1253, 640, 0x0AA008, 3)
    if !result {
        MoveMouseRel(1153, 611)
        Sleep(1000)
        Click()
        Sleep(1000)
    }
    MoveMouseRel(689, 780)
    Sleep(1000)
    Click()
    Sleep(1000)
    result := PixelSearchRel(&X, &Y, 1211, 579, 1253, 640, 0x0AA008, 3)
    if !result {
        MoveMouseRel(1153, 611)
        Sleep(1000)
        Click()
        Sleep(1000)
    }
}
