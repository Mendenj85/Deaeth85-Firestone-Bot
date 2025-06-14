; WMUpgrade.ahk

#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\WMBlueprintsOnly.ahk
#Include Functions\subFunctions\WMLevelOnly.ahk
#Include Functions\util.ahk

WMUpgrade(){
    ControlFocus,, ahk_exe Firestone.exe
    ; check for which war machine to upgrade by position
    GuiControlGet, SelectedItem, ,UpgradeWM
    If (SelectedItem = "Upgrade Aegis"){
        MsgBox, , WMUpgrade, Selected war machine: Aegis., 1.5
        Goto, Aegis
    } Else If (SelectedItem = "Upgrade Cloudfist"){
        MsgBox, , WMUpgrade, Selected war machine: Cloudfist., 1.5
        Goto, Cloudfist
    } Else If (SelectedItem = "Upgrade Curator"){
        MsgBox, , WMUpgrade, Selected war machine: Curator., 1.5
        Goto, Curator
    } Else If (SelectedItem = "Upgrade Earthshatterer"){
        MsgBox, , WMUpgrade, Selected war machine: Earthshatterer., 1.5
        Goto, Earthshatterer
    } Else If (SelectedItem = "Upgrade Firecracker"){
        MsgBox, , WMUpgrade, Selected war machine: Firecracker., 1.5
        Goto, Firecracker
    } Else If (SelectedItem = "Upgrade Fortress"){
        MsgBox, , WMUpgrade, Selected war machine: Fortress., 1.5
        Goto, Fortress
    } Else If (SelectedItem = "Upgrade Goliath"){
        MsgBox, , WMUpgrade, Selected war machine: Goliath., 1.5
        Goto, Goliath
    } Else If (SelectedItem = "Upgrade Harvester"){
        MsgBox, , WMUpgrade, Selected war machine: Harvester., 1.5
        Goto, Harvester
    } Else If (SelectedItem = "Upgrade Hunter"){
        MsgBox, , WMUpgrade, Selected war machine: Hunter., 1.5
        Goto, Hunter
    } Else If (SelectedItem = "Upgrade Judgement"){
        MsgBox, , WMUpgrade, Selected war machine: Judgement., 1.5
        Goto, Judgement
    } Else If (SelectedItem = "Upgrade Sentinel"){
        MsgBox, , WMUpgrade, Selected war machine: Sentinel., 1.5
        Goto, Sentinel
    } Else If (SelectedItem = "Upgrade Talos"){
        MsgBox, , WMUpgrade, Selected war machine: Talos., 1.5
        Goto, Talos
    } Else If (SelectedItem = "Upgrade Thunderclap"){
        MsgBox, , WMUpgrade, Selected war machine: Thunderclap., 1.5
        Goto, Thunderclap
    }

    ; All PixelSearch/MouseMove below are now resolution independent
    Aegis:
        PixelSearchRel(FoundX, FoundY, 248, 894, 1878, 1020, 0xA49789, 3)
        If (ErrorLevel = 0){
            MoveMouseRel(FoundX, FoundY)
            Sleep, 1000
            Click
            Sleep, 1000
        }
        GuiControlGet, SelectedItem, ,WMOptions
        If (SelectedItem = "Level Only"){
            LevelOnly()
            Return
        } Else If (SelectedItem = "Blueprints Only"){
            BPOnly()
            Return
        } Else If (SelectedItem = "Level and Blueprints"){
            LevelOnly()
            BPOnly()
            Return
        }

    Cloudfist:
        PixelSearchRel(FoundX, FoundY, 248, 894, 1878, 1020, 0xF7661c, 3)
        If (ErrorLevel = 0){
            MoveMouseRel(FoundX, FoundY)
            Sleep, 1000
            Click
            Sleep, 1000
        }
        GuiControlGet, SelectedItem, ,WMOptions
        If (SelectedItem = "Level Only"){
            LevelOnly()
            Return
        } Else If (SelectedItem = "Blueprints Only"){
            BPOnly()
            Return
        } Else If (SelectedItem = "Level and Blueprints"){
            LevelOnly()
            BPOnly()
            Return
        }

    Curator:
        PixelSearchRel(FoundX, FoundY, 248, 894, 1878, 1020, 0x740D0B, 3)
        If (ErrorLevel = 0){
            MoveMouseRel(FoundX, FoundY)
            Sleep, 1000
            Click
            Sleep, 1000
        }
        GuiControlGet, SelectedItem, ,WMOptions
        If (SelectedItem = "Level Only"){
            LevelOnly()
            Return
        } Else If (SelectedItem = "Blueprints Only"){
            BPOnly()
            Return
        } Else If (SelectedItem = "Level and Blueprints"){
            LevelOnly()
            BPOnly()
            Return
        }

    Earthshatterer:
        PixelSearchRel(FoundX, FoundY, 248, 894, 1878, 1020, 0x3B4F98, 3)
        If (ErrorLevel = 0){
            MoveMouseRel(FoundX, FoundY)
            Sleep, 1000
            Click
            Sleep, 1000
        }
        GuiControlGet, SelectedItem, ,WMOptions
        If (SelectedItem = "Level Only"){
            LevelOnly()
            Return
        } Else If (SelectedItem = "Blueprints Only"){
            BPOnly()
            Return
        } Else If (SelectedItem = "Level and Blueprints"){
            LevelOnly()
            BPOnly()
            Return
        }

    Firecracker:
        PixelSearchRel(FoundX, FoundY, 248, 894, 1878, 1020, 0xEA4019, 3)
        If (ErrorLevel = 0){
            MoveMouseRel(FoundX, FoundY)
            Sleep, 1000
            Click
            Sleep, 1000
        }
        GuiControlGet, SelectedItem, ,WMOptions
        If (SelectedItem = "Level Only"){
            LevelOnly()
            Return
        } Else If (SelectedItem = "Blueprints Only"){
            BPOnly()
            Return
        } Else If (SelectedItem = "Level and Blueprints"){
            LevelOnly()
            BPOnly()
            Return
        }

    Fortress:
        PixelSearchRel(FoundX, FoundY, 248, 894, 1878, 1020, 0x275094, 3)
        If (ErrorLevel = 0){
            MoveMouseRel(FoundX, FoundY)
            Sleep, 1000
            Click
            Sleep, 1000
        }
        GuiControlGet, SelectedItem, ,WMOptions
        If (SelectedItem = "Level Only"){
            LevelOnly()
            Return
        } Else If (SelectedItem = "Blueprints Only"){
            BPOnly()
            Return
        } Else If (SelectedItem = "Level and Blueprints"){
            LevelOnly()
            BPOnly()
            Return
        }

    Goliath:
        PixelSearchRel(FoundX, FoundY, 248, 894, 1878, 1020, 0x702815, 3)
        If (ErrorLevel = 0){
            MoveMouseRel(FoundX, FoundY)
            Sleep, 1000
            Click
            Sleep, 1000
        }
        GuiControlGet, SelectedItem, ,WMOptions
        If (SelectedItem = "Level Only"){
            LevelOnly()
            Return
        } Else If (SelectedItem = "Blueprints Only"){
            BPOnly()
            Return
        } Else If (SelectedItem = "Level and Blueprints"){
            LevelOnly()
            BPOnly()
            Return
        }

    Harvester:
        PixelSearchRel(FoundX, FoundY, 248, 894, 1878, 1020, 0x010BAF, 3)
        If (ErrorLevel = 0){
            MoveMouseRel(FoundX, FoundY)
            Sleep, 1000
            Click
            Sleep, 1000
        }
        GuiControlGet, SelectedItem, ,WMOptions
        If (SelectedItem = "Level Only"){
            LevelOnly()
            Return
        } Else If (SelectedItem = "Blueprints Only"){
            BPOnly()
            Return
        } Else If (SelectedItem = "Level and Blueprints"){
            LevelOnly()
            BPOnly()
            Return
        }

    Hunter:
        PixelSearchRel(FoundX, FoundY, 248, 894, 1878, 1020, 0x6CB932, 3)
        If (ErrorLevel = 0){
            MoveMouseRel(FoundX, FoundY)
            Sleep, 1000
            Click
            Sleep, 1000
        }
        GuiControlGet, SelectedItem, ,WMOptions
        If (SelectedItem = "Level Only"){
            LevelOnly()
            Return
        } Else If (SelectedItem = "Blueprints Only"){
            BPOnly()
            Return
        } Else If (SelectedItem = "Level and Blueprints"){
            LevelOnly()
            BPOnly()
            Return
        }

    Judgement:
        PixelSearchRel(FoundX, FoundY, 248, 894, 1878, 1020, 0x971DAB, 3)
        If (ErrorLevel = 0){
            MoveMouseRel(FoundX, FoundY)
            Sleep, 1000
            Click
            Sleep, 1000
        }
        GuiControlGet, SelectedItem, ,WMOptions
        If (SelectedItem = "Level Only"){
            LevelOnly()
            Return
        } Else If (SelectedItem = "Blueprints Only"){
            BPOnly()
            Return
        } Else If (SelectedItem = "Level and Blueprints"){
            LevelOnly()
            BPOnly()
            Return
        }

    Sentinel:
        PixelSearchRel(FoundX, FoundY, 248, 894, 1878, 1020, 0xC2EFD9, 3)
        If (ErrorLevel = 0){
            MoveMouseRel(FoundX, FoundY)
            Sleep, 1000
            Click
            Sleep, 1000
        }
        GuiControlGet, SelectedItem, ,WMOptions
        If (SelectedItem = "Level Only"){
            LevelOnly()
            Return
        } Else If (SelectedItem = "Blueprints Only"){
            BPOnly()
            Return
        } Else If (SelectedItem = "Level and Blueprints"){
            LevelOnly()
            BPOnly()
            Return
        }

    Talos:
        PixelSearchRel(FoundX, FoundY, 248, 894, 1878, 1020, 0x226B10, 3)
        If (ErrorLevel = 0){
            MoveMouseRel(FoundX, FoundY)
            Sleep, 1000
            Click
            Sleep, 1000
        }
        GuiControlGet, SelectedItem, ,WMOptions
        If (SelectedItem = "Level Only"){
            LevelOnly()
            Return
        } Else If (SelectedItem = "Blueprints Only"){
            BPOnly()
            Return
        } Else If (SelectedItem = "Level and Blueprints"){
            LevelOnly()
            BPOnly()
            Return
        }

    Thunderclap:
        PixelSearchRel(FoundX, FoundY, 248, 894, 1878, 1020, 0x3EE0EE, 3)
        If (ErrorLevel = 0){
            MoveMouseRel(FoundX, FoundY)
            Sleep, 1000
            Click
            Sleep, 1000
        }
        GuiControlGet, SelectedItem, ,WMOptions
        If (SelectedItem = "Level Only"){
            LevelOnly()
            Return
        } Else If (SelectedItem = "Blueprints Only"){
            BPOnly()
            Return
        } Else If (SelectedItem = "Level and Blueprints"){
            LevelOnly()
            BPOnly()
            Return
        }
    }
