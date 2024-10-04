; Deaeth85 Firestone Bot.ahk

#SingleInstance Force
#Include Gui.ahk
#Include Functions\Alchemist.ahk
#Include Functions\Arena.ahk
#Include Functions\CheckMail.ahk
#Include Functions\ClaimBeer.ahk
#Include Functions\ClaimEngineer.ahk
#Include Functions\ClaimEvents.ahk
#Include Functions\ClaimRituals.ahk
#Include Functions\ExoticMerchant.ahk
#Include Functions\Guardian.ahk
#Include Functions\Guild.ahk
#Include Functions\HeroUpgrade.ahk
#Include Functions\MapRedeem.ahk
#Include Functions\OpenChests.ahk
#Include Functions\Quests.ahk
#Include Functions\Research.ahk
#Include Functions\Shop.ahk
#Include Functions\Talents450.ahk
#Include Functions\Talents800.ahk
#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\GetColor.ahk
#Include Functions\subFunctions\GoMap.ahk
#Include Functions\subFunctions\MainMenu.ahk
#Include Functions\subFunctions\MapClose.ahk
#Include Functions\subFunctions\OpenTown.ahk

SetWorkingDir %A_ScriptDir%
#NoEnv
SetBatchLines, -1

global lastExecutionTimeArena := 0
global MapPoints :=

; start of main script
MainScript(){
loop:
    ControlFocus,, ahk_exe Firestone.exe
    ; do main screen sections
    MsgBox, , Main Menu Check, Checking to ensure we are on main screen at loop start, 2
    MainMenu()
    ControlFocus,, ahk_exe Firestone.exe
    GuiControlGet, Checked, , Events,
        If (Checked = 1){
            ClaimEvents()
        }
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
        Shop()
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
        } Else {
        ;check if Upgrade Blessings is checked
        GuiControlGet, Checked, , Bless,
            If (Checked = 1){
                OpenBlessChests()
            }
        }

    ; start town section
    OpenTown()
    ; check for guardian upgrade
    Guardian()
    ; tavern
    ClaimBeer()
    ; claim rituals
    GuiControlGet, Checked, , SkipOracle,
        If (Checked = 1){
            Goto, Engineer
        }
    ClaimRituals()
    Engineer:
    ; check if skip engineer is checked
    GuiControlGet, Checked, , NoEng,
        If (Checked = 1){
            Goto, ExoticSection
        }
    ClaimEngineer()
    ExoticSection:
    ; check if sell exotic is checked (sell all check is internal to sell exotic script)
    GuiControlGet, Checked, , SellEx,
        If (Checked = 1){
            ExoticMerchant()
    }
    ; check if do arena is checked
    GuiControlGet, Checked, , PVP,
        If (Checked = 1){
            ; get current time
            currentTimeArena := A_TickCount
            ;check if it's been 24 hours since last execution
            If (lastExecutionTimeArena <= 0 || currentTimeArena - lastExecutionTimeArena >= 6 * 60 * 60 * 1000){
                Arena()
                lastExecutionTimeArena := currentTimeArena
            } 
        } 
    ; check if we are skipping alchemy
    GuiControlGet, Checked, , Alch, 
        If (Checked = 1){
            Goto, ResearchStart
        } Else {
            Alchemist()
        }
    ; check if we are skipping research
    ResearchStart:
    GuiControlGet, Checked, , Research,
        If (Checked = 1){
            Goto, FinishTown
        } Else {
            GoResearch()
        }
    FinishTown:
    BigClose()
    GuiControlGet, Checked, , NoGuild,
    If (Checked = 1){
        Goto, MapStartUp
    }
    Guild()
    MapStartUp:
    GoMap()
    MapRedeem()
    ; check if we have selected talent upgrades in the 450 dropdown
    GuiControlGet, SelectedItem, , Talents450
    If (SelectedItem = "Don't Upgrade Talents (0-450 Talent Points)"){
    Goto, Talents800Check
    } Else {
        UpgradeTalents450()
    }
    Talents800Check:
    ; check if we have selected talent upgrades in the 800 dropdown
    GuiControlGet, SelectedItem, , Talents800
    If (SelectedItem = "Don't Upgrade Talents (500+ Talent Points)"){
        Goto, UpgradeHero
    } Else {
        UpgradeTalents800()
    }
    UpgradeHero:
    GuiControlGet, Checked, , NoHero,
    If (Checked = 1){
        Goto, EndingMouseMove
    }
    HeroUpgrade()
    EndingMouseMove:
    MouseMove, 947, 755
    Sleep, 60000 ;wait 1 minute then repeat
    Goto, Loop
}

GuiEscape:
GuiClose:
    $Esc::
    ExitApp  
