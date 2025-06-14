; Deaeth85 Firestone Bot.ahk

#SingleInstance Force
#NoEnv
SetBatchLines, -1
SetWorkingDir %A_ScriptDir%

#Include Gui.ahk
#Include Functions\util.ahk
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
#Include Functions\SleepDelay.ahk
#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\GetColor.ahk
#Include Functions\subFunctions\GoMap.ahk
#Include Functions\subFunctions\MainMenu.ahk
#Include Functions\subFunctions\MapClose.ahk
#Include Functions\subFunctions\OpenTown.ahk

CoordMode, Mouse, Relative
CoordMode, Pixel, Relative

global lastExecutionTimeArena := 0
global MapPoints :=

; start of main script
MainScript(){
loop:
    ControlFocus,, ahk_exe Firestone.exe
    MsgBox, , Main Menu Check, Checking to ensure we are on main screen at loop start, 2
    MainMenu()
    ControlFocus,, ahk_exe Firestone.exe
    CallIfChecked("Events", "ClaimEvents")
    CallIfChecked("Quests", "ClaimQuests")
    MsgBox, , Main Menu Check, Checking to ensure we are on main screen after claiming quests, 2
    MainMenu()
    ControlFocus,, ahk_exe Firestone.exe
    CallIfChecked("Shop", "Shop")
    CallIfChecked("Mail", "CheckMail")
    CallIfChecked("Chests", "OpenChests")
    OpenTown()
    CallIfChecked("Guardian", "Guardian")
    SkipIfChecked("Beer", "ClaimBeer")
    SkipIfChecked("SkipOracle", "ClaimRituals")
    SkipIfChecked("NoEng", "ClaimEngineer")
    CallIfChecked("SellEx", "ExoticMerchant")
    ; Arena logic
    GuiControlGet, Checked, , PVP,
    If (Checked = 1){
        If (lastExecutionTimeArena <= 0 || currentTimeArena - lastExecutionTimeArena >= 6 * 60 * 60 * 1000){
            Arena()
            lastExecutionTimeArena := currentTimeArena
        }
    }

    ; Alchemy/Research logic
    SkipIfChecked("Alch", "Alchemist")
    SkipIfChecked("Research", "GoResearch")
    BigClose()
    SkipIfChecked("NoGuild", "Guild")
    CallOrGotoIfChecked("NoMap", "UpgradeHero", "GoMap")
    GoMap()
    MapRedeem()
    UpgradeHero:
    SkipIfChecked("NoHero", "UpgradeHero")
    MoveMouseRel(947, 755)
    Sleep, 500
    EndofLoopDelay()
    Goto, Loop
}

GuiEscape:
GuiClose:
    $Esc::
    ExitApp