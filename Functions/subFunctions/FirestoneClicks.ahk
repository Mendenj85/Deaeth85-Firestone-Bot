; FirestoneClicks.ahk

FirestoneClicks(){
    ; start or safely click away from spend gems
    MouseMove, 721, 757
    Sleep, 1000
    Click
    Sleep, 1500
    ; 2x failsafe clicks
    MouseMove, 1419, 934
    Sleep, 1000
    Click
    Sleep, 1500
    MouseMove, 1419, 934
    Sleep, 1000
    Click
    Sleep, 1500
    FirestoneTest()
    }