; WMUpgrade.ahk

#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\MainMenu.ahk
#Include Functions\subFunctions\WMBlueprintsOnly.ahk
#Include Functions\subFunctions\WMLevelOnly.ahk

WMUpgrade(){
    ControlFocus,, ahk_exe Firestone.exe
    MainMenu()
    ; check for engineer notification on home screen
    PixelSearch, FoundX, FoundY, 5, 221, 103, 685, 0x9FA1A2, 5, Fast RGB
    If (ErrorLevel = 0){
        MouseMove, FoundX, FoundY
        Sleep, 1000
        Click
        Sleep, 1500
    } Else {
        Return
    }
    ; check for which war machine to upgrade by position
    GuiControlGet, SelectedItem, ,UpgradeWM,
    If (SelectedItem = "Upgrade Aegis"){
        Goto, Aegis
    } Else {
        GuiControlGet, SelectedItem, ,UpgradeWM,
        If (SelectedItem = "Upgrade Cloudfist"){
            Goto, Cloudfist
        } Else {
            GuiControlGet, SelectedItem, ,UpgradeWM,
            If (SelectedItem = "Upgrade Curator"){
                Goto, Curator
            } Else {
                GuiControlGet, SelectedItem, ,UpgradeWM,
                If (SelectedItem = "Upgrade Earthshatterer"){
                    Goto, Earthshatterer
                } Else {
                    GuiControlGet, SelectedItem, ,UpgradeWM,
                    If (SelectedItem = "Upgrade Firecracker"){
                        Goto, Firecracker
                    } Else {
                        GuiControlGet, SelectedItem, ,UpgradeWM,
                        If (SelectedItem = "Upgrade Fortress"){
                            Goto, Fortress
                        } Else {
                            GuiControlGet, SelectedItem, ,UpgradeWM,
                            If (SelectedItem = "Upgrade Goliath"){
                                Goto, Goliath
                            } Else {
                                GuiControlGet, SelectedItem, ,UpgradeWM,
                                If (SelectedItem = "Upgrade Harvester"){
                                    Goto, Harvester
                                } Else {
                                    GuiControlGet, SelectedItem, ,UpgradeWM,
                                    If (SelectedItem = "Upgrade Hunter"){
                                        Goto, Hunter
                                    } Else {
                                        GuiControlGet, SelectedItem, ,UpgradeWM,
                                        If (SelectedItem = "Upgrade Judgement"){
                                            Goto, Judgement
                                        } Else {
                                            GuiControlGet, SelectedItem, ,UpgradeWM,
                                            If (SelectedItem = "Upgrade Sentinel"){
                                                Goto, Sentinel
                                            } Else {
                                                GuiControlGet, SelectedItem, ,UpgradeWM,
                                                If (SelectedItem = "Upgrade Talos"){
                                                    Goto, Talos
                                                } Else {
                                                    GuiControlGet, SelectedItem, ,UpgradeWM,
                                                    If (SelectedItem = "Upgrade Thunderclap"){
                                                        Goto, Thunderclap
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

    Aegis:
        ; select war machine
        PixelSearch, FoundX, FoundY, 248, 894, 1878, 1020, 0xA49789, 3, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, FoundX, FoundY
            Sleep, 1000
            Click
            Sleep, 1000
        }
        GuiControlGet, SelectedItem, ,WMOptions,
        If (SelectedItem = "Level Only"){
            LevelOnly()
            BigClose()
            Return
        } Else {
            GuiControlGet, SelectedItem, ,WMOptions,
            If (SelectedItem = "Blueprints Only"){
                BPOnly()
                BigClose()
                Return
            } Else {
                GuiControlGet, SelectedItem, ,WMOptions,
                If (SelectedItem = "Level and Blueprints"){
                    LevelOnly()
                    BPOnly()
                    BigClose()
                    Return
                }
            }
        }
        
    Cloudfist:
        ; select war machine
        PixelSearch, FoundX, FoundY, 248, 894, 1878, 1020, 0xF7661c, 3, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, FoundX, FoundY
            Sleep, 1000
            Click
            Sleep, 1000
        }
        GuiControlGet, SelectedItem, ,WMOptions,
        If (SelectedItem = "Level Only"){
            LevelOnly()
            BigClose()
            Return
        } Else {
            GuiControlGet, SelectedItem, ,WMOptions,
            If (SelectedItem = "Blueprints Only"){
                BPOnly()
                BigClose()
                Return
            } Else {
                GuiControlGet, SelectedItem, ,WMOptions,
                If (SelectedItem = "Level and Blueprints"){
                    LevelOnly()
                    BPOnly()
                    BigClose()
                    Return
                }
            }
        }
    Curator:
        ; select war machine
        PixelSearch, FoundX, FoundY, 248, 894, 1878, 1020, 0x740D0B, 3, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, FoundX, FoundY
            Sleep, 1000
            Click
            Sleep, 1000
        }
        GuiControlGet, SelectedItem, ,WMOptions,
        If (SelectedItem = "Level Only"){
            LevelOnly()
            BigClose()
            Return
        } Else {
            GuiControlGet, SelectedItem, ,WMOptions,
            If (SelectedItem = "Blueprints Only"){
                BPOnly()
                BigClose()
                Return
            } Else {
                GuiControlGet, SelectedItem, ,WMOptions,
                If (SelectedItem = "Level and Blueprints"){
                    LevelOnly()
                    BPOnly()
                    BigClose()
                    Return
                }
            }
        }
    Earthshatterer:
        ; select war machine
        PixelSearch, FoundX, FoundY, 248, 894, 1878, 1020, 0x3B4F98, 3, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, FoundX, FoundY
            Sleep, 1000
            Click
            Sleep, 1000
        }
        GuiControlGet, SelectedItem, ,WMOptions,
        If (SelectedItem = "Level Only"){
            LevelOnly()
            BigClose()
            Return
        } Else {
            GuiControlGet, SelectedItem, ,WMOptions,
            If (SelectedItem = "Blueprints Only"){
                BPOnly()
                BigClose()
                Return
            } Else {
                GuiControlGet, SelectedItem, ,WMOptions,
                If (SelectedItem = "Level and Blueprints"){
                    LevelOnly()
                    BPOnly()
                    BigClose()
                    Return
                }
            }
        }
    Firecracker:
        ; select war machine
        PixelSearch, FoundX, FoundY, 248, 894, 1878, 1020, 0xEA4019, 3, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, FoundX, FoundY
            Sleep, 1000
            Click
            Sleep, 1000
        }
        GuiControlGet, SelectedItem, ,WMOptions,
        If (SelectedItem = "Level Only"){
            LevelOnly()
            BigClose()
            Return
        } Else {
            GuiControlGet, SelectedItem, ,WMOptions,
            If (SelectedItem = "Blueprints Only"){
                BPOnly()
                BigClose()
                Return
            } Else {
                GuiControlGet, SelectedItem, ,WMOptions,
                If (SelectedItem = "Level and Blueprints"){
                    LevelOnly()
                    BPOnly()
                    BigClose()
                    Return
                }
            }
        }
    Fortress:
        ; select war machine
        PixelSearch, FoundX, FoundY, 248, 894, 1878, 1020, 0x275094, 3, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, FoundX, FoundY
            Sleep, 1000
            Click
            Sleep, 1000
        }
        GuiControlGet, SelectedItem, ,WMOptions,
        If (SelectedItem = "Level Only"){
            LevelOnly()
            BigClose()
            Return
        } Else {
            GuiControlGet, SelectedItem, ,WMOptions,
            If (SelectedItem = "Blueprints Only"){
                BPOnly()
                BigClose()
                Return
            } Else {
                GuiControlGet, SelectedItem, ,WMOptions,
                If (SelectedItem = "Level and Blueprints"){
                    LevelOnly()
                    BPOnly()
                    BigClose()
                    Return
                }
            }
        }
    Goliath:
        ; select war machine
        PixelSearch, FoundX, FoundY, 248, 894, 1878, 1020, 0x702815, 3, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, FoundX, FoundY
            Sleep, 1000
            Click
            Sleep, 1000
        }
        GuiControlGet, SelectedItem, ,WMOptions,
        If (SelectedItem = "Level Only"){
            LevelOnly()
            BigClose()
            Return
        } Else {
            GuiControlGet, SelectedItem, ,WMOptions,
            If (SelectedItem = "Blueprints Only"){
                BPOnly()
                BigClose()
                Return
            } Else {
                GuiControlGet, SelectedItem, ,WMOptions,
                If (SelectedItem = "Level and Blueprints"){
                    LevelOnly()
                    BPOnly()
                    BigClose()
                    Return
                }
            }
        }
    Harvester:
        ; select war machine
        PixelSearch, FoundX, FoundY, 248, 894, 1878, 1020, 0x010BAF, 3, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, FoundX, FoundY
            Sleep, 1000
            Click
            Sleep, 1000
        }
        GuiControlGet, SelectedItem, ,WMOptions,
        If (SelectedItem = "Level Only"){
            LevelOnly()
            BigClose()
            Return
        } Else {
            GuiControlGet, SelectedItem, ,WMOptions,
            If (SelectedItem = "Blueprints Only"){
                BPOnly()
                BigClose()
                Return
            } Else {
                GuiControlGet, SelectedItem, ,WMOptions,
                If (SelectedItem = "Level and Blueprints"){
                    LevelOnly()
                    BPOnly()
                    BigClose()
                    Return
                }
            }
        } 
    Hunter:
        ; select war machine
        PixelSearch, FoundX, FoundY, 248, 894, 1878, 1020, 0x6CB932, 3, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, FoundX, FoundY
            Sleep, 1000
            Click
            Sleep, 1000
        }
        GuiControlGet, SelectedItem, ,WMOptions,
        If (SelectedItem = "Level Only"){
            LevelOnly()
            BigClose()
            Return
        } Else {
            GuiControlGet, SelectedItem, ,WMOptions,
            If (SelectedItem = "Blueprints Only"){
                BPOnly()
                BigClose()
                Return
            } Else {
                GuiControlGet, SelectedItem, ,WMOptions,
                If (SelectedItem = "Level and Blueprints"){
                    LevelOnly()
                    BPOnly()
                    BigClose()
                    Return
                }
            }
        } 
    Judgement:
        ; select war machine
        PixelSearch, FoundX, FoundY, 248, 894, 1878, 1020, 0x971DAB, 3, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, FoundX, FoundY
            Sleep, 1000
            Click
            Sleep, 1000
        }
        GuiControlGet, SelectedItem, ,WMOptions,
        If (SelectedItem = "Level Only"){
            LevelOnly()
            BigClose()
            Return
        } Else {
            GuiControlGet, SelectedItem, ,WMOptions,
            If (SelectedItem = "Blueprints Only"){
                BPOnly()
                BigClose()
                Return
            } Else {
                GuiControlGet, SelectedItem, ,WMOptions,
                If (SelectedItem = "Level and Blueprints"){
                    LevelOnly()
                    BPOnly()
                    BigClose()
                    Return
                }
            }
        } 
    Sentinel:
        ; select war machine
        PixelSearch, FoundX, FoundY, 248, 894, 1878, 1020, 0x28BD76, 3, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, FoundX, FoundY
            Sleep, 1000
            Click
            Sleep, 1000
        }
        GuiControlGet, SelectedItem, ,WMOptions,
        If (SelectedItem = "Level Only"){
            LevelOnly()
            BigClose()
            Return
        } Else {
            GuiControlGet, SelectedItem, ,WMOptions,
            If (SelectedItem = "Blueprints Only"){
                BPOnly()
                BigClose()
                Return
            } Else {
                GuiControlGet, SelectedItem, ,WMOptions,
                If (SelectedItem = "Level and Blueprints"){
                    LevelOnly()
                    BPOnly()
                    BigClose()
                    Return
                }
            }
        } 
    Talos:
        ; select war machine
        PixelSearch, FoundX, FoundY, 248, 894, 1878, 1020, 0x263B54, 3, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, FoundX, FoundY
            Sleep, 1000
            Click
            Sleep, 1000
        }
        GuiControlGet, SelectedItem, ,WMOptions,
        If (SelectedItem = "Level Only"){
            LevelOnly()
            BigClose()
            Return
        } Else {
            GuiControlGet, SelectedItem, ,WMOptions,
            If (SelectedItem = "Blueprints Only"){
                BPOnly()
                BigClose()
                Return
            } Else {
                GuiControlGet, SelectedItem, ,WMOptions,
                If (SelectedItem = "Level and Blueprints"){
                    LevelOnly()
                    BPOnly()
                    BigClose()
                    Return
                }
            }
        } 
    Thunderclap:
        ; select war machine
        PixelSearch, FoundX, FoundY, 248, 894, 1878, 1020, 0x3EE0EE, 3, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, FoundX, FoundY
            Sleep, 1000
            Click
            Sleep, 1000
        }
        GuiControlGet, SelectedItem, ,WMOptions,
        If (SelectedItem = "Level Only"){
            LevelOnly()
            BigClose()
            Return
        } Else {
            GuiControlGet, SelectedItem, ,WMOptions,
            If (SelectedItem = "Blueprints Only"){
                BPOnly()
                BigClose()
                Return
            } Else {
                GuiControlGet, SelectedItem, ,WMOptions,
                If (SelectedItem = "Level and Blueprints"){
                    LevelOnly()
                    BPOnly()
                    BigClose()
                    Return
                }
            }
        } 
}
