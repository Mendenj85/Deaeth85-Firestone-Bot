; MapStart.ahk

#include Functions\subFunctions\BigClose.ahk
#include Functions\subFunctions\MapClose.ahk

;function to start the map missions, should be all nodes + the gift missions for the world domination mini-event
MapStart(){
Point := {1207:32,1290:99,1177:35,1104:43,883:460,616:204,581:295,672:423,884:233,828:375,923:369,1017:426,867:543,1228:550,655:357,712:517,1314:306,1340:545,1424:777,1438:871,1357:429,1452:498,1364:646,1162:454,980:228,1442:418,633:576,502:330,538:190,733:229,1130:546,1041:518,812:637,874:664,705:592,460:670,1297:193,1394:355,1252:392,1486:770,910:759,1224:463,720:675,1255:853,1224:312,929:609,1481:261,463:433,1145:626,1326:798,556:500,1044:676,1099:894,780:845,1276:694,970:810,849:794,797:504,484:920,1460:580,671:755,547:1041,1055:780,1435:683,384:1009,1150:340,1221:467,742:389,967:547,1152:969,836:1039}
For x,y in Point{
    ControlFocus,, ahk_exe Firestone.exe
    Click %x%, %y%
    Sleep, 1500
    PixelSearch, FoundX, FoundY, 1, 1, 1920, 1058, 0x0AA008, 3, Fast RGB
    if(ErrorLevel=0){
        MouseMove, FoundX, FoundY
        Sleep, 1000
        Click
        Sleep, 1500
    }
    MapClose()
    Sleep, 1000
    PixelSearch,X,Y, 459, 1007, 459, 1007, 0xEFD9C0, 10, Fast RGB
    If(ErrorLevel=1){
        sleep, 1000
    }
}
BigClose()
return
}