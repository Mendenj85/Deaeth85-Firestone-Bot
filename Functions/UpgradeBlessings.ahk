; UpgradeBlessings.ahk (AHK v2)

#Include util.ahk
#Include subFunctions\MainMenu.ahk
#Include subFunctions\BigClose.ahk
#Include subFunctions\ClickBless.ahk

UpgradeBlessings() {
    WinActivate("ahk_exe Firestone.exe ahk_class UnityWndClass")
    MainMenu()
    ; open blessings page if ready
    PixelSearchRel(&X, &Y, 865, 506, 904, 547, 0xF40000, 3)
    if (A_LastError = 0) {
        MoveMouseRel(828, 585)
        Sleep 1000
        Click
        Sleep 1500
        ; 12 o-clock position
        PixelSearchRel(&X, &Y, 1402, 185, 1457, 231, 0xF60000, 10)
        if (A_LastError = 0) {
            MoveMouseRel(1375, 239)
            Sleep 1000
            Click
            Sleep 1000
            ClickBless()
        }
        ; 1 o-clock position
        PixelSearchRel(&X, &Y, 1565, 220, 1631, 291, 0xF60000, 10)
        if (A_LastError = 0) {
            MoveMouseRel(1535, 286)
            Sleep 1000
            Click
            Sleep 1000
            ClickBless()
        }
        ; 2 o-clock position
        PixelSearchRel(&X, &Y, 1688, 340, 1734, 389, 0xF60000, 10)
        if (A_LastError = 0) {
            MoveMouseRel(1662, 407)
            Sleep 1000
            Click
            Sleep 1000
            ClickBless()
        }
        ; 3 o-clock position
        PixelSearchRel(&X, &Y, 1741, 507, 1777, 546, 0xF60000, 10)
        if (A_LastError = 0) {
            MoveMouseRel(1703, 578)
            Sleep 1000
            Click
            Sleep 1000
            ClickBless()
        }
        ; 4 o-clock position
        PixelSearchRel(&X, &Y, 1695, 673, 1731, 711, 0xF60000, 10)
        if (A_LastError = 0) {
            MoveMouseRel(1653, 741)
            Sleep 1000
            Click
            Sleep 1000
            ClickBless()
        }
        ; 5 o-clock position
        PixelSearchRel(&X, &Y, 1577, 795, 1613, 825, 0xF60000, 10)
        if (A_LastError = 0) {
            MoveMouseRel(1531, 860)
            Sleep 1000
            Click
            Sleep 1000
            ClickBless()
        }
        ; 6 o-clock position
        PixelSearchRel(&X, &Y, 1414, 837, 1447, 876, 0xF60000, 10)
        if (A_LastError = 0) {
            MoveMouseRel(1372, 903)
            Sleep 1000
            Click
            Sleep 1000
            ClickBless()
        }
        ; 7 o-clock position
        PixelSearchRel(&X, &Y, 1258, 793, 1283, 828, 0xF60000, 10)
        if (A_LastError = 0) {
            MoveMouseRel(1207, 852)
            Sleep 1000
            Click
            Sleep 1000
            ClickBless()
        }
        ; 8 o-clock position
        PixelSearchRel(&X, &Y, 1132, 672, 1165, 703, 0xF60000, 10)
        if (A_LastError = 0) {
            MoveMouseRel(1089, 742)
            Sleep 1000
            Click
            Sleep 1000
            ClickBless()
        }
        ; 9 o-clock position
        PixelSearchRel(&X, &Y, 1091, 510, 1115, 541, 0xF60000, 10)
        if (A_LastError = 0) {
            MoveMouseRel(1045, 575)
            Sleep 1000
            Click
            Sleep 1000
            ClickBless()
        }
        ; 10 o-clock position
        PixelSearchRel(&X, &Y, 1131, 345, 1165, 377, 0xF60000, 10)
        if (A_LastError = 0) {
            MoveMouseRel(1089, 415)
            Sleep 1000
            Click
            Sleep 1000
            ClickBless()
        }
        ; 11 o-clock position
        PixelSearchRel(&X, &Y, 1256, 224, 1277, 261, 0xF60000, 10)
        if (A_LastError = 0) {
            MoveMouseRel(1209, 291)
            Sleep 1000
            Click
            Sleep 1000
            ClickBless()
        }
        ; fate position
        PixelSearchRel(&X, &Y, 1431, 498, 1465, 531, 0xF60000, 10)
        if (A_LastError = 0) {
            MoveMouseRel(1370, 572)
            Sleep 1000
            Click
            Sleep 1000
            ClickBless()
        }
    }
    BigClose()
}