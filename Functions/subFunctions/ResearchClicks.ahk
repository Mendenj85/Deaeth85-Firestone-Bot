; ResearchClicks.ahk (AHK v2)

#Include ..\util.ahk
#Include ResearchSlotTest.ahk

ResearchClicks() {
    ; start or safely click away from spend gems (resolution independent)
    MoveMouseRel(721, 747)
    Sleep(1000)
    Click()
    Sleep(1000)
    ResearchSlotTest()
}