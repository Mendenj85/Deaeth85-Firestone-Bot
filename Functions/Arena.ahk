;Arena.ahk

#Include Functions\subFunctions\ArenaBattle.ahk
#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\MainMenu.ahk
#Include Functions\subFunctions\OpenTown.ahk

Arena(){
    ControlFocus,, ahk_exe Firestone.exe
    MainMenu()
    OpenTown()
    ; open battles
    MouseMove, 362, 204
    Sleep, 1000
    Click
    Sleep, 1500
    ; choose arena of kings
    MouseMove, 959, 518
    Sleep, 1000
    Click
    Sleep, 1500
    ; define Xcoords for random opponent selection
    XCoords := [700, 954, 1220]
    Random, RandomIndex, 1, 3
    RandomX := XCoords[RandomIndex]
    Sleep, 1000
    Loop, 5{
        ;refresh opponents
        MouseMove, 871, 195
        Sleep, 1000
        Click
        Sleep, 3000
        ; choose random opponent
        MouseMove, %RandomX%, 630
        Sleep, 1000
        Click
        Sleep, 1500
        ; check for buy more battles popup
        PixelSearch, X, Y, 1243, 669, 1291, 713, 0x0AA008, 10, Fast RGB
            If (ErrorLevel=0){
                BigClose()
                Return
            }
        MouseMove, 961, 570
        Sleep, 1000
        Click
        While, !ArenaBattle(){
            Sleep, 5000
        }
    Continue
    }
BigClose()
BigClose()
}