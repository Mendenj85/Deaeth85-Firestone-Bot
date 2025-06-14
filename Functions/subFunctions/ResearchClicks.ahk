; ResearchClicks.ahk

#Include Functions\subFunctions\ResearchSlotTest.ahk
#Include Functions\util.ahk

ResearchClicks(){
    ; start or safely click away from spend gems (resolution independent)
    MoveMouseRel(721, 747)
    Sleep, 1000
    Click
    Sleep, 1000
    ResearchSlotTest()
}