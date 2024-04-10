; Talents800.ahk

#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\MainMenu.ahk

UpgradeTalents800(){
    ControlFocus,, ahk_exe Firestone.exe
    ; check for level up notification
    PixelSearch, FoundX, FoundY, 27, 278, 78, 336, 0x60A00, 1, Fast RGB
    If (ErrorLevel = 0){
        MouseMove, FoundX, FoundY
        Sleep, 1000
        Click
        Sleep, 1500
        UpgradeTalents450()
        } Else {
            PixelSearch, FoundX, FoundY, 30, 372, 84, 428, 0x600A00, 1, Fast RGB
            If (ErrorLevel = 0){
                MouseMove, FoundX, FoundY
                Sleep, 1000
                Click
                Sleep, 1500
                UpgradeTalents450()
            } Else {
                PixelSearch, FoundX, FoundY, 32, 469, 84, 520, 0x600A00, 1, Fast RGB
                If (ErrorLevel = 0){
                    MouseMove, FoundX, FoundY
                    Sleep, 1000
                    Click
                    Sleep, 1500
                    UpgradeTalents450()
                } Else {
                    PixelSearch, FoundX, FoundY, 31, 560, 84, 612, 0x600A00, 1, Fast RGB
                    If (ErrorLevel = 0){
                        MouseMove, FoundX, FoundY
                        Sleep, 1000
                        Click
                        Sleep, 1500
                        UpgradeTalents450()
                    } Else {
                        Return
                    }
                }
            }
        }
    MouseMove, 958, 540
    Sleep, 500
    ; scroll talent tree to the top so we can ensure we upgrade correct talent
    Loop, 275{
        Send, {WheelDown}
        Sleep, 100
    }
    Sleep, 1000
    ; check first dropdown selection
    GuiControlGet, SelectedItem, , Talents800,
       If (SelectedItem = "Don't Upgrade Talents (500+ Talent Points)"){
            Return
        } Else {
            GuiControlGet, SelectedItem, ,Talents800,
            If (SelectedItem = "Leadership(500)"){
                Goto, Lead500
            } Else {
                GuiControlGet, SelectedItem, ,Talents800,
                If (SelectedItem = "Guardian Power(500)"){                    
                    Goto, Guard500
                } Else {
                    GuiControlGet, SelectedItem, ,Talents800,
                    If (SelectedItem = "Team Bonus(500)"){
                        Goto, Team500
                  } Else {
                        GuiControlGet, SelectedItem, ,Talents800,
                        If (SelectedItem = "Fate(530)"){
                            Goto, Fate530
                      } Else {
                            GuiControlGet, SelectedItem, ,Talents800,
                            If (SelectedItem = "Mana Heroes(560)"){
                                Goto, Mana560
                           } Else {
                                GuiControlGet, SelectedItem, ,Talents800,
                                If (SelectedItem = "Energy Heroes(560)"){
                                    Goto, Energy560
                                } Else {
                                    GuiControlGet, SelectedItem, ,Talents800,
                                    If (SelectedItem = "Rage Heroes(560)"){
                                        Goto, Rage560
                                    } Else {
                                        GuicontrolGet, SelectedItem, ,Talents800,
                                        If (SelectedItem = "Weaklings(590)"){
                                            Goto, Weak590
                                        } Else {
                                            GuiControlGet, SelectedItem, ,Talents800,
                                            If (SelectedItem = "Expose Weakness(590)"){
                                                Goto, ExposeW590
                                            } Else {
                                                GuiControlGet, SelectedItem, ,Talents800,
                                                If (SelectedItem = "Damange Specialization(620)"){
                                                    Goto, Damage620
                                                } Else {
                                                    GuiControlGet, SelectedItem, ,Talents800,
                                                    If (SelectedItem = "Tank Specialization(620)"){
                                                        Goto, Tank620
                                                    } Else {
                                                        GuiControlGet, SelectedItem, ,Talents800,
                                                        If (SelectedItem = "Healer Specialization(620)"){
                                                            Goto, Heal620
                                                        } Else {
                                                            GuiControlGet, SelectedItem, ,Talents800,
                                                            If (SelectedItem = "Raining Gold(650)"){
                                                                Goto, Gold650
                                                            } Else {
                                                                GuiControlGet, SelectedItem, ,Talents800,
                                                                If (SelectedItem = "Fist Fight(680)"){
                                                                    Goto, Fist680
                                                                } Else {
                                                                    GuiControlGet, SelectedItem, ,Talents800,
                                                                    If (SelectedItem = "Precision(680)"){
                                                                        Goto, Precision680
                                                                    } Else {
                                                                        GuiControlGet, SelectedItem, ,Talents800,
                                                                        If (SelectedItem = "Magic Spells(680)"){
                                                                            Goto, Magic680
                                                                        } Else {
                                                                            GuiControlGet, SelectedItem, ,Talents800,
                                                                            If (SelectedItem = "Weaklings(710)"){
                                                                                Goto, Weak710
                                                                            } Else {
                                                                                GuiControlGet, SelectedItem, ,Talents800,
                                                                                If (SelectedItem = "Expose Weakness(710)"){
                                                                                    Goto, ExWeak710
                                                                                } Else {
                                                                                    GuiControlGet, SelectedItem, ,Talents800,
                                                                                    If (SelectedItem = "Leadership(740)"){
                                                                                        Goto, Lead740
                                                                                    } Else {
                                                                                        GuiControlGet, SelectedItem, ,Talents800,
                                                                                        If (SelectedItem = "Guardian Power(740)"){
                                                                                            Goto, Guard740
                                                                                        } Else {
                                                                                            GuiControlGet, SelectedItem, ,Talents800,
                                                                                            If (SelectedItem = "Team Bonus(740)"){
                                                                                                Goto, Team740
                                                                                            } Else {
                                                                                                GuiControlGet, SelectedItem, ,Talents800,
                                                                                                If (SelectedItem = "Powerless Enemy(770)"){
                                                                                                    Goto, PowerLE770
                                                                                                } Else {
                                                                                                    GuiControlGet, SelectedItem, ,Talents800,
                                                                                                    If (SelectedItem = "Powerless Boss(770)"){
                                                                                                        Goto, PowerLB770
                                                                                                    } Else {
                                                                                                        GuiControlGet, SelectedItem, ,Talents800,
                                                                                                        If (SelectedItem = "Fate(800)"){
                                                                                                            Goto, Fate800
                                                                                                        } 
                                                                                                        
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    
        ; upgrade section for each 
        Lead500:
            Loop, 65{
                Send, {WheelUp}
                Sleep, 100
            }
            ; click talent
            MouseMove, 650, 289
            Sleep, 1000
            Click
            Sleep, 1000
            ; click + to upgrade
            MouseMove, 1021, 836
            Sleep, 1000
            Click
            Sleep, 1000
            BigClose()
            ; click to save
            MouseMove, 1543, 927
            Sleep, 1000
            Click
            Sleep, 1000
            BigClose()
            Return

        Guard500:
            Loop, 65{
                Send, {WheelUp}
                Sleep, 100
            }
            MouseMove, 962, 285
            Sleep, 1000
            Click
            Sleep, 1000
            ; click + to upgrade
            MouseMove, 1021, 836
            Sleep, 1000
            Click
            Sleep, 1000
            BigClose()
            ; click to save
            MouseMove, 1543, 927
            Sleep, 1000
            Click
            Sleep, 1000
            BigClose()
            Return
        
        Team500:
            Loop, 65{
                Send, {WheelUp}
                Sleep, 100
            }
            MouseMove, 1277, 287
            Sleep, 1000
            Click
            Sleep, 1000
            ; click + to upgrade
            MouseMove, 1021, 836
            Sleep, 1000
            Click
            Sleep, 1000
            BigClose()
            ; click to save
            MouseMove, 1543, 927
            Sleep, 1000
            Click
            Sleep, 1000
            BigClose()
            Return
    
        Fate530:
            Loop, 57{
                Send, {WheelUp}
                Sleep, 100
            }
            MouseMove, 962, 294 
            Sleep, 1000
            Click
            Sleep, 1000
            ; click + to upgrade
            MouseMove, 1021, 836
            Sleep, 1000
            Click
            Sleep, 1000
            BigClose()
            ; click to save
            MouseMove, 1543, 927
            Sleep, 1000
            Click
            Sleep, 1000
            BigClose()
            Return
        
        Mana560:
            Loop, 49{
                Send, {WheelUp}
                Sleep, 100
            }
            MouseMove, 651, 297
            Sleep, 1000
            Click
            Sleep, 1000
            ; click + to upgrade
            MouseMove, 1021, 836
            Sleep, 1000
            Click
            Sleep, 1000
            BigClose()
            ; click to save
            MouseMove, 1543, 927
            Sleep, 1000
            Click
            Sleep, 1000
            BigClose()
            Return

        Energy560:
            Loop, 49{
                Send, {WheelUp}
                Sleep, 100
            }
            MouseMove, 966, 302
            Sleep, 1000
            Click
            Sleep, 1000
            ; click + to upgrade
            MouseMove, 1021, 836
            Sleep, 1000
            Click
            Sleep, 1000
            BigClose()
            ; click to save
            MouseMove, 1543, 927
            Sleep, 1000
            Click
            Sleep, 1000
            BigClose()
            Return

        Rage560:
            Loop, 49{
                Send, {WheelUp}
                Sleep, 100
            }
            MouseMove, 1285, 305
            Sleep, 1000
            Click
            Sleep, 1000
            ; click + to upgrade
            MouseMove, 1021, 836
            Sleep, 1000
            Click
            Sleep, 1000
            BigClose()
            ; click to save
            MouseMove, 1543, 927
            Sleep, 1000
            Click
            Sleep, 1000
            BigClose()
            Return

        Weak590:
            Loop, 41{
                Send, {WheelUp}
                Sleep, 100
            }
            MouseMove, 803, 308
            Sleep, 1000
            Click
            Sleep, 1000
            ; click + to upgrade
            MouseMove, 1021, 836
            Sleep, 1000
            Click
            Sleep, 1000
            BigClose()
            ; click to save
            MouseMove, 1543, 927
            Sleep, 1000
            Click
            Sleep, 1000
            BigClose()
            Return

        ExposeW590:
            Loop, 41{
                Send, {WheelUp}
                Sleep, 100
            }
            MouseMove, 1124, 312 
            Sleep, 1000
            Click
            Sleep, 1000
            ; click + to upgrade
            MouseMove, 1021, 836
            Sleep, 1000
            Click
            Sleep, 1000
            BigClose()
            ; click to save
            MouseMove, 1543, 927
            Sleep, 1000
            Click
            Sleep, 1000
            BigClose()
            Return

        Damage620:
            Loop, 32{
                Send, {WheelUp}
                Sleep, 100
            }
            MouseMove, 650, 283
            Sleep, 1000
            Click
            Sleep, 1000
            ; click + to upgrade
            MouseMove, 1021, 836
            Sleep, 1000
            Click
            Sleep, 1000
            BigClose()
            ; click to save
            MouseMove, 1543, 927
            Sleep, 1000
            Click
            Sleep, 1000
            BigClose()
            Return

        Tank620:
            Loop, 32{
                Send, {WheelUp}
                Sleep, 100
            }
            MouseMove, 968, 288
            Sleep, 1000
            Click
            Sleep, 1000
            ; click + to upgrade
            MouseMove, 1021, 836
            Sleep, 1000
            Click
            Sleep, 1000
            BigClose()
            ; click to save
            MouseMove, 1543, 927
            Sleep, 1000
            Click
            Sleep, 1000
            BigClose()
            Return

        Heal620:
            Loop, 32{
                Send, {WheelUp}
                Sleep, 100
            }
            MouseMove, 1282, 281
            Sleep, 1000
            Click
            Sleep, 1000
            ; click + to upgrade
            MouseMove, 1021, 836
            Sleep, 1000
            Click
            Sleep, 1000
            BigClose()
            ; click to save
            MouseMove, 1543, 927
            Sleep, 1000
            Click
            Sleep, 1000
            BigClose()
            Return
            
        Gold650:
            Loop, 24{
                Send, {WheelUp}
                Sleep, 100
            }
            MouseMove, 967, 293
            Sleep, 1000
            Click
            Sleep, 1000
            ; click + to upgrade
            MouseMove, 1021, 836
            Sleep, 1000
            Click
            Sleep, 1000
            BigClose()
            ; click to save
            MouseMove, 1543, 927
            Sleep, 1000
            Click
            Sleep, 1000
            BigClose()
            Return

        Fist680:
            Loop, 16{
                Send, {WheelUp}
                Sleep, 100
            }
            MouseMove, 652, 299
            Sleep, 1000
            Click
            Sleep, 1000
            ; click + to upgrade
            MouseMove, 1021, 836
            Sleep, 1000
            Click
            Sleep, 1000
            BigClose()
            ; click to save
            MouseMove, 1543, 927
            Sleep, 1000
            Click
            Sleep, 1000
            BigClose()
            Return

        Precision680:
            Loop, 16{
                Send, {WheelUp}
                Sleep, 100
            }
            MouseMove, 968, 301
            Sleep, 1000
            Click
            Sleep, 1000
            ; click + to upgrade
            MouseMove, 1021, 836
            Sleep, 1000
            Click
            Sleep, 1000
            BigClose()
            ; click to save
            MouseMove, 1543, 927
            Sleep, 1000
            Click
            Sleep, 1000
            BigClose()
            Return

        Magic680:
            Loop, 16{
                Send, {WheelUp}
                Sleep, 100
            }
            MouseMove, 1279, 300
            Sleep, 1000
            Click
            Sleep, 1000
            ; click + to upgrade
            MouseMove, 1021, 836
            Sleep, 1000
            Click
            Sleep, 1000
            BigClose()
            ; click to save
            MouseMove, 1543, 927
            Sleep, 1000
            Click
            Sleep, 1000
            BigClose()
            Return

        Weak710:
            Loop, 8{
                Send, {WheelUp}
                Sleep, 100
            }
            MouseMove, 809, 305
            Sleep, 1000
            Click
            Sleep, 1000
            ; click + to upgrade
            MouseMove, 1021, 836
            Sleep, 1000
            Click
            Sleep, 1000
            BigClose()
            ; click to save
            MouseMove, 1543, 927
            Sleep, 1000
            Click
            Sleep, 1000
            BigClose()
            Return

        ExWeak710:
            Loop, 8{
                Send, {WheelUp}
                Sleep, 100
            }
            MouseMove, 1129, 308
            Sleep, 1000
            Click
            Sleep, 1000
            ; click + to upgrade
            MouseMove, 1021, 836
            Sleep, 1000
            Click
            Sleep, 1000
            BigClose()
            ; click to save
            MouseMove, 1543, 927
            Sleep, 1000
            Click
            Sleep, 1000
            BigClose()
            Return

        Lead740:
            MouseMove, 652, 315
            Sleep, 1000
            Click
            Sleep, 1000
            ; click + to upgrade
            MouseMove, 1021, 836
            Sleep, 1000
            Click
            Sleep, 1000
            BigClose()
            ; click to save
            MouseMove, 1543, 927
            Sleep, 1000
            Click
            Sleep, 1000
            BigClose()
            Return

        Guard740:
            MouseMove, 964, 312
            Sleep, 1000
            Click
            Sleep, 1000
            ; click + to upgrade
            MouseMove, 1021, 836
            Sleep, 1000
            Click
            Sleep, 1000
            BigClose()
            ; click to save
            MouseMove, 1543, 927
            Sleep, 1000
            Click
            Sleep, 1000
            BigClose()
            Return

        Team740:
            MouseMove, 1285, 317
            Sleep, 1000
            Click
            Sleep, 1000
            ; click + to upgrade
            MouseMove, 1021, 836
            Sleep, 1000
            Click
            Sleep, 1000
            BigClose()
            ; click to save
            MouseMove, 1543, 927
            Sleep, 1000
            Click
            Sleep, 1000
            BigClose()
            Return

        PowerLE770:
            MouseMove, 814, 583
            Sleep, 1000
            Click
            Sleep, 1000
            ; click + to upgrade
            MouseMove, 1021, 836
            Sleep, 1000
            Click
            Sleep, 1000
            BigClose()
            ; click to save
            MouseMove, 1543, 927
            Sleep, 1000
            Click
            Sleep, 1000
            BigClose()
            Return

        PowerLB770:
            MouseMove, 1120, 580
            Sleep, 1000
            Click
            Sleep, 1000
            ; click + to upgrade
            MouseMove, 1021, 836
            Sleep, 1000
            Click
            Sleep, 1000
            BigClose()
            ; click to save
            MouseMove, 1543, 927
            Sleep, 1000
            Click
            Sleep, 1000
            BigClose()
            Return

        Fate800:
            MouseMove, 966, 847
            Sleep, 1000
            Click
            Sleep, 1000
            ; click + to upgrade
            MouseMove, 1021, 836
            Sleep, 1000
            Click
            Sleep, 1000
            BigClose()
            ; click to save
            MouseMove, 1543, 927
            Sleep, 1000
            Click
            Sleep, 1000
            BigClose()
            Return
    }