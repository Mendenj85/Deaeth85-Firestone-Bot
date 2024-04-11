; ServerSwitch.ahk

#Include Functions\HeroUpgrade.ahk
#Include Functions\subFunctions\BigClose.ahk

ServerSwitch(){
    ; open options
    MouseMove, 1866, 77
    MsgBox, , Server Switch, Switching Servers, 1.5
    Click
    Sleep, 1000
    ; click switch servers
    MouseMove, 1456, 607
    Sleep, 1000
    Click
    Sleep, 1000
    ; click your servers
    MouseMove, 1126, 181
    Sleep, 1000
    Click
    Sleep, 1000
    ; check for which server to swap to
    PixelSearch, X, Y, 391, 281, 815, 305, 0xFFAE00, 3, Fast RGB
    If (ErrorLevel = 0){
        MouseMove, 1269, 350
        Sleep, 1000
        Click
        Sleep, 1000
        ; click confirm
        MouseMove, 1111, 697
        Sleep, 1000
        Click
        Sleep, 1000
    } Else {
        MouseMove, 709, 340
        Sleep, 1000
        Click
        Sleep, 1000
        ; click confirm
        MouseMove, 1111, 697
        Sleep, 1000
        Click
        Sleep, 1000
    }
    ; wait for new server
    ServerWait:
    PixelSearch, X, Y, 999, 850, 1078, 877, 0xDBC0A5, 3, Fast RGB
    If (ErrorLevel = 0){
        MouseMove, 956, 892
        Sleep, 1000
        Click
        Sleep, 1000
        BigClose()
        ; safety click if there's no extra event popup and options gets opened
        MouseMove, 60, 201,
        Sleep, 1000
        Click
        Sleep, 1000
        ; setup Hero Upgrade to Milestone
        MouseMove, 1458, 934
        Sleep, 1000
        Click
        Sleep, 1000
        ; click x3
        MouseMove, 1601, 979
        Sleep, 1000
        Click
        Sleep, 1000
        Click
        Sleep, 1000
        Click
        Sleep, 1000
        BigClose()
        ; run heroupgrade
        HeroUpgrade()
        MsgBox, , Server Switch, Clearing arena notification after server switch, 1.5
        Send, K
        Sleep, 1500
        BigClose()
        ; safety click in case options opened
        MouseMove, 73, 199
        Sleep, 1000
        Click
        Sleep, 500
        Return
    } Else {
        Goto, ServerWait
    }
}