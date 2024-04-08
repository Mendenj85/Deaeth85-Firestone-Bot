; ClaimEvents.ahk

#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\MainMenu.ahk

ClaimEvents(){
    ControlFocus,, ahk_exe Firestone.exe
    MainMenu()
    ; open events
    MouseMove, 1691, 229
    Sleep, 1000
    Click
    Sleep, 1500
    ; click top event
    MouseMove, 942, 359
    Sleep, 1000
    Click
    Sleep, 1500
    ; click challenges
    MouseMove, 1125, 70
    Sleep, 1000
    Click
    Sleep, 1500
    ; claim 3 challenges
    MouseMove, 1483, 382
    Sleep, 1000
    Click
    Sleep, 1500
    MouseMove, 1496, 604
    Sleep, 1000
    Click
    Sleep, 1500
    MouseMove, 1500, 837
    Sleep, 1000
    Click
    Sleep, 1500
    BigClose()
    BigClose()
}