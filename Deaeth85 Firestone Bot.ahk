; Deaeth85 Firestone Bot.ahk

#Requires AutoHotkey v2.0
#SingleInstance Force
SetWorkingDir A_ScriptDir

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

global lastExecutionTimeArena := 0
global MapPoints := ""

Hotkey("Esc", (*) => ExitApp())
OnExit(ExitAppWrapper)

ExitAppWrapper(*) {
    ExitApp()
}

MainScript() {
    global lastExecutionTimeArena
    Loop {
        ; Focus game window
        WinActivate("ahk_exe Firestone.exe ahk_class UnityWndClass")
        ToolTip("Checking to ensure we are on main screen at loop start")
        SetTimer(() => ToolTip(), -2000)
        MainMenu()
        WinActivate("ahk_exe Firestone.exe ahk_class UnityWndClass")

        ; Claim Events
        if eventsCB.Value
            ClaimEvents()

        ; Claim Quests
        if questsCB.Value
            ClaimQuests()

        ToolTip("Checking to ensure we are on main screen after claiming quests")
        SetTimer(() => ToolTip(), -2000)
        MainMenu()
        WinActivate("ahk_exe Firestone.exe ahk_class UnityWndClass")

        ; Shop (Free Gift and Check-in)
        if shopCB.Value
            Shop()

        ; Check Mail
        if mailCB.Value
            CheckMail()

        ; Open Chests
        if chestsCB.Value {
            OpenChests()
        } else {
            ; Upgrade Blessings if checked
            if blessCB.Value
                OpenBlessChests()
        }

        ; Town section
        OpenTown()
        Guardian()

        ; Tavern
        ClaimBeer()

        ; Claim Rituals (skip if SkipOracle checked)
        if skipOracleCB.Value {
            ; Skip ClaimRituals, go to Engineer section
        } else {
            ClaimRituals()
        }

        ; Engineer (skip if NoEng checked)
        if noEngCB.Value {
            ; Skip ClaimEngineer, go to Exotic section
        } else {
            ClaimEngineer()
        }

        ; Exotic Merchant (if SellEx checked)
        if sellExCB.Value
            ExoticMerchant()

        ; Arena (if PVP checked)
        if pvpCB.Value {
            currentTimeArena := A_TickCount
            if lastExecutionTimeArena <= 0 || currentTimeArena - lastExecutionTimeArena >= 6 * 60 * 60 * 1000 {
                Arena()
                lastExecutionTimeArena := currentTimeArena
            }
        }

        ; Alchemy (skip if Alch checked)
        if alchCB.Value {
            ; Skip Alchemist, go to Research section
        } else {
            Alchemist()
        }

        ; Research (skip if Research checked)
        if researchCB.Value {
            ; Skip GoResearch, go to FinishTown section
        } else {
            GoResearch()
        }

        ; FinishTown
        BigClose()

        ; Guild (skip if NoGuild checked)
        if noGuildCB.Value {
            ; Skip Guild, go to Map section
        } else {
            Guild()
        }

        ; Map section
        if noMapCB.Value {
            ; Skip MapRedeem, go to Hero Upgrade section
        } else {
            GoMap()
        }

        ; Hero Upgrade (skip if NoHero checked)
        if noHeroCB.Value {
            ; Skip HeroUpgrade, go to EndingMouseMove
        } else {
            HeroUpgrade()
        }

        ; EndingMouseMove
        MouseMove(947, 755)
        EndofLoopDelay() ; Use the user-configurable delay function
    }
}