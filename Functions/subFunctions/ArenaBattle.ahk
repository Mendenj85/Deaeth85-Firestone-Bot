; ArenaBattle.ahk

ArenaBattle(){
    Wait:
    PixelSearch, X, Y, 979, 753, 1056, 798, 0x0AA008, 3, Fast RGB
        If (ErrorLevel=0){
            MouseMove, 959, 775
            Sleep, 1000
            Click
            Sleep, 1000
            Return True
        }
    Sleep, 2000
    Goto, Wait
}