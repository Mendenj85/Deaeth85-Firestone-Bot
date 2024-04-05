;PTree.ahk

#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\MainMenu.ahk

; optional personal tree upgrades
PersonalTree() {
    MouseMove, 1823, 945
    Sleep, 1000
    Click
    Sleep, 1500
    GuiControlGet, Checked, , AttDmg, ; get the state of the checkbox
        if (Checked = 1){
            MouseMove, 365, 313
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 960, 680
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 1760, 561
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 1760, 561
            Sleep, 1000
            Click
            Sleep, 1500
        }
    GuiControlGet, Checked, , AttHp, ; get the state of the checkbox
        if (Checked = 1){
            MouseMove, 512, 276
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 960, 680
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 1760, 561
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 1760, 561
            Sleep, 1000
            Click
            Sleep, 1500
        }
    GuiControlGet, Checked, , AttArm, ; get the state of the checkbox
        if (Checked = 1){
            MouseMove, 687, 367
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 960, 680
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 1760, 561
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 1760, 561
            Sleep, 1000
            Click
            Sleep, 1500
        }
    GuiControlGet, Checked, , Energy, ; get the state of the checkbox
        if (Checked = 1){
            MouseMove, 353, 492
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 960, 680
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 1760, 561
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 1760, 561
            Sleep, 1000
            Click
            Sleep, 1500
        }
    GuiControlGet, Checked, , Mana, ; get the state of the checkbox
        if (Checked = 1){
            MouseMove, 511, 442
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 960, 680
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 1760, 561
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 1760, 561
            Sleep, 1000
            Click
            Sleep, 1500
        }
    GuiControlGet, Checked, , Rage, ; get the state of the checkbox
        if (Checked = 1){
            MouseMove, 687, 534
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 960, 680
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 1760, 561
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 1760, 561
            Sleep, 1000
            Click
            Sleep, 1500
        }
    GuiControlGet, Checked, , Miner, ; get the state of the checkbox
        if (Checked = 1){
            MouseMove, 858, 199
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 960, 680
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 1760, 561
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 1760, 561
            Sleep, 1000
            Click
            Sleep, 1500
        }
    GuiControlGet, Checked, , Battle, ; get the state of the checkbox
        if (Checked = 1){
            MouseMove, 1061, 205
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 960, 680
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 1760, 561
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 1760, 561
            Sleep, 1000
            Click
            Sleep, 1500
        }
    GuiControlGet, Checked, , MainAtt, ; get the state of the checkbox
        if (Checked = 1){
            MouseMove, 957, 365
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 960, 680
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 1760, 561
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 1760, 561
            Sleep, 1000
            Click
            Sleep, 1500
        }
    GuiControlGet, Checked, , Prest, ; get the state of the checkbox
        if (Checked = 1){
            MouseMove, 963, 536
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 960, 680
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 1760, 561
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 1760, 561
            Sleep, 1000
            Click
            Sleep, 1500
        }
    GuiControlGet, Checked, , Fire, ; get the state of the checkbox
        if (Checked = 1){
            MouseMove, 860, 696
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 960, 680
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 1760, 561
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 1760, 561
            Sleep, 1000
            Click
            Sleep, 1500
        }
    GuiControlGet, Checked, , Gold, ; get the state of the checkbox
        if (Checked = 1){
            MouseMove, 1059, 701
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 960, 680
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 1760, 561
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 1760, 561
            Sleep, 1000
            Click
            Sleep, 1500
        }
    GuiControlGet, Checked, , Level, ; get the state of the checkbox
        if (Checked = 1){
            MouseMove, 849, 866
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 960, 680
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 1760, 561
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 1760, 561
            Sleep, 1000
            Click
            Sleep, 1500
        }
    GuiControlGet, Checked, , Guard, ; get the state of the checkbox
        if (Checked = 1){
            MouseMove, 1063, 867
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 960, 680
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 1760, 561
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 1760, 561
            Sleep, 1000
            Click
            Sleep, 1500
        }
    GuiControlGet, Checked, , Fist, ; get the state of the checkbox
        if (Checked = 1){
            MouseMove, 1235, 369
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 960, 680
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 1760, 561
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 1760, 561
            Sleep, 1000
            Click
            Sleep, 1500
        }
    GuiControlGet, Checked, , Prec, ; get the state of the checkbox
        if (Checked = 1){
            MouseMove, 1399, 276
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 960, 680
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 1760, 561
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 1760, 561
            Sleep, 1000
            Click
            Sleep, 1500
        }
    GuiControlGet, Checked, , Magic, ; get the state of the checkbox
        if (Checked = 1){
            MouseMove, 1567, 320
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 960, 680
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 1760, 561
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 1760, 561
            Sleep, 1000
            Click
            Sleep, 1500
        }
    GuiControlGet, Checked, , Tank, ; get the state of the checkbox
        if (Checked = 1){
            MouseMove, 1233, 535
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 960, 680
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 1760, 561
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 1760, 561
            Sleep, 1000
            Click
            Sleep, 1500
        }
    GuiControlGet, Checked, , Damage, ; get the state of the checkbox
        if (Checked = 1){
            MouseMove, 1404, 440
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 960, 680
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 1760, 561
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 1760, 561
            Sleep, 1000
            Click
            Sleep, 1500
        }
    GuiControlGet, Checked, , Heal, ; get the state of the checkbox
        if (Checked = 1){
            MouseMove, 1572, 492
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 960, 680
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 1760, 561
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 1760, 561
            Sleep, 1000
            Click
            Sleep, 1500
        }
    BigClose()
}
BigClose()