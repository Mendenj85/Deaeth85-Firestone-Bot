; UseTavernToken.ahk

#include Functions\subFunctions\MainMenu.ahk
#include Functions\subFunctions\BigClose.ahk

UseToken(){
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

    ; random click in case get game tokens was clicked
    MouseMove, 1257, 49
    Sleep, 1000
    Click
    Sleep, 1000
}