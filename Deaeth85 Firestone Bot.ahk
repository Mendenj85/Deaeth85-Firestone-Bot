﻿; Generated by Auto-GUI 3.0.1
#SingleInstance Force
#Include Gui.ahk
#Include Functions\Alchemist.ahk
#Include Functions\ClaimBeer.ahk
#Include Functions\ClaimCampaign.ahk
#Include Functions\ClaimEngineer.ahk
#Include Functions\ClaimOracle.ahk
#Include Functions\Firestone.ahk
#Include Functions\Guardian.ahk
#Include Functions\Guild.ahk
#Include Functions\HeroUpgrade.ahk
#Include Functions\MapRedeem.ahk
#Include Functions\MapStart.ahk
#Include Functions\OpenChests.ahk
#Include Functions\PTree.ahk
#Include Functions\Quests.ahk
#Include Functions\SellExotic.ahk
#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\GetColor.ahk
#Include Functions\subFunctions\GoMap.ahk
#Include Functions\subFunctions\MainMenu.ahk
#Include Functions\subFunctions\MapClose.ahk
global Color
SetWorkingDir %A_ScriptDir%
#NoEnv
SetBatchLines, -1

; start of main script
ControlFocus,, ahk_exe Firestone.exe
loop:{
    GetColor()
    ClaimCampaign()
    ClaimBeer()
    ; check if either sell exotic is checked (sell all check is internal to sell exotic script)
    GuiControlGet, Checked, , SellEx,
        if (Checked = 1){
            SellExotic()
            ClaimEngineer()
            Guardian()
        }
        ; check if Claim Daily Quests is checked
        GuiControlGet, Checked, , Daily,
            if (Checked = 1){
                ClaimDaily()
            }
        ; check if Claim Weekly Quests is checked
        GuiControlGet, Checked, , Weekly,
            if (Checked = 1){
                ClaimWeekly()
            }
        ; check if Open Chests is checked
        GuiControlGet, Checked, , Chests,
            if (Checked = 1){
                OpenChests()
            } Else {
            ;check if Upgrade Blessings is checked
            GuiControlGet, Checked, , Bless,
                if (Checked = 1){
                    OpenBlessChests()
                }
            }
        ClaimOracle()
        Guild()   
        ; check if we are skipping alchemy
        GuiControlGet, Checked, , Alch, 
            if (Checked = 1){
                Goto, ResearchStart
            } Else {
                Alchemist()
            }
        ResearchStart:
        ; check if we are skipping research
        GuiControlGet, Checked, , Research,
            if (Checked = 1){
                Goto, MapStartUp
            } Else {
                GoFirestone()
                FirestoneTest()
            }
        MapStartUp:
        GoMap()
        MapRedeem()
        HeroUpgrade()
        MouseMove, 947, 755
        Sleep, 60000 ;wait 1 minute then repeat
        Goto, Loop
    }

GuiEscape:
GuiClose:
ExitApp
$Esc:: ExitApp  