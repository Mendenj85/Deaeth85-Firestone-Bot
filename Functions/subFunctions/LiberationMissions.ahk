; LiberationMissions.ahk

#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\LiberationInProgressCheck.ahk

LiberationMissions(){
    ControlFocus,, ahk_exe Firestone.exe
    ; open daily missions
    MouseMove, 1800, 982
    Sleep, 1000
    Click
    Sleep, 1500
    ; open Liberation
    MouseMove, 697, 788
    Sleep, 1000
    Click
    Sleep, 1500
    Loop, 60{
        Send, {WheelDown}
        Sleep, 200
    }
    GuiControlGet, SelectedItem, ,LiberationStars,
        If (SelectedItem="190 or Less Stars"){
            Goto, 190Stars
        }
    GuiControlGet, SelectedItem, ,LiberationStars,
        If (SelectedItem="155 or Less Stars"){
            Goto, 155Stars
        }   
    GuiControlGet, SelectedItem, ,LiberationStars,
        If (SelectedItem="110 or Less Stars"){
            Goto, 110Stars
        }
    GuiControlGet, SelectedItem, ,LiberationStars,
        If (SelectedItem="80 or Less Stars"){
            Goto, 80Stars
        }
    GuiControlGet, SelectedItem, ,LiberationStars,
        If (SelectedItem="60 or Less Stars"){
            Goto, 60Stars
        }
    GuiControlGet, SelectedItem, ,LiberationStars,
        If (SelectedItem="40 or Less Stars"){
            Goto, 40Stars
        }
    GuiControlGet, SelectedItem, ,LiberationStars,
        If (SelectedItem="20 or Less Stars"){
            Loop, 60{
                Send, {WheelUp}
                Sleep, 200
            }
            Goto, 20Stars
        }
    GuiControlGet, SelectedItem, ,LiberationStars,
        If (SelectedItem="10 or Less Stars"){
            Loop, 60{
                Send, {WheelUp}
                Sleep, 200
            }
            Goto, 10Stars
        }
    GuiControlGet, SelectedItem, ,LiberationStars,
        If (SelectedItem="5 or Less Stars"){
            Loop, 60{
                Send, {WheelUp}
                Sleep, 200
            }
            Goto, 5Stars
        }    
    ; missions
    190Stars:
    {
        MouseMove, 1581, 759
        Sleep, 1000
        Click
        Sleep, 1500
        PixelSearch, X, Y, 1723, 51, 1797, 123, 0xFF4805, 10, Fast RGB
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
        MouseMove, 1193, 767
        Sleep, 1000
        Click
        Sleep, 1500
        PixelSearch, X, Y, 1723, 51, 1797, 123, 0xFF4805, 10, Fast RGB
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
        MouseMove, 797, 759
        Sleep, 1000
        Click
        Sleep, 1500
        PixelSearch, X, Y, 1723, 51, 1797, 123, 0xFF4805, 10, Fast RGB
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
        MouseMove, 412, 748
        Sleep, 1000
        Click
        Sleep, 1500
        PixelSearch, X, Y, 1723, 51, 1797, 123, 0xFF4805, 10, Fast RGB
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
        MouseMove, 137, 742
        Sleep, 1000
        Click
        Sleep, 1500
        PixelSearch, X, Y, 1723, 51, 1797, 123, 0xFF4805, 10, Fast RGB
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
        Loop, 60{
            Send, {WheelUp}
            Sleep, 200
        }
        MouseMove, 1505, 758
        Sleep, 1000
        Click
        Sleep, 1500
        PixelSearch, X, Y, 1723, 51, 1797, 123, 0xFF4805, 10, Fast RGB
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
        MouseMove, 1115, 755
        Sleep, 1000
        Click
        Sleep, 1500
        PixelSearch, X, Y, 1723, 51, 1797, 123, 0xFF4805, 10, Fast RGB
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
        MouseMove, 713, 753
        Sleep, 1000
        Click
        Sleep, 1500
        PixelSearch, X, Y, 1723, 51, 1797, 123, 0xFF4805, 10, Fast RGB
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
        MouseMove, 331, 758
        Sleep, 1000
        Click
        Sleep, 1500
        PixelSearch, X, Y, 1723, 51, 1797, 123, 0xFF4805, 10, Fast RGB
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
    ; see if we have enough stars for dungeon missions
    GuiControlGet, SelectedItem, ,LiberationStars,
        If (SelectedItem="190 or Less Stars"){
            Goto, Dungeon
        } Else {
            If (SelectedItem="155 or Less Stars"){
                Goto, Dungeon
            } Else {
                If (SelectedItem="120 or Less Stars"){
                    Goto, Dungeon 
                } Else {
                    If (SelectedItem="110 or Less Stars"){
                        Goto, Dungeon
                    } Else {
                        If (SelectedItem="80 or Less Stars"){
                            Goto, Dungeon
                        } Else {
                            If (SelectedItem="70 or Less Stars"){
                                Goto, Dungeon
                            }
                        }
                    }
                }
            }
        }
    Return
    Dungeon:
    {
        ; open dungeon
        MouseMove, 1223, 794
        Sleep, 1000
        Click
        Sleep, 1500
    }
    GuiControlGet, SelectedItem, ,LiberationStars,
        If (SelectedItem="190 or Less Stars"){
            Goto, 120Stars
        } Else {
            If (SelectedItem="155 or Less Stars"){
                Goto, 120Stars
            } Else {
                If (SelectedItem="120 or Less Stars"){
                    Goto, 120Stars
                } Else {
                    If (SelectedItem="110 or Less Stars"){
                        Goto, 70Stars
                    } Else {
                        If (SelectedItem="80 or Less Stars"){
                            Goto, 70Stars
                        } Else {
                            If (SelectedItem="70 or Less Stars"){
                                Goto, 70Stars
                            }
                        }
                    }
                }
            }
        }
    120Stars:
    {
        MouseMove, 1149, 763
        Sleep, 1000
        Click
        Sleep, 1500
        PixelSearch, X, Y, 1723, 51, 1797, 123, 0xFF4805, 10, Fast RGB
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
        MouseMove, 768, 762
        Sleep, 1000
        Click
        Sleep, 1500
        PixelSearch, X, Y, 1723, 51, 1797, 123, 0xFF4805, 10, Fast RGB
            If (ErrorLevel=0){
                Return
            }
            While !LiberationInProgress(){
                Sleep, 5000
            }
    }
BigClose()
BigClose()
BigClose()
}