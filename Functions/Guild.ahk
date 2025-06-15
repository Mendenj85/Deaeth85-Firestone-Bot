; Guild.ahk (AHK v2)

#Include util.ahk
#Include subFunctions\Awaken.ahk
#Include subFunctions\BigClose.ahk
#Include subFunctions\Chaos.ahk
#Include subFunctions\PTree.ahk

global awakenCB, chaosCB, pickaxesCB, crystalCB, ptreeCB, gnotifCB

; expeditions function
Guild() {
    global awakenCB, chaosCB, pickaxesCB, crystalCB, ptreeCB, gnotifCB

    WinActivate("ahk_exe Firestone.exe ahk_class UnityWndClass")
    ; open guild
    MoveMouseRel(1857, 481)
    Sleep(1000)
    Click()
    Sleep(1500)
    ; check if expeditions are ready
    result := PixelSearchRel(&FoundX, &FoundY, 438, 392, 500, 440, 0xF40000, 3)
    if !result {
        MoveMouseRel(308, 406)
        Sleep(1000)
        Click()
        Sleep(1500)
        MoveMouseRel(1321, 331)
        Sleep(1000)
        Click()
        Sleep(1500)
        Click()
        Sleep(1000)
        BigClose()
    }
    ; check if awaken heroes is selected
    if (awakenCB.Value = 1) {
        AwakenRun()
    }
    ; check if Chaos Rift is selected
    if (chaosCB.Value = 1) {
        HitChaos()
    }
    ; check if skipping claiming pickaxes
    if (pickaxesCB.Value = 1) {
        ; skip ClaimAxes, go to CrystalHit
    } else {
        ClaimAxes()
    }
    ; check if we are doing crystal hits
    if (crystalCB.Value = 1) {
        HitCrystal()
    }
    ; see if we are running personal tree or not
    if (ptreeCB.Value = 1) {
        MoveMouseRel(1560, 366)
        Sleep(1000)
        Click()
        Sleep(1500)
        PersonalTree()
    }
    ; check if clearing guild notifications
    if (gnotifCB.Value = 1) {
        ClearNotifications()
    }
    BigClose()
    return
}

ClaimAxes() {
    MoveMouseRel(639, 263)
    Sleep(1000)
    Click()
    Sleep(1500)
    MoveMouseRel(141, 740)
    Sleep(1000)
    Click()
    Sleep(1500)
    result := PixelSearchRel(&FoundX, &FoundY, 764, 617, 869, 653, 0x1EA569, 3)
    if !result {
        MoveMouseRel(716, 637)
        Sleep(1000)
        Click()
        Sleep(1500)
    }
    BigClose()
    return
}

HitCrystal() {
    MoveMouseRel(1646, 928)
    Sleep(1000)
    Click()
    Sleep(1500)
    result := PixelSearchRel(&FoundX, &FoundY, 1101, 904, 1075, 946, 0x0AA008, 3)
    if !result {
        MoveMouseRel(957, 896)
        Sleep(1000)
        Click()
        Sleep(1500)
    }
    BigClose()
    return
}

ClearNotifications() {
    MoveMouseRel(1056, 487)
    Sleep(1000)
    Click()
    Sleep(1500)
    MoveMouseRel(230, 667)
    Sleep(1000)
    Click()
    Sleep(1500)
    BigClose()
    return
}
