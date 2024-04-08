; BuyExotic.ahk

#Include Functions\subFunctions\BigClose.ahk

BuyExotic(){
    ; open emblem market
    MouseMove, 1436, 187
    Sleep, 1000
    Click
    Sleep, 1500
    ; open hero chest tab
    MouseMove, 689, 470
    Sleep, 1000
    Click
    Sleep, 1500
    ; attempt to buy
    MouseMove, 1153, 611
    Sleep, 1000
    Click
    Sleep, 1500
    ; open wm chest tab
    MouseMove, 695, 622
    Sleep, 1000
    Click
    Sleep, 1500
    ; attempt to buy
    MouseMove, 1153, 611
    Sleep, 1000
    Click
    Sleep, 1500
    ; open oracle chest tab
    MouseMove, 689, 780
    Sleep, 1000
    Click
    Sleep, 1500
    ; attempt to buy
    MouseMove, 1153, 611
    Sleep, 1000
    Click
    Sleep, 1500
}