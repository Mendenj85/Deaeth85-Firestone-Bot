; MapStart.ahk

#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\MapClose.ahk

; function to start the map missions, should be all nodes + the gift missions for the world domination mini-event
MapStart(){
    stateFile := "MapStartState.ini"
    ; Read last index from file, default to 1
    IniRead, lastIndex, %stateFile%, State, LastIndex, 1

    Point := []
    Point.Insert(Object("x",1533,"y",98))
    Point.Insert(Object("x",1608,"y",119))
    Point.Insert(Object("x",1534,"y",123))
    Point.Insert(Object("x",1440,"y",140))
    Point.Insert(Object("x",1207,"y",32))
    Point.Insert(Object("x",1290,"y",99))
    Point.Insert(Object("x",1177,"y",35))
    Point.Insert(Object("x",1104,"y",43))
    Point.Insert(Object("x",883,"y",460))
    Point.Insert(Object("x",616,"y",204))
    Point.Insert(Object("x",581,"y",295))
    Point.Insert(Object("x",672,"y",423))
    Point.Insert(Object("x",884,"y",233))
    Point.Insert(Object("x",828,"y",375))
    Point.Insert(Object("x",923,"y",369))
    Point.Insert(Object("x",1017,"y",426))
    Point.Insert(Object("x",867,"y",543))
    Point.Insert(Object("x",1228,"y",550))
    Point.Insert(Object("x",655,"y",357))
    Point.Insert(Object("x",712,"y",517))
    Point.Insert(Object("x",1314,"y",306))
    Point.Insert(Object("x",1340,"y",545))
    Point.Insert(Object("x",1424,"y",777))
    Point.Insert(Object("x",1438,"y",871))
    Point.Insert(Object("x",1357,"y",429))
    Point.Insert(Object("x",1452,"y",498))
    Point.Insert(Object("x",1364,"y",646))
    Point.Insert(Object("x",1162,"y",454))
    Point.Insert(Object("x",980,"y",228))
    Point.Insert(Object("x",1442,"y",418))
    Point.Insert(Object("x",633,"y",576))
    Point.Insert(Object("x",502,"y",330))
    Point.Insert(Object("x",538,"y",190))
    Point.Insert(Object("x",733,"y",229))
    Point.Insert(Object("x",1130,"y",546))
    Point.Insert(Object("x",1041,"y",518))
    Point.Insert(Object("x",812,"y",637))
    Point.Insert(Object("x",874,"y",664))
    Point.Insert(Object("x",705,"y",592))
    Point.Insert(Object("x",460,"y",670))
    Point.Insert(Object("x",1297,"y",193))
    Point.Insert(Object("x",1394,"y",355))
    Point.Insert(Object("x",1252,"y",392))
    Point.Insert(Object("x",1486,"y",770))
    Point.Insert(Object("x",910,"y",759))
    Point.Insert(Object("x",1224,"y",463))
    Point.Insert(Object("x",720,"y",675))
    Point.Insert(Object("x",1255,"y",853))
    Point.Insert(Object("x",1224,"y",312))
    Point.Insert(Object("x",929,"y",609))
    Point.Insert(Object("x",1481,"y",261))
    Point.Insert(Object("x",463,"y",433))
    Point.Insert(Object("x",1145,"y",626))
    Point.Insert(Object("x",1326,"y",798))
    Point.Insert(Object("x",556,"y",500))
    Point.Insert(Object("x",1044,"y",676))
    Point.Insert(Object("x",1099,"y",894))
    Point.Insert(Object("x",780,"y",845))
    Point.Insert(Object("x",1276,"y",694))
    Point.Insert(Object("x",970,"y",810))
    Point.Insert(Object("x",849,"y",794))
    Point.Insert(Object("x",797,"y",504))
    Point.Insert(Object("x",484,"y",920))
    Point.Insert(Object("x",1460,"y",580))
    Point.Insert(Object("x",671,"y",755))
    Point.Insert(Object("x",543,"y",1032))
    Point.Insert(Object("x",1055,"y",780))
    Point.Insert(Object("x",1435,"y",683))
    Point.Insert(Object("x",384,"y",1009))
    Point.Insert(Object("x",1150,"y",340))
    Point.Insert(Object("x",1221,"y",467))
    Point.Insert(Object("x",742,"y",389))
    Point.Insert(Object("x",967,"y",547))
    Point.Insert(Object("x",1152,"y",969))
    Point.Insert(Object("x",836,"y",1039))

    total := Point.MaxIndex()
    Loop, % total
    {
        idx := Mod(A_Index - 1 + lastIndex - 1, total) + 1
        x := Point[idx].x
        y := Point[idx].y

        ControlFocus,, ahk_exe Firestone.exe
        Click %x%, %y%
        Sleep, 1000
        ; check if mission can be started
        PixelSearch, X, Y, 953, 822, 1205, 898, 0x0AA008, 10, Fast RGB
        If(ErrorLevel=0){
            MouseMove, 1084, 865
            MsgBox, , Mission Start, Mission found - Starting, 1.5
            Click
            Sleep, 500
            MsgBox, , Troop Check, Looking for more idle troops, 2
        } Else {
            MapClose()
        }
        ; check for more idle troops
        PixelSearch, X, Y, 1175, 996, 1187, 1012, 0x542710, 10, Fast RGB
        If(ErrorLevel=0){
            ; Save next index and continue
            nextIndex := idx + 1
            if (nextIndex > total)
                nextIndex := 1
            IniWrite, %nextIndex%, %stateFile%, State, LastIndex
            Continue
        }
        ; Save next index before exiting
        nextIndex := idx + 1
        if (nextIndex > total)
            nextIndex := 1
        IniWrite, %nextIndex%, %stateFile%, State, LastIndex
        MsgBox, , Troop Check, No idle troops found - ending mission search, 2
        Return
    }
    ; If loop completes, reset index
    IniWrite, 1, %stateFile%, State, LastIndex
}