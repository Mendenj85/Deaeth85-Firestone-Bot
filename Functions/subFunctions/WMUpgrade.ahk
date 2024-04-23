; WMUpgrade.ahk

#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\WMBlueprintsOnly.ahk
#Include Functions\subFunctions\WMLevelOnly.ahk

WMUpgrade(){
    ControlFocus,, ahk_exe Firestone.ex
    ; check for which war machine to upgrade by position
    GuiControlGet, SelectedItem, ,UpgradeWM,
    If (SelectedItem = "Upgrade Aegis"){
        MsgBox, , WMUpgrade, Selected war machine: Aegis., 1.5
        Goto, Aegis
    } Else {
        GuiControlGet, SelectedItem, ,UpgradeWM,
        If (SelectedItem = "Upgrade Cloudfist"){
            MsgBox, , WMUpgrade, Selected war machine: Cloudfist., 1.5
            Goto, Cloudfist
        } Else {
            GuiControlGet, SelectedItem, ,UpgradeWM,
            If (SelectedItem = "Upgrade Curator"){
                MsgBox, , WMUpgrade, Selected war machine: Curator., 1.5
                Goto, Curator
            } Else {
                GuiControlGet, SelectedItem, ,UpgradeWM,
                If (SelectedItem = "Upgrade Earthshatterer"){
                    MsgBox, , WMUpgrade, Selected war machine: Earthshatterer., 1.5
                    Goto, Earthshatterer
                } Else {
                    GuiControlGet, SelectedItem, ,UpgradeWM,
                    If (SelectedItem = "Upgrade Firecracker"){
                        MsgBox, , WMUpgrade, Selected war machine: Firecracker., 1.5
                        Goto, Firecracker
                    } Else {
                        GuiControlGet, SelectedItem, ,UpgradeWM,
                        If (SelectedItem = "Upgrade Fortress"){
                            MsgBox, , WMUpgrade, Selected war machine: Fortress., 1.5
                            Goto, Fortress
                        } Else {
                            GuiControlGet, SelectedItem, ,UpgradeWM,
                            If (SelectedItem = "Upgrade Goliath"){
                                MsgBox, , WMUpgrade, Selected war machine: Goliath., 1.5
                                Goto, Goliath
                            } Else {
                                GuiControlGet, SelectedItem, ,UpgradeWM,
                                If (SelectedItem = "Upgrade Harvester"){
                                    MsgBox, , WMUpgrade, Selected war machine: Harvester., 1.5
                                    Goto, Harvester
                                } Else {
                                    GuiControlGet, SelectedItem, ,UpgradeWM,
                                    If (SelectedItem = "Upgrade Hunter"){
                                        MsgBox, , WMUpgrade, Selected war machine: Hunter., 1.5
                                        Goto, Hunter
                                    } Else {
                                        GuiControlGet, SelectedItem, ,UpgradeWM,
                                        If (SelectedItem = "Upgrade Judgement"){
                                            MsgBox, , WMUpgrade, Selected war machine: Judgement., 1.5
                                            Goto, Judgement
                                        } Else {
                                            GuiControlGet, SelectedItem, ,UpgradeWM,
                                            If (SelectedItem = "Upgrade Sentinel"){
                                                MsgBox, , WMUpgrade, Selected war machine: Sentinel., 1.5
                                                Goto, Sentinel
                                            } Else {
                                                GuiControlGet, SelectedItem, ,UpgradeWM,
                                                If (SelectedItem = "Upgrade Talos"){
                                                    MsgBox, , WMUpgrade, Selected war machine: Talos., 1.5
                                                    Goto, Talos
                                                } Else {
                                                    GuiControlGet, SelectedItem, ,UpgradeWM,
                                                    If (SelectedItem = "Upgrade Thunderclap"){
                                                        MsgBox, , WMUpgrade, Selected war machine: Thunderclap., 1.5
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
            Return
        } Else {
            GuiControlGet, SelectedItem, ,WMOptions,
            If (SelectedItem = "Blueprints Only"){
                BPOnly()
                Return
            } Else {
                GuiControlGet, SelectedItem, ,WMOptions,
                If (SelectedItem = "Level and Blueprints"){
                    LevelOnly()
                    BPOnly()
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
            Return
        } Else {
            GuiControlGet, SelectedItem, ,WMOptions,
            If (SelectedItem = "Blueprints Only"){
                BPOnly()
                Return
            } Else {
                GuiControlGet, SelectedItem, ,WMOptions,
                If (SelectedItem = "Level and Blueprints"){
                    LevelOnly()
                    BPOnly()
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
            Return
        } Else {
            GuiControlGet, SelectedItem, ,WMOptions,
            If (SelectedItem = "Blueprints Only"){
                BPOnly()
                Return
            } Else {
                GuiControlGet, SelectedItem, ,WMOptions,
                If (SelectedItem = "Level and Blueprints"){
                    LevelOnly()
                    BPOnly()
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
            Return
        } Else {
            GuiControlGet, SelectedItem, ,WMOptions,
            If (SelectedItem = "Blueprints Only"){
                BPOnly()
                Return
            } Else {
                GuiControlGet, SelectedItem, ,WMOptions,
                If (SelectedItem = "Level and Blueprints"){
                    LevelOnly()
                    BPOnly()
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
            Return
        } Else {
            GuiControlGet, SelectedItem, ,WMOptions,
            If (SelectedItem = "Blueprints Only"){
                BPOnly()
                Return
            } Else {
                GuiControlGet, SelectedItem, ,WMOptions,
                If (SelectedItem = "Level and Blueprints"){
                    LevelOnly()
                    BPOnly()
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
            Return
        } Else {
            GuiControlGet, SelectedItem, ,WMOptions,
            If (SelectedItem = "Blueprints Only"){
                BPOnly()
                Return
            } Else {
                GuiControlGet, SelectedItem, ,WMOptions,
                If (SelectedItem = "Level and Blueprints"){
                    LevelOnly()
                    BPOnly()
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
            Return
        } Else {
            GuiControlGet, SelectedItem, ,WMOptions,
            If (SelectedItem = "Blueprints Only"){
                BPOnly()
                Return
            } Else {
                GuiControlGet, SelectedItem, ,WMOptions,
                If (SelectedItem = "Level and Blueprints"){
                    LevelOnly()
                    BPOnly()
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
            Return
        } Else {
            GuiControlGet, SelectedItem, ,WMOptions,
            If (SelectedItem = "Blueprints Only"){
                BPOnly()
                Return
            } Else {
                GuiControlGet, SelectedItem, ,WMOptions,
                If (SelectedItem = "Level and Blueprints"){
                    LevelOnly()
                    BPOnly()
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
            Return
        } Else {
            GuiControlGet, SelectedItem, ,WMOptions,
            If (SelectedItem = "Blueprints Only"){
                BPOnly()
                Return
            } Else {
                GuiControlGet, SelectedItem, ,WMOptions,
                If (SelectedItem = "Level and Blueprints"){
                    LevelOnly()
                    BPOnly()
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
            Return
        } Else {
            GuiControlGet, SelectedItem, ,WMOptions,
            If (SelectedItem = "Blueprints Only"){
                BPOnly()
                Return
            } Else {
                GuiControlGet, SelectedItem, ,WMOptions,
                If (SelectedItem = "Level and Blueprints"){
                    LevelOnly()
                    BPOnly()
                    Return
                }
            }
        }
    Sentinel:
        ; select war machine
        PixelSearch, FoundX, FoundY, 248, 894, 1878, 1020, 0xC2EFD9, 3, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, FoundX, FoundY
            Sleep, 1000
            Click
            Sleep, 1000
        }
        GuiControlGet, SelectedItem, ,WMOptions,
        If (SelectedItem = "Level Only"){
            LevelOnly()
            Return
        } Else {
            GuiControlGet, SelectedItem, ,WMOptions,
            If (SelectedItem = "Blueprints Only"){
                BPOnly()
                Return
            } Else {
                GuiControlGet, SelectedItem, ,WMOptions,
                If (SelectedItem = "Level and Blueprints"){
                    LevelOnly()
                    BPOnly()
                    Return
                }
            }
        }
    Talos:
        ; select war machine
        PixelSearch, FoundX, FoundY, 248, 894, 1878, 1020, 0x226B10, 3, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, FoundX, FoundY
            Sleep, 1000
            Click
            Sleep, 1000
        }
        GuiControlGet, SelectedItem, ,WMOptions,
        If (SelectedItem = "Level Only"){
            LevelOnly()
            Return
        } Else {
            GuiControlGet, SelectedItem, ,WMOptions,
            If (SelectedItem = "Blueprints Only"){
                BPOnly()
                Return
            } Else {
                GuiControlGet, SelectedItem, ,WMOptions,
                If (SelectedItem = "Level and Blueprints"){
                    LevelOnly()
                    BPOnly()
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
            Return
        } Else {
            GuiControlGet, SelectedItem, ,WMOptions,
            If (SelectedItem = "Blueprints Only"){
                BPOnly()
                Return
            } Else {
                GuiControlGet, SelectedItem, ,WMOptions,
                If (SelectedItem = "Level and Blueprints"){
                    LevelOnly()
                    BPOnly()
                    Return
                }
            }
        }
    }
