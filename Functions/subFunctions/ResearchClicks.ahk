; ResearchClicks.ahk

#Include Functions\subFunctions\ResearchSlotTest.ahk

ResearchClicks(){
    ; start or safely click away from spend gems
    MouseMove, 721, 757
    Sleep, 1000
    Click
    Sleep, 1000
    ResearchSlotTest()
}