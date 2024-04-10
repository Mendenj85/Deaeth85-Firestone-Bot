; BuyExotic.ahk

#Include Functions\subFunctions\BigClose.ahk

BuyExotic(){
    ; open emblem market
    MouseMove, 1436, 187
    Sleep, 1000
    Click
    Sleep, 1000
    ; open gear chest tab
    MouseMove, 689, 470
    Sleep, 1000
    Click
    Sleep, 1000
    ; attempt to buy
    PixelSearch, X, Y, 1211, 579, 1253, 640, 0x0AA008, 3, Fast RGB
    If (ErrorLevel = 0){
        MouseMove, 1153, 611
        Sleep, 1000
        Click
        Sleep, 1000
    }
    ; open wm chest tab
    MouseMove, 695, 622
    Sleep, 1000
    Click
    Sleep, 1000
    ; attempt to buy
    PixelSearch, X, Y, 1211, 579, 1253, 640, 0x0AA008, 3, Fast RGB
    If (ErrorLevel = 0){ 
        MouseMove, 1153, 611
        Sleep, 1000
        Click
        Sleep, 1000
    }
        ; open oracle chest tab
    MouseMove, 689, 780
    Sleep, 1000
    Click
    Sleep, 1000
    PixelSearch, X, Y, 1211, 579, 1253, 640, 0x0AA008, 3, Fast RGB
    If (ErrorLevel = 0){ 
        ; attempt to buy
        MouseMove, 1153, 611
        Sleep, 1000
        Click
        Sleep, 1000
    }
}
