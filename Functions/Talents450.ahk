; Talents450.ahk

#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\MainMenu.ahk

UpgradeTalents450(){
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
        Send, {WheelUp}
        Sleep, 100
    }
    Sleep, 1000
    ; check first dropdown selection
    GuiControlGet, SelectedItem, , Talents450,
       If (SelectedItem = "Don't Upgrade Talents (0-450 Talent Points)"){
            Return
        } Else {
            GuiControlGet, SelectedItem, ,Talents450,
            If (SelectedItem = "All Main Attributes(1)"){
                Goto, AllMain1
            } Else {
                GuiControlGet, SelectedItem, ,Talents450,
                If (SelectedItem = "Leadership(3)"){                    
                    Goto, Lead3
                } Else {
                    GuiControlGet, SelectedItem, ,Talents450,
                    If (SelectedItem = "Guardian Power(3)"){
                        Goto, Guard3
                  } Else {
                        GuiControlGet, SelectedItem, ,Talents450,
                        If (SelectedItem = "Team Bonus(3)"){
                            Goto, Team3
                      } Else {
                            GuiControlGet, SelectedItem, ,Talents450,
                            If (SelectedItem = "Leader-Auto Abilities(10)"){
                                Goto, LeadAA10
                           } Else {
                                GuiControlGet, SelectedItem, ,Talents450,
                                If (SelectedItem = "Attack Speed(15)"){
                                    Goto, Speed15
                                } Else {
                                    GuiControlGet, SelectedItem, ,Talents450,
                                    If (SelectedItem = "Trainer Skills(15)"){
                                        Goto, Trainer15
                                    } Else {
                                        GuicontrolGet, SelectedItem, ,Talents450,
                                        If (SelectedItem = "Critical Chance(15)"){
                                            Goto, CritC15
                                        } Else {
                                            GuiControlGet, SelectedItem, ,Talents450,
                                            If (SelectedItem = "Party - Auto Abilities(20)"){
                                                Goto, PartyAA20
                                            } Else {
                                                GuiControlGet, SelectedItem, ,Talents450,
                                                If (SelectedItem = "Dodge(25)"){
                                                    Goto, Dodge25
                                                } Else {
                                                    GuiControlGet, SelectedItem, ,Talents450,
                                                    If (SelectedItem = "Critical Damage(25)"){
                                                        Goto, CritD25
                                                    } Else {
                                                        GuiControlGet, SelectedItem, ,Talents450,
                                                        If (SelectedItem = "Librarian(30)"){
                                                            Goto, Lib30
                                                        } Else {
                                                            GuiControlGet, SelectedItem, ,Talents450,
                                                            If (SelectedItem = "Meteorite Hunter(30)"){
                                                                Goto, Met30
                                                            } Else {
                                                                GuiControlGet, SelectedItem, ,Talents450,
                                                                If (SelectedItem = "Expeditioner(30)"){
                                                                    Goto, Exp30
                                                                } Else {
                                                                    GuiControlGet, SelectedItem, ,Talents450,
                                                                    If (SelectedItem = "Powerless Enemy(35)"){
                                                                        Goto, PowerlessE35
                                                                    } Else {
                                                                        GuiControlGet, SelectedItem, ,Talents450,
                                                                        If (SelectedItem = "Powerless Boss(35)"){
                                                                            Goto, PowerLB35
                                                                        } Else {
                                                                            GuiControlGet, SelectedItem, ,Talents450,
                                                                            If (SelectedItem = "Weaklings(40)"){
                                                                                Goto, Weak40
                                                                            } Else {
                                                                                GuiControlGet, SelectedItem, ,Talents450,
                                                                                If (SelectedItem = "Expose Weakness(40)"){
                                                                                    Goto, ExWeak40
                                                                                } Else {
                                                                                    GuiControlGet, SelectedItem, ,Talents450,
                                                                                    If (SelectedItem = "Ancient Knowledge(45)"){
                                                                                        Goto, AncientK45
                                                                                    } Else {
                                                                                        GuiControlGet, SelectedItem, ,Talents450,
                                                                                        If (SelectedItem = "Raining Gold(60)"){
                                                                                            Goto, Gold60
                                                                                        } Else {
                                                                                            GuiControlGet, SelectedItem, ,Talents450,
                                                                                            If (SelectedItem = "Coworkers(60)"){
                                                                                                Goto, CoWork60
                                                                                            } Else {
                                                                                                GuiControlGet, SelectedItem, ,Talents450,
                                                                                                If (SelectedItem = "Twin Dragons(70)"){
                                                                                                    Goto, Dragon70
                                                                                                } Else {
                                                                                                    GuiControlGet, SelectedItem, ,Talents450,
                                                                                                    If (SelectedItem = "Attack Speed(80)"){
                                                                                                        Goto, Speed80
                                                                                                    } Else {
                                                                                                        GuiControlGet, SelectedItem, ,Talents450,
                                                                                                        If (SelectedItem = "Critical Chance(80)"){
                                                                                                            Goto, CritC80
                                                                                                        } Else {
                                                                                                            GuiControlGet, SelectedItem, ,Talents450,
                                                                                                            If (SelectedItem = "Battle Cry(100)"){
                                                                                                                Goto, BC100
                                                                                                            } Else {
                                                                                                                GuiControlGet, SelectedItem, ,Talents450,
                                                                                                                If (SelectedItem = "Dodge(120)"){
                                                                                                                    Goto, Dodge120
                                                                                                                } Else {
                                                                                                                    GuiControlGet, SelectedItem, ,Talents450,
                                                                                                                    If (SelectedItem = "Critical Damage(120)"){
                                                                                                                        Goto, CritD120
                                                                                                                    } Else  {
                                                                                                                        GuiControlGet, SelectedItem, ,Talents450,
                                                                                                                        If (SelectedItem = "Powerless Enemy(140)"){
                                                                                                                            Goto, PowerLE140
                                                                                                                        } Else {
                                                                                                                            GuiControlGet, SelectedItem, ,Talents450,
                                                                                                                            If (SelectedItem = "Powerless Boss(140)"){
                                                                                                                                Goto, PowerLB140
                                                                                                                            } Else {
                                                                                                                                GuiControlGet, SelectedItem, ,Talents450,
                                                                                                                                If (SelectedItem = "Alchemy(160)"){
                                                                                                                                    Goto, Alch160
                                                                                                                                } Else {
                                                                                                                                    GuiControlGet, SelectedItem, ,Talents450,
                                                                                                                                    If (SelectedItem = "Weaklings(180)"){
                                                                                                                                        Goto, Weak180
                                                                                                                                    } Else {
                                                                                                                                        GuiControlGet, SelectedItem, ,Talents450,
                                                                                                                                        If (SelectedItem = "Expose Weakness(180)"){
                                                                                                                                            Goto, ExposeW180
                                                                                                                                        } Else {
                                                                                                                                            GuiControlGet, SelectedItem, ,Talents450,
                                                                                                                                            If (SelectedItem = "All Main Attributes(200)"){
                                                                                                                                              Goto, AllMain200
                                                                                                                                            } Else {
                                                                                                                                                GuiControlGet, SelectedItem, ,Talents450,
                                                                                                                                                If (SelectedItem = "Leadership(250)"){
                                                                                                                                                    Goto, Lead250
                                                                                                                                                } Else {
                                                                                                                                                    GuiControlGet, SelectedItem, ,Talents450,
                                                                                                                                                    If (SelectedItem = "Guardian Power(250)"){
                                                                                                                                                        Goto, GuardP250
                                                                                                                                                    } Else {
                                                                                                                                                        GuiControlGet, SelectedItem, ,Talents450,
                                                                                                                                                        If (SelectedItem = "Team Bonus(250)"){
                                                                                                                                                            Goto, Team250
                                                                                                                                                        } Else {
                                                                                                                                                            GuiControlGet, SelectedItem, ,Talents450,
                                                                                                                                                            If (SelectedItem = "Twin Dragons(300)"){
                                                                                                                                                                Goto, Dragon300
                                                                                                                                                            } Else {
                                                                                                                                                                GuiControlGet, SelectedItem, , Talents450,
                                                                                                                                                                If (SelectedItem = "Alchemy(350)"){
                                                                                                                                                                    Goto, Alch350
                                                                                                                                                                } Else {
                                                                                                                                                                    GuiControlGet, SelectedItem, , Talents450,
                                                                                                                                                                    If (SelectedItem = "Librarian(350)"){
                                                                                                                                                                        Goto, Lib350
                                                                                                                                                                    } Else {
                                                                                                                                                                        GuiControlGet, SelectedItem, , Talents450,
                                                                                                                                                                        If (SelectedItem = "Battle Cry(400)"){
                                                                                                                                                                            Goto, BC400
                                                                                                                                                                        } Else {
                                                                                                                                                                            GuiControlGet, SelectedItem, , Talents450,
                                                                                                                                                                            If (SelectedItem = "Powerless Enemy(450)"){
                                                                                                                                                                                Goto, PowerLE450
                                                                                                                                                                            } Else {
                                                                                                                                                                                GuiControlGet, SelectedItem, , Talents450,
                                                                                                                                                                                If (SelectedItem = "Powerless Boss(450)"){
                                                                                                                                                                                    Goto, PowerLB450
                                                                                                                                                                                } Else {
                                                                                                                                                                                    Return
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
        AllMain1:
            ; click talent
            MouseMove, 961, 318
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

        Lead3:
            MouseMove, 646, 584
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
        
        Guard3:
            MouseMove, 960, 580
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
    
        Team3:
            MouseMove, 1279, 585
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
        
        LeadAA10:
            MouseMove, 961, 549
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

        Speed15:
            Loop, 7{
                Send, {WheelDown}
                Sleep, 100
            }
            MouseMove, 643, 902
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

        Trainer15:
            Loop, 7{
                Send, {WheelDown}
                Sleep, 100
            }
            MouseMove, 963, 883
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

        CritC15:
            Loop, 7{
                Send, {WheelDown}
                Sleep, 100
            }
            MouseMove, 1271, 889
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

        PartyAA20:
            Loop, 15{
                Send, {WheelDown}
                Sleep, 100
            }
            MouseMove, 961, 894
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

        Dodge25:
            Loop, 24{
                Send, {WheelDown}
                Sleep, 100
            }
            MouseMove, 804, 878
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

        CritD25:
            Loop, 24{
                Send, {WheelDown}
                Sleep, 100
            }
            MouseMove, 1113, 872
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

        Lib30:
            Loop, 32{
                Send, {WheelDown}
                Sleep, 100
            }
            MouseMove, 646, 875
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
            
        Met30:
            Loop, 32{
                Send, {WheelDown}
                Sleep, 100
            }
            MouseMove, 963, 871
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

        Exp30:
            Loop, 32{
                Send, {WheelDown}
                Sleep, 100
            }
            MouseMove, 1276, 884
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

        PowerlessE35:
            Loop, 40{
                Send, {WheelDown}
                Sleep, 100
            }
            MouseMove, 806, 888
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

        PowerLB35:
            Loop, 40{
                Send, {WheelDown}
                Sleep, 100
            }
            MouseMove, 1118, 888
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

        Weak40:
            Loop, 48{
                Send, {WheelDown}
                Sleep, 100
            }
            MouseMove, 806, 891
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

        ExWeak40:
            Loop, 48{
                Send, {WheelDown}
                Sleep, 100
            }
            MouseMove, 1117, 897
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

        AncientK45:
            Loop, 57{
                Send, {WheelDown}
                Sleep, 100
            }
            MouseMove, 960, 870 
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

        Gold60:
            Loop, 65{
                Send, {WheelDown}
                Sleep, 100
            }
            MouseMove, 808, 874
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

        CoWork60:
            Loop, 65{
                Send, {WheelDown}
                Sleep, 100
            }
            MouseMove, 1118, 877
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

        Dragon70:
            Loop, 73{
                Send, {WheelDown}
                Sleep, 100
            }
            MouseMove, 964, 885
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

        Speed80:
            Loop, 81{
                Send, {WheelDown}
                Sleep, 100
            }
            MouseMove, 807, 894
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

        CritC80:
            Loop, 81{
                Send, {WheelDown}
                Sleep, 100
            }
            MouseMove, 1121, 897
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

        BC100:
            Loop, 90{
                Send, {WheelDown}
                Sleep, 100
            }
            MouseMove, 965, 875
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

        Dodge120:
            Loop, 98{
                Send, {WheelDown}
                Sleep, 100
            }
            MouseMove, 799, 870
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

        CritD120:
            Loop, 98{
                Send, {WheelDown}
                Sleep, 100
            }
            MouseMove, 1122, 881
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

        PowerLE140:
            Loop, 106{
                Send, {WheelDown}
                Sleep, 100
            }
            MouseMove, 803, 885
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

        PowerLB140:
            Loop, 106{
                Send, {WheelDown}
                Sleep, 100
            }
            MouseMove, 1130, 893
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

        Alch160:
            Loop, 114{
                Send, {WheelDown}
                Sleep, 100
            }
            MouseMove, 968, 900
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

        Weak180:
            Loop, 122{
                Send, {WheelDown}
                Sleep, 100
            }
            MouseMove, 802, 897
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

        ExposeW180:
            Loop, 122{
                Send, {WheelDown}
                Sleep, 100
            }
            MouseMove, 1123, 907
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

        AllMain200:
            Loop, 130{
                Send, {WheelDown}
                Sleep, 100
            }
            MouseMove, 963, 922
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

        Lead250:
            Loop, 139{
                Send, {WheelDown}
                Sleep, 100
            }
            MouseMove, 659, 887
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

        GuardP250:
            Loop, 139{
                Send, {WheelDown}
                Sleep, 100
            }
            MouseMove, 965, 883
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

        Team250:
            Loop, 139{
                Send, {WheelDown}
                Sleep, 100
            }
            MouseMove, 1286, 893
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

        Dragon300:
            Loop, 147{
                Send, {WheelDown}
                Sleep, 100
            }
            MouseMove, 967, 897
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

        Alch350:
            Loop, 155{
                Send, {WheelDown}
                Sleep, 100
            }
            MouseMove, 813, 900
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

        Lib350:
            Loop, 155{
                Send, {WheelDown}
                Sleep, 100
            }
            MouseMove, 1132, 905
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

        BC400:
            Loop, 164{
                Send, {WheelDown}
                Sleep, 100
            }
            MouseMove, 964, 879
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

        PowerLE450:
            Loop, 172{
                Send, {WheelDown}
                Sleep, 100
            }
            MouseMove, 813, 883
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

        PowerLB450:
            Loop, 172{
                Send, {WheelDown}
                Sleep, 100
            }
            MouseMove, 1125, 883
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