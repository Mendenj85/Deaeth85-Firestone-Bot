;ClaimEngineer.ahk

#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\MapClose.ahk
#Include Functions\subFunctions\OpenTown.ahk

ClaimEngineer(){
    ControlFocus,, ahk_exe Firestone.exe
    MainMenu()
    OpenTown()
    ; open engineer
    MouseMove, 1230, 820
    sleep, 1000
    click
    sleep, 1500
    ; select engineer
    MouseMove, 610, 540
    sleep, 1000
    click
    sleep, 1500
    ; claim tools
    MouseMove, 1642, 704
    sleep, 1000
    click
    sleep, 1000
    BigClose()
    BigClose()
    return
}
