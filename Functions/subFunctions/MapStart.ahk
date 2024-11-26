; MapStart.ahk

#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\MapClose.ahk

;function to start the map missions, should be all nodes + the gift missions for the world domination mini-event
MapStart(){
    Point := {1533:95,1608:119,1534:123,1440:140,1207:32,1290:99,1177:35,1104:43,883:460,616:204,581:295,672:423,884:233,828:375,923:369,1017:426,867:543,1228:550,655:357,712:517,1314:306,1340:545,1424:777,1438:871,1357:429,1452:498,1364:646,1162:454,980:228,1442:418,633:576,502:330,538:190,733:229,1130:546,1041:518,812:637,874:664,705:592,460:670,1297:193,1394:355,1252:392,1486:770,910:759,1224:463,720:675,1255:853,1224:312,929:609,1481:261,463:433,1145:626,1326:798,556:500,1044:676,1099:894,780:845,1276:694,970:810,849:794,797:504,484:920,1460:580,671:755,543:1032,1055:780,1435:683,384:1009,1150:340,1221:467,742:389,967:547,1152:969,836:1039}
    For x,y in Point{
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
                Continue
            }
        MsgBox, , Troop Check, No idle troops found - ending mission search, 2
        Return
    }
}