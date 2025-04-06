; ResearchStart.ahk

#Include Functions\subFunctions\ResearchClicks.ahk

ResearchStart() {
    MouseMove, 1429, 944
    MsgBox, , Setup, Scrolling to ensure tree setup, 1.5
    If (Slot2InProcess = 1){
        Return
    }
    
    ; Page 2
    Loop, 35{
        Send, {WheelDown}
        Sleep, 200
    }
    Loop {
	    XCheck := 1700 - ((A_Index - 1) * 100)
        PixelSearch, X, Y, XCheck, 300, XCheck + 100, 750, 0x0D49DE, 0, Fast RGB   ;  Search coords X 100 - X 1700
        If (ErrorLevel = 0){
            MouseClick, Left, X, Y, 1, 0
            Sleep, 500
            ResearchClicks()
        }
        If (Slot2InProcess = 1){
            Return
        }
	    if (XCheck < 100)
            break
    }
    Loop, 35{
        Send, {WheelUp}
        Sleep, 200
    }
    ; look for available research - Page 1
    Loop {
	    XCheck := 1700 - ((A_Index - 1) * 100)
        PixelSearch, X, Y, XCheck, 300, XCheck + 50, 750, 0x0D49DE, 0, Fast RGB   ;  Search coords X 100 - X 1750
        If (ErrorLevel = 0){
            MouseClick, Left, X, Y, 1, 0
            Sleep, 500
            ResearchClicks()
        }
        If (Slot2InProcess = 1){
            Return
        }
	    if (XCheck < 100)
            break
    }
}
