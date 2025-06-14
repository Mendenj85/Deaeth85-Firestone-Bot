; PTree.ahk

#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\MainMenu.ahk
#Include Functions\util.ahk

; optional personal tree upgrades
PersonalTree() {
    MoveMouseRel(1823, 945)
    Sleep, 1000
    Click
    Sleep, 1500

    GuiControlGet, Checked, , AttDmg
    If (Checked = 1){
        MoveMouseRel(365, 313)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(960, 680)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(1760, 561)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(1760, 561)
        Sleep, 1000
        Click
        Sleep, 1000
    }
    GuiControlGet, Checked, , AttHp
    If (Checked = 1){
        MoveMouseRel(512, 276)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(960, 680)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(1760, 561)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(1760, 561)
        Sleep, 1000
        Click
        Sleep, 1000
    }
    GuiControlGet, Checked, , AttArm
    If (Checked = 1){
        MoveMouseRel(687, 367)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(960, 680)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(1760, 561)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(1760, 561)
        Sleep, 1000
        Click
        Sleep, 1000
    }
    GuiControlGet, Checked, , Energy
    If (Checked = 1){
        MoveMouseRel(353, 492)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(960, 680)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(1760, 561)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(1760, 561)
        Sleep, 1000
        Click
        Sleep, 1000
    }
    GuiControlGet, Checked, , Mana
    If (Checked = 1){
        MoveMouseRel(511, 442)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(960, 680)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(1760, 561)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(1760, 561)
        Sleep, 1000
        Click
        Sleep, 1000
    }
    GuiControlGet, Checked, , Rage
    If (Checked = 1){
        MoveMouseRel(687, 534)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(960, 680)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(1760, 561)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(1760, 561)
        Sleep, 1000
        Click
        Sleep, 1000
    }
    GuiControlGet, Checked, , Miner
    If (Checked = 1){
        MoveMouseRel(858, 199)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(960, 680)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(1760, 561)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(1760, 561)
        Sleep, 1000
        Click
        Sleep, 1000
    }
    GuiControlGet, Checked, , Battle
    If (Checked = 1){
        MoveMouseRel(1061, 205)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(960, 680)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(1760, 561)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(1760, 561)
        Sleep, 1000
        Click
        Sleep, 1000
    }
    GuiControlGet, Checked, , MainAtt
    If (Checked = 1){
        MoveMouseRel(957, 365)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(960, 680)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(1760, 561)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(1760, 561)
        Sleep, 1000
        Click
        Sleep, 1000
    }
    GuiControlGet, Checked, , Prest
    If (Checked = 1){
        MoveMouseRel(963, 536)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(960, 680)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(1760, 561)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(1760, 561)
        Sleep, 1000
        Click
        Sleep, 1000
    }
    GuiControlGet, Checked, , Fire
    If (Checked = 1){
        MoveMouseRel(860, 696)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(960, 680)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(1760, 561)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(1760, 561)
        Sleep, 1000
        Click
        Sleep, 1000
    }
    GuiControlGet, Checked, , Gold
    If (Checked = 1){
        MoveMouseRel(1059, 701)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(960, 680)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(1760, 561)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(1760, 561)
        Sleep, 1000
        Click
        Sleep, 1000
    }
    GuiControlGet, Checked, , Level
    If (Checked = 1){
        MoveMouseRel(849, 866)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(960, 680)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(1760, 561)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(1760, 561)
        Sleep, 1000
        Click
        Sleep, 1000
    }
    GuiControlGet, Checked, , Guard
    If (Checked = 1){
        MoveMouseRel(1063, 867)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(960, 680)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(1760, 561)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(1760, 561)
        Sleep, 1000
        Click
        Sleep, 1000
    }
    GuiControlGet, Checked, , Fist
    If (Checked = 1){
        MoveMouseRel(1235, 369)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(960, 680)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(1760, 561)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(1760, 561)
        Sleep, 1000
        Click
        Sleep, 1000
    }
    GuiControlGet, Checked, , Prec
    If (Checked = 1){
        MoveMouseRel(1399, 276)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(960, 680)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(1760, 561)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(1760, 561)
        Sleep, 1000
        Click
        Sleep, 1000
    }
    GuiControlGet, Checked, , Magic
    If (Checked = 1){
        MoveMouseRel(1567, 320)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(960, 680)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(1760, 561)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(1760, 561)
        Sleep, 1000
        Click
        Sleep, 1000
    }
    GuiControlGet, Checked, , Tank
    If (Checked = 1){
        MoveMouseRel(1233, 535)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(960, 680)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(1760, 561)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(1760, 561)
        Sleep, 1000
        Click
        Sleep, 1000
    }
    GuiControlGet, Checked, , Damage
    If (Checked = 1){
        MoveMouseRel(1404, 440)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(960, 680)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(1760, 561)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(1760, 561)
        Sleep, 1000
        Click
        Sleep, 1000
    }
    GuiControlGet, Checked, , Heal
    If (Checked = 1){
        MoveMouseRel(1572, 492)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(960, 680)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(1760, 561)
        Sleep, 1000
        Click
        Sleep, 1000
        MoveMouseRel(1760, 561)
        Sleep, 1000
        Click
        Sleep, 1000
    }
    BigClose()
}
BigClose()