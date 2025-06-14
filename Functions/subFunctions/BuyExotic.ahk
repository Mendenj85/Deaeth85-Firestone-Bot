; BuyExotic.ahk

#Include Functions\subFunctions\BigClose.ahk
#Include Functions\util.ahk

BuyExotic(){
    ; open emblem market
    MoveMouseRel(1436, 187)
    Sleep, 1000
    Click
    Sleep, 1000
    ; open gear chest tab
    MoveMouseRel(689, 470)
    Sleep, 1000
    Click
    Sleep, 1000
    ; attempt to buy
    PixelSearchRel(X, Y, 1211, 579, 1253, 640, 0x0AA008, 3)
    If (ErrorLevel = 0){
        MoveMouseRel(1153, 611)
        Sleep, 1000
        Click
        Sleep, 1000
    }
    ; open wm chest tab
    MoveMouseRel(695, 622)
    Sleep, 1000
    Click
    Sleep, 1000
    ; attempt to buy
    PixelSearchRel(X, Y, 1211, 579, 1253, 640, 0x0AA008, 3)
    If (ErrorLevel = 0){ 
        MoveMouseRel(1153, 611)
        Sleep, 1000
        Click
        Sleep, 1000
    }
    ; open oracle chest tab
    MoveMouseRel(689, 780)
    Sleep, 1000
    Click
    Sleep, 1000
    PixelSearchRel(X, Y, 1211, 579, 1253, 640, 0x0AA008, 3)
    If (ErrorLevel = 0){ 
        ; attempt to buy
        MoveMouseRel(1153, 611)
        Sleep, 1000
        Click
        Sleep, 1000
    }
}
