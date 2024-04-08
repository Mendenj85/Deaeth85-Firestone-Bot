﻿; Deaeth85 Firestone Bot.ahk

#SingleInstance Force
#Include Gui.ahk
#Include Functions\Alchemist.ahk
#Include Functions\Arena.ahk
#Include Functions\CheckMail.ahk
#Include Functions\ClaimBeer.ahk
#Include Functions\ClaimCampaign.ahk
#Include Functions\ClaimEngineer.ahk
#Include Functions\ClaimEvents.ahk
#Include Functions\ClaimOracle.ahk
#Include Functions\Firestone.ahk
#Include Functions\Guardian.ahk
#Include Functions\Guild.ahk
#Include Functions\HeroUpgrade.ahk
#Include Functions\LiberationMissions.ahk
#Include Functions\MapRedeem.ahk
#Include Functions\MapStart.ahk
#Include Functions\OpenChests.ahk
#Include Functions\PTree.ahk
#Include Functions\Quests.ahk
#Include Functions\SellExotic.ahk
#Include Functions\Shop.ahk
#Include Functions\WMUpgrade.ahk
#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\GetColor.ahk
#Include Functions\subFunctions\GoMap.ahk
#Include Functions\subFunctions\MainMenu.ahk
#Include Functions\subFunctions\MapClose.ahk

global Color
SetWorkingDir %A_ScriptDir%
#NoEnv
SetBatchLines, -1

; initialize the last execution times
lastExecutionTimeArena := 0
lastExecutionTimeShop := 0
lastExecutionTimeLiberation := 0
lastExecutionTimeOracle := 0

; start of main script
loop:
    {
    ControlFocus,, ahk_exe Firestone.exe
    GetColor()
    GuiControlGet, Checked, , Events,
        If (Checked = 1){
            ClaimEvents()
        }
    ClaimCampaign()
    ClaimBeer()
    ; check if either sell exotic is checked (sell all check is internal to sell exotic script)
    GuiControlGet, Checked, , SellEx,
        If (Checked = 1){
            SellExotic()
        }
    GuiControlGet, Checked, , NoEng,
        If (Checked = 1){
            Goto, Guard
        }
    ClaimEngineer()
    Guard:
    Guardian()
    ; check if Claim Daily Quests is checked
    GuiControlGet, Checked, , Daily,
        If (Checked = 1){
            ClaimDaily()
        }
    ; check if Claim Weekly Quests is checked
    GuiControlGet, Checked, , Weekly,
        If (Checked = 1){
            ClaimWeekly()
        }
    GuiControlGet, Checked, , Shop,
        If (Checked=1){
        ; get current time
            currentTime := A_TickCount
            ;check if it's been 24 hours since last execution
            If (lastExecutionTimeShop <= 0){
                Shop()
                lastExecutionTimeShop := currentTime
            } Else {
                If (currentTime - lastExecutionTimeArena >= 24 * 60 * 60 * 1000){
                    Shop()
                    lastExecutionTimeShop := currentTime
                }
            }
        }   
    ; check if Check Mail is checked
    GuiControlGet, Checked, , Mail
        If (Checked = 1){
                CheckMail()
        }
    ; check if Open Chests is checked
    GuiControlGet, Checked, , Chests,
        If (Checked = 1){
            OpenChests()
        } 
    ;check if Upgrade Blessings is checked
    GuiControlGet, Checked, , Bless,
        If (Checked = 1){
            OpenBlessChests()
        }
    ClaimOracle()
    ; check if option to level WM's is chosen
    GuiControlGet, SelectedItem, ,UpgradeWM,
        If (SelectedItem != "Don't Upgrade WM's"){
            WMUpgrade()
        }
    GuiControlGet, Checked, , NoGuild,
        If (Checked = 1){
            Goto, Arena
        }
    Guild()
    Arena:
    GuiControlGet, Checked, , PVP,
        If (Checked = 1){
            ; get current time
            currentTime := A_TickCount
            ;check if it's been 24 hours since last execution
            If (lastExecutionTimeArena <= 0){
                Arena()
                lastExecutionTimeArena := currentTime
            } Else {
                If (currentTime - lastExecutionTimeArena >= 24 * 60 * 60 * 1000){
                    Arena()
                    lastExecutionTimeArena := currentTime
                }
            }
        }   
    ; check if we are skipping alchemy
    GuiControlGet, Checked, , Alch, 
        If (Checked = 1){
            Goto, ResearchStart
        } Else {
            Alchemist()
        }
    ResearchStart:
    ; check if we are skipping research
    GuiControlGet, Checked, , Research,
        If (Checked = 1){
            Goto, MapStartUp
        } Else {
            GoFirestone()
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