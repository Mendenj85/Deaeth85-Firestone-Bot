; FirestoneClicks.ahk

#Include Functions\subFunctions\FirestoneAfterStartTest.ahk

FirestoneClicks(){
    ; start or safely click away from spend gems
    MouseMove, 721, 757
    Sleep, 1000
    Click
    Sleep, 1000
    ; 2x failsafe clicks
    MouseMove, 1419, 934
    Sleep, 500
    Click
    Sleep, 500
    MouseMove, 1419, 934
    Sleep, 500
    Click
    Sleep, 500
    FAST()
}