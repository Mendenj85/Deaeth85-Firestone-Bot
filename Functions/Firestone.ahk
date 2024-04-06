; Firestone.ahk

#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\FirestoneNew1st.ahk
#Include Functions\subFunctions\FirestoneNew2nd.ahk
#Include Functions\subFunctions\FirestoneTest.ahk
#Include Functions\subFunctions\MainMenu.ahk
#Include Functions\subFunctions\OpenTown.ahk

global Slot1InProcess := 0
global Slot2InProcess := 0

GoFirestone() {
    ControlFocus,, ahk_exe Firestone.exe
    MainMenu()
    OpenTown()
    ; open Library
    MouseMove, 329, 657
    Sleep, 1000
    click
    sleep, 1000
    ; select Firestone tree
    MouseMove, 1809, 975
    Sleep, 1000
    click
    Sleep, 1000
    FirestoneTest()
    If (Slot1InProcess = 0){
        FirestoneNew1st()
    }
    If (Slot2InProcess = 0){
        FirestoneNew2nd()
    }
    BigClose()
    BigClose()
}