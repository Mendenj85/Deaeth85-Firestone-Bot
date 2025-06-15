; Research.ahk

#Include util.ahk
#Include subFunctions\BigClose.ahk
#Include subFunctions\ResearchStart.ahk
#Include subFunctions\ResearchSlotTest.ahk

global Slot1InProcess := 0
global Slot2InProcess := 0

GoResearch() {
    WinActivate("ahk_exe Firestone.exe ahk_class UnityWndClass")
    ; open Library
    MoveMouseRel(329, 657)
    Sleep 1000
    Click
    Sleep 1000
    ; select Firestone tree
;    MoveMouseRel(1809, 975)
    MoveMouseRel(1816, 610)
    Sleep 1000
    Click
    Sleep 1000
    ResearchSlotTest()
    if (Slot1InProcess = 0) {
        ResearchStart()
    }
    if (Slot2InProcess = 0) {
        ResearchStart()
    }
    BigClose()
}