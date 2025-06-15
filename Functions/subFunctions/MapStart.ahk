; MapStart.ahk (AHK v2)

#Include ..\util.ahk
#Include ..\subFunctions\BigClose.ahk
#Include ..\subFunctions\MapClose.ahk

; function to start the map missions, should be all nodes + the gift missions for the world domination mini-event
MapStart() {
    stateFile := "MapStartState.ini"
    ; Read last index from file, default to 1
    lastIndex := IniRead(stateFile, "State", "LastIndex", 1)

    Point := []
    ; All points as absolute coordinates (util.ahk will convert)
    Point.Push({x:1533, y:98})
    Point.Push({x:1608, y:119})
    Point.Push({x:1534, y:123})
    Point.Push({x:1440, y:140})
    Point.Push({x:1207, y:32})
    Point.Push({x:1290, y:99})
    Point.Push({x:1177, y:35})
    Point.Push({x:1104, y:43})
    Point.Push({x:883, y:460})
    Point.Push({x:616, y:204})
    Point.Push({x:581, y:295})
    Point.Push({x:672, y:423})
    Point.Push({x:884, y:233})
    Point.Push({x:828, y:375})
    Point.Push({x:923, y:369})
    Point.Push({x:1017, y:426})
    Point.Push({x:867, y:543})
    Point.Push({x:1228, y:550})
    Point.Push({x:655, y:357})
    Point.Push({x:712, y:517})
    Point.Push({x:1314, y:306})
    Point.Push({x:1340, y:545})
    Point.Push({x:1424, y:777})
    Point.Push({x:1438, y:871})
    Point.Push({x:1357, y:429})
    Point.Push({x:1452, y:498})
    Point.Push({x:1364, y:646})
    Point.Push({x:1162, y:454})
    Point.Push({x:980, y:228})
    Point.Push({x:1442, y:418})
    Point.Push({x:633, y:576})
    Point.Push({x:502, y:330})
    Point.Push({x:538, y:190})
    Point.Push({x:733, y:229})
    Point.Push({x:1130, y:546})
    Point.Push({x:1041, y:518})
    Point.Push({x:812, y:637})
    Point.Push({x:874, y:664})
    Point.Push({x:705, y:592})
    Point.Push({x:460, y:670})
    Point.Push({x:1297, y:193})
    Point.Push({x:1394, y:355})
    Point.Push({x:1252, y:392})
    Point.Push({x:1486, y:770})
    Point.Push({x:910, y:759})
    Point.Push({x:1224, y:463})
    Point.Push({x:720, y:675})
    Point.Push({x:1255, y:853})
    Point.Push({x:1224, y:312})
    Point.Push({x:929, y:609})
    Point.Push({x:1481, y:261})
    Point.Push({x:463, y:433})
    Point.Push({x:1145, y:626})
    Point.Push({x:1326, y:798})
    Point.Push({x:556, y:500})
    Point.Push({x:1044, y:676})
    Point.Push({x:1099, y:894})
    Point.Push({x:780, y:845})
    Point.Push({x:1276, y:694})
    Point.Push({x:970, y:810})
    Point.Push({x:849, y:794})
    Point.Push({x:797, y:504})
    Point.Push({x:484, y:920})
    Point.Push({x:1460, y:580})
    Point.Push({x:671, y:755})
    Point.Push({x:543, y:1032})
    Point.Push({x:1055, y:780})
    Point.Push({x:1435, y:683})
    Point.Push({x:384, y:1009})
    Point.Push({x:1150, y:340})
    Point.Push({x:1221, y:467})
    Point.Push({x:742, y:389})
    Point.Push({x:967, y:547})
    Point.Push({x:1152, y:969})
    Point.Push({x:836, y:1039})

    total := Point.Length
    Loop total {
        idx := Mod(A_Index - 1 + lastIndex - 1, total) + 1
        x := Point[idx].x
        y := Point[idx].y

        WinActivate("ahk_exe Firestone.exe ahk_class UnityWndClass")
        MoveMouseRel(x, y)
        Sleep(500)
        Click()
        Sleep(1000)
        ; check if mission can be started
        result := PixelSearchRel(&FoundX, &FoundY, 953, 822, 1205, 898, 0x0AA008, 10)
        if !result {
            MoveMouseRel(1084, 865)
            ToolTip("Mission found - Starting")
            SetTimer(() => ToolTip(), -1500)
            Click()
            Sleep(500)
            ToolTip("Looking for more idle troops")
            SetTimer(() => ToolTip(), -2000)
        } else {
            MapClose()
        }
        ; check for more idle troops
        result := PixelSearchRel(&FoundX, &FoundY, 1175, 996, 1187, 1012, 0x542710, 10)
        if !result {
            ; Save next index and continue
            nextIndex := idx + 1
            if (nextIndex > total)
                nextIndex := 1
            IniWrite(nextIndex, stateFile, "State", "LastIndex")
            Continue
        }
        ; Save next index before exiting
        nextIndex := idx + 1
        if (nextIndex > total)
            nextIndex := 1
        IniWrite(nextIndex, stateFile, "State", "LastIndex")
        ToolTip("No idle troops found - ending mission search")
        SetTimer(() => ToolTip(), -2000)
        Return
    }
    ; If loop completes, reset index
    IniWrite(1, stateFile, "State", "LastIndex")
}