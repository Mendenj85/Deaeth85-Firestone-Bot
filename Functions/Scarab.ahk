;Scarab.ahk

#Include Functions\subFunctions\BigClose.ahk

Scarab(){
    ; check if skip using scarab token was selected
    GuiControlGet, Checked, , Scarab,
        If (Checked=1){
            Return
        } Else {
            ControlFocus,, ahk_exe Firestone.exe
            ; open Tavern
            MouseMove, 719, 957
            Sleep, 1000
            Click
            Sleep, 1000
            MouseMove, 1108, 500
            Sleep, 1000
            Click
            Sleep, 1000

    PixelSearch, X, Y, 1019, 934, 1050, 991, 0x0AA008, 3, Fast RGB
    If (ErrorLevel = 0){
        MouseMove, 962, 958
        Sleep, 1000
        Click
        Sleep, 10000
        } 
        BigClose()
        }
}