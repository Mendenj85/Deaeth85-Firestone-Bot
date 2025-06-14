; Research.ahk

#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\ResearchStart.ahk
#Include Functions\subFunctions\ResearchSlotTest.ahk
#Include Functions\util.ahk

global Slot1InProcess := 0
global Slot2InProcess := 0

GoResearch() {
    ControlFocus,, ahk_exe Firestone.exe
    ; open Library
    MoveMouseRel(329, 657)
    Sleep, 1000
    Click
    Sleep, 1000
    ; select Firestone tree
;    MoveMouseRel(1809, 975)
    MoveMouseRel(1816, 610)
    Sleep, 1000
    Click
    Sleep, 1000
    ResearchSlotTest()
    If (Slot1InProcess = 0){
        ResearchStart()
    }
    If (Slot2InProcess = 0){
        ResearchStart()
    }
    BigClose()
}