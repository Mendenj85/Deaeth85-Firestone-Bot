; LiberationMissions.ahk

#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\LiberationInProgressCheck.ahk
#Include Functions\util.ahk

LiberationMissions(){
    ControlFocus,, ahk_exe Firestone.exe
    ; open daily missions if notification present
    PixelSearchRel(FoundX, FoundY, 1873, 920, 1900, 954, 0xF40000, 3)
    If (ErrorLevel = 0){
        MoveMouseRel(1800, 982)
        Sleep, 1000
        Click
        Sleep, 1500
    } Else {
        Return
    }
    ; open Liberation
    MoveMouseRel(697, 788)
    Sleep, 1000
    Click
    Sleep, 1500
    Loop, 70{
        Send, {WheelDown}
        Sleep, 200
    }
    ; missions
    319Stars:
    {
        MoveMouseRel(1583, 755)
        Sleep, 1000
        Click
        Sleep, 1500
        PixelSearchRel(FoundX, FoundY, 1723, 51, 1797, 123, 0xFF4805, 10)
            If (ErrorLevel=0){
                Goto, 190Stars
            }
            While !LiberationInProgress(){
                Sleep, 5000
            }
        Goto, 190Stars
    }
    190Stars:
    {
        MoveMouseRel(1191, 755)
        Sleep, 1000
        Click
        Sleep, 1500
        PixelSearchRel(FoundX, FoundY, 1723, 51, 1797, 123, 0xFF4805, 10)
            If (ErrorLevel=0){
                Goto, 155Stars
            }
            While !LiberationInProgress(){
                Sleep, 5000
            }
        Goto, 155Stars
    } 
    155Stars:
    {
        MoveMouseRel(791, 755)
        Sleep, 1000
        Click
        Sleep, 1500
        PixelSearchRel(FoundX, FoundY, 1723, 51, 1797, 123, 0xFF4805, 10)
            If (ErrorLevel=0){
                Goto, 110Stars
            }
            While !LiberationInProgress(){
                Sleep, 5000
            }
        Goto, 110Stars
    }
    110Stars:
    {
        MoveMouseRel(412, 755)
        Sleep, 1000
        Click
        Sleep, 1500
        PixelSearchRel(FoundX, FoundY, 1723, 51, 1797, 123, 0xFF4805, 10)
            If (ErrorLevel=0){
                Goto, 80Stars
            }
            While !LiberationInProgress(){
                Sleep, 5000
            }
        Goto, 80Stars
    }
    80Stars:
    {
        MoveMouseRel(133, 748)
        Sleep, 1000
        Click
        Sleep, 1500
        PixelSearchRel(FoundX, FoundY, 1723, 51, 1797, 123, 0xFF4805, 10)
            If (ErrorLevel=0){
                Goto, 60Stars
            }
            While !LiberationInProgress(){
                Sleep, 5000
            }
        Goto, 60Stars
    }
    60Stars:
    {
        Loop, 63{
            Send, {WheelUp}
            Sleep, 200
        }
        MoveMouseRel(1688, 755)
        Sleep, 1000
        Click
        Sleep, 1500
        PixelSearchRel(FoundX, FoundY, 1723, 51, 1797, 123, 0xFF4805, 10)
            If (ErrorLevel=0){
                Goto, 40Stars
            }
            While !LiberationInProgress(){
                Sleep, 5000
            }
        Goto, 40Stars
    }
    40Stars:
    {
        MoveMouseRel(1291, 755)
        Sleep, 1000
        Click
        Sleep, 1500
        PixelSearchRel(FoundX, FoundY, 1723, 51, 1797, 123, 0xFF4805, 10)
            If (ErrorLevel=0){
                Goto, 20Stars
            }
            While !LiberationInProgress(){
                Sleep, 5000
            }
        Goto, 20Stars
    }
    20Stars:
    {
        MoveMouseRel(900, 755)
        Sleep, 1000
        Click
        Sleep, 1500
        PixelSearchRel(FoundX, FoundY, 1723, 51, 1797, 123, 0xFF4805, 10)
            If (ErrorLevel=0){
                Goto, 10Stars
            }
            While !LiberationInProgress(){
                Sleep, 5000
            }
        Goto, 10Stars
    }
    10Stars:
    {
        MoveMouseRel(517, 755)
        Sleep, 1000
        Click
        Sleep, 1500
        PixelSearchRel(FoundX, FoundY, 1723, 51, 1797, 123, 0xFF4805, 10)
            If (ErrorLevel=0){
                Goto, 5Stars
            }
            While !LiberationInProgress(){
                Sleep, 5000
            }
        Goto, 5Stars
    }
    5Stars:
    {
        MoveMouseRel(157, 758)
        Sleep, 1000
        Click
        Sleep, 1500
        PixelSearchRel(FoundX, FoundY, 1723, 51, 1797, 123, 0xFF4805, 10)
            If (ErrorLevel=0){
                BigClose()
                Goto, CheckDungeon
            }
            While !LiberationInProgress(){
                Sleep, 5000
            }
        BigClose()
        Goto, CheckDungeon
    }

    CheckDungeon:
    {
        ; open dungeon
        MoveMouseRel(1223, 794)
        Sleep, 1000
        Click
        Sleep, 1500
    }
    120Stars:
    {
        MoveMouseRel(1149, 763)
        Sleep, 1000
        Click
        Sleep, 1500
        PixelSearchRel(FoundX, FoundY, 1723, 51, 1797, 123, 0xFF4805, 10)
            If (ErrorLevel=0){
                Goto, 70Stars
            }
            While !LiberationInProgress(){
                Sleep, 5000
            }
        Goto, 70Stars
    }
    70Stars:
    {
        MoveMouseRel(768, 762)
        Sleep, 1000
        Click
        Sleep, 1500
        PixelSearchRel(FoundX, FoundY, 1723, 51, 1797, 123, 0xFF4805, 10)
            If (ErrorLevel=0){
                Return
            }
            While !LiberationInProgress(){
                Sleep, 5000
            }
    }
    BigClose()
}