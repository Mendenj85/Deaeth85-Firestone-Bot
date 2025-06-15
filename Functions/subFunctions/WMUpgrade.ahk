; WMUpgrade.ahk (AHK v2)

#Include ..\util.ahk
#Include BigClose.ahk
#Include WMBlueprintsOnly.ahk
#Include WMLevelOnly.ahk

; Declare globals for control objects with default values (set in your Gui.ahk)
global upgradeWMDD := ""      ; War Machine dropdown control object
global wmOptionsDD := ""      ; WMOptions dropdown control object

WMUpgrade() {
    global upgradeWMDD, wmOptionsDD

    WinActivate("ahk_exe Firestone.exe ahk_class UnityWndClass")
    SelectedItem := upgradeWMDD.Value
    ToolTip("Selected war machine: " SelectedItem)
    SetTimer(() => ToolTip(), -1500)

    ; Define war machine data: name, color code
    warMachines := Map(
        "Upgrade Aegis",         0xA49789,
        "Upgrade Cloudfist",     0xF7661c,
        "Upgrade Curator",       0x740D0B,
        "Upgrade Earthshatterer",0x3B4F98,
        "Upgrade Firecracker",   0xEA4019,
        "Upgrade Fortress",      0x275094,
        "Upgrade Goliath",       0x702815,
        "Upgrade Harvester",     0x010BAF,
        "Upgrade Hunter",        0x6CB932,
        "Upgrade Judgement",     0x971DAB,
        "Upgrade Sentinel",      0xC2EFD9,
        "Upgrade Talos",         0x226B10,
        "Upgrade Thunderclap",   0x3EE0EE
    )

    if warMachines.Has(SelectedItem) {
        color := warMachines[SelectedItem]
        result := PixelSearchRel(&FoundX, &FoundY, 248, 894, 1878, 1020, color, 3)
        if result {
            MoveMouseRel(FoundX, FoundY)
            Sleep(1000)
            Click()
            Sleep(1000)
        }
        WMOption := wmOptionsDD.Value
        if (WMOption = "Level Only") {
            LevelOnly()
            return
        } else if (WMOption = "Blueprints Only") {
            BPOnly()
            return
        } else if (WMOption = "Level and Blueprints") {
            LevelOnly()
            BPOnly()
            return
        }
    }
}
