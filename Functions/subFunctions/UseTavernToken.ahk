; UseTavernToken.ahk

#include Functions\subFunctions\MainMenu.ahk
#include Functions\subFunctions\BigClose.ahk

UseToken(){
    ; check to ensure Get Game Tokens isn't there
    PixelSearch, X, Y, 1059, 985, 1079, 1003, 0x0AA008, 2, Fast RGB
    If (ErrorLevel = 0){
        Return
    }
    MouseMove, 768, 957
    Sleep, 1000
    Click
    Sleep, 1000

    ; Define the X and Y coordinates for each card
    XCoords := [680, 956, 1243, 680, 956, 1243]
    YCoords := [315, 315, 315, 715, 715, 715]

    ; Generate a random index for card selection to be randomized
    Random, RandomIndex, 1, 6

    ; Get the random location
    RandomX := XCoords[RandomIndex]
    RandomY := YCoords[RandomIndex]
    Sleep, 1000
    MouseMove, %RandomX%, %RandomY%
    Sleep, 1000
    Click
    Sleep, 1000
}