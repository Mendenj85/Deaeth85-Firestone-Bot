; Guardian.ahk

#Include Functions\subFunctions\BigClose.ahk

;function that does the guardian training and guardian evolving
Guardian(){
    ControlFocus,, ahk_exe Firestone.exe
    ; open Magic Quarter
    MouseMove, 658, 284
    Sleep, 1000
    click
    Sleep, 1500
    ; check for evolve
    PixelSearch, X, Y, 1307, 107, 1346, 136, 0x0F40000, 3, Fast RGB
    if(ErrorLevel=0){
        MouseMove, 1275, 165
        Sleep, 1000
        Click
        Sleep, 1000
        MouseMove, 1117, 750
        Click
        Sleep, 10500
        MouseMove, 1291, 171
        Sleep, 1000
        Click
        Sleep, 1000
    }
    ; check for training
    PixelSearch, X, Y, 1199, 766, 1257, 810, 0x0AA008, 3, Fast RGB
    If (ErrorLevel = 0){
        MouseMove, 1138, 787
        Sleep, 1000
        click
        Sleep, 1000
    }
    BigClose()
    Return
}