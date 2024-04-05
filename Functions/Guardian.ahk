; Guardian.ahk

#include Functions\subFunctions\BigClose.ahk
#include Functions\subFunctions\MainMenu.ahk
#Include Functions\subFunctions\OpenTown.ahk

;function that does the guardian training and guardian evolving(auto evolving not tested, might wait a bit too low for it to work)
Guardian(){
    ControlFocus,, ahk_exe Firestone.exe
    MainMenu()
    OpenTown()
    ; open Magic Quarter
    MouseMove, 658, 284
    Sleep, 1000
    click
    Sleep, 1500
    PixelSearch, X, Y, 1491, 110, 1533, 144, 0x0F40000, 3, Fast RGB
    if(ErrorLevel=0){
        MouseMove, 1450,174
        Sleep, 1000
        Click
        Sleep, 1500
        MouseMove, 1117, 750
        Click
        Sleep, 10500
        MouseMove, 1291, 171
        Sleep, 1000
        Click
        Sleep, 1500
    }
    MouseMove, 1138, 787
    Sleep, 1000
    click
    Sleep, 1500
    BigClose()
    BigClose()
    return
}