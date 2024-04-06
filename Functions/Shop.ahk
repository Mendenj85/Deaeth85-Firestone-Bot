; Shop.ahk

#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\MainMenu.ahk

lastExecutionTimeShop := 0

Shop(){
    ControlFocus,, ahk_exe Firestone.exe
    MainMenu()
    ; open shop
    MouseMove, 1857, 583
    Sleep, 1000
    Click
    Sleep, 1500
    ; check for free gift
    ImageSearch, X, Y, 381, 280, 796, 934, Images\shop.png
        If (ErrorLevel = 0){
            MouseMove, 581, 752
            Sleep, 1000
            Click
            Sleep, 1500
        }
    ; open daily check-in
    MouseMove, 1383, 116
    Sleep, 1000
    Click
    Sleep, 1500
    ; check in
    MouseMove, 1342, 834
    Sleep, 1000
    Click
    Sleep, 1500
    BigClose()
}
