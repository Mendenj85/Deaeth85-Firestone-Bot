; ResearchStart.ahk

#Include Functions\subFunctions\ResearchClicks.ahk

ResearchStart() {
    MouseMove, 1429, 944
    MsgBox, , Setup, Scrolling to ensure tree setup, 1.5
    If (Slot2InProcess = 1){
        Return
    }
    Loop, 35{
        Send, {WheelUp}
        Sleep, 200
    }
    ; look for available research - Page 1
    Loop {
	    XCheck := A_Index * 100
        PixelSearch, X, Y, XCheck, 300, XCheck + 50, 750, 0x0D49DE, 0, Fast RGB   ;  Search coords X 100 - X 1750
        If (ErrorLevel = 0){
            MouseClick, Left, X, Y, 1, 0
            Sleep, 500
            ResearchClicks()
        }
        If (Slot2InProcess = 1){
            Return
        }
	    if (XCheck == 1700)
		    break
    }
    ; Page 2
    Loop, 35{
        Send, {WheelDown}
        Sleep, 200
    }
    Loop {
	    XCheck := A_Index * 100
        PixelSearch, X, Y, XCheck, 300, XCheck + 100, 750, 0x0D49DE, 0, Fast RGB   ;  Search coords X 100 - X 1700
        If (ErrorLevel = 0){
            MouseClick, Left, X, Y, 1, 0
            Sleep, 500
            ResearchClicks()
        }
        If (Slot2InProcess = 1){
            Return
        }
	    if (XCheck == 1700)
		    break
    }
}
