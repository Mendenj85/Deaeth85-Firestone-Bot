; Firestone.ahk

#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\FirestoneNew1st.ahk
#Include Functions\subFunctions\FirestoneNew2nd.ahk
#Include Functions\subFunctions\FirestoneTest.ahk
#Include Functions\subFunctions\MainMenu.ahk
#Include Functions\subFunctions\OpenTown.ahk

GoFirestone() {
    ControlFocus,, ahk_exe Firestone.exe
    MainMenu()
    OpenTown()
    ; open Library
    MouseMove, 329, 657
    Sleep, 1000
    click
    sleep, 1000
    ; select Firestone
    MouseMove, 1809, 975
    Sleep, 1000
    click
    Sleep, 1000
    FirestoneTest()
    If (2ndSlotInProgress = 0){
        FirestoneNew2nd()
    }
    If (1stSlotInProgress = 0){
        FirestoneNew1st()
    }
    BigClose()
    BigClose()
}