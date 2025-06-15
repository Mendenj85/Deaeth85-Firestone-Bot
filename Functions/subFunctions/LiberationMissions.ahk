; LiberationMissions.ahk (AHK v2)

#Include ..\util.ahk
#Include BigClose.ahk
#Include LiberationInProgressCheck.ahk

LiberationMissions() {
    WinActivate("ahk_exe Firestone.exe ahk_class UnityWndClass")
    ; open daily missions if notification present
    result := PixelSearchRel(&FoundX, &FoundY, 1873, 920, 1900, 954, 0xF40000, 3)
    if !result {
        MoveMouseRel(1800, 982)
        Sleep(1000)
        Click()
        Sleep(1500)
    } else {
        return
    }
    ; open Liberation
    MoveMouseRel(697, 788)
    Sleep(1000)
    Click()
    Sleep(1500)
    Loop 70 {
        Send("{WheelDown}")
        Sleep(200)
    }

    ; Missions in order of priority
    missions := [
        {name: "319Stars", x: 1583, y: 755},
        {name: "190Stars", x: 1191, y: 755},
        {name: "155Stars", x: 791,  y: 755},
        {name: "110Stars", x: 412,  y: 755},
        {name: "80Stars",  x: 133,  y: 748},
        {name: "60Stars",  x: 1688, y: 755, scrollUp: 63},
        {name: "40Stars",  x: 1291, y: 755},
        {name: "20Stars",  x: 900,  y: 755},
        {name: "10Stars",  x: 517,  y: 755},
        {name: "5Stars",   x: 157,  y: 758}
    ]

    for idx, mission in missions {
        if mission.HasOwnProp("scrollUp") {
            Loop mission.scrollUp {
                Send("{WheelUp}")
                Sleep(200)
            }
        }
        MoveMouseRel(mission.x, mission.y)
        Sleep(1000)
        Click()
        Sleep(1500)
        result := PixelSearchRel(&FoundX, &FoundY, 1723, 51, 1797, 123, 0xFF4805, 10)
        if !result {
            continue
        }
        while !LiberationInProgress() {
            Sleep(5000)
        }
    }

    ; After missions, open dungeon
    MoveMouseRel(1223, 794)
    Sleep(1000)
    Click()
    Sleep(1500)

    ; Dungeon stars
    dungeonMissions := [
        {name: "120Stars", x: 1149, y: 763},
        {name: "70Stars",  x: 768,  y: 762}
    ]
    for idx, mission in dungeonMissions {
        MoveMouseRel(mission.x, mission.y)
        Sleep(1000)
        Click()
        Sleep(1500)
        result := PixelSearchRel(&FoundX, &FoundY, 1723, 51, 1797, 123, 0xFF4805, 10)
        if !result {
            continue
        }
        while !LiberationInProgress() {
            Sleep(5000)
        }
    }
}