; maps test

#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\MapClose.ahk

MapTest(){
    Scout:
        PixelSearch, FoundX, FoundY, 270, 35, 1651, 1015, 0x61E2F7, 3, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, FoundX, FoundY
            Sleep, 1000
            Click
            Sleep, 1000
        }
            PixelSearch, X, Y, 953, 822, 1205, 898, 0x0AA008, 10, Fast RGB
            If(ErrorLevel=0){
                MsgBox, , Mission Start, Mission found - Starting, 2
                MouseMove, 1084, 865
                Sleep, 1000
                Click
                Sleep, 1500
            MsgBox, , Troop Check, Looking for more idle troops, 2
        } Else {
            Goto, Adventure
        }
        ; check for more idle troops
        PixelSearch, X, Y, 1175, 996, 1187, 1012, 0x542710, 10, Fast RGB
            If(ErrorLevel=0){
                Goto, Scout
            }
    Adventure:
        PixelSearch, FoundX, FoundY, 270, 35, 1651, 1015, 0x43FFD4, 3, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, FoundX, FoundY
            Sleep, 1000
            Click
            Sleep, 1000
        }
            PixelSearch, X, Y, 953, 822, 1205, 898, 0x0AA008, 10, Fast RGB
            If(ErrorLevel=0){
                MsgBox, , Mission Start, Mission found - Starting, 2
                MouseMove, 1084, 865
                Sleep, 1000
                Click
                Sleep, 1500
            MsgBox, , Troop Check, Looking for more idle troops, 2
        } Else {
            Goto, War
        }
        ; check for more idle troops
        PixelSearch, X, Y, 1175, 996, 1187, 1012, 0x542710, 10, Fast RGB
            If(ErrorLevel=0){
                Goto, Adventure
            }
    War:
        PixelSearch, FoundX, FoundY, 270, 35, 1651, 1015, 0xFF6A65, 3, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, FoundX, FoundY
            Sleep, 1000
            Click
            Sleep, 1000
        }
            PixelSearch, X, Y, 953, 822, 1205, 898, 0x0AA008, 10, Fast RGB
            If(ErrorLevel=0){
                MsgBox, , Mission Start, Mission found - Starting, 2
                MouseMove, 1084, 865
                Sleep, 1000
                Click
                Sleep, 1500
            MsgBox, , Troop Check, Looking for more idle troops, 2
        } Else {
            Goto, Monster
        }
        ; check for more idle troops
        PixelSearch, X, Y, 1175, 996, 1187, 1012, 0x542710, 10, Fast RGB
            If(ErrorLevel=0){
                Goto, War
            }
    Monster:
        PixelSearch, FoundX, FoundY, 270, 35, 1651, 1015, 0xC14BF6, 3, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, FoundX, FoundY
            Sleep, 1000
            Click
            Sleep, 1000
        }
            PixelSearch, X, Y, 953, 822, 1205, 898, 0x0AA008, 10, Fast RGB
            If(ErrorLevel=0){
                MsgBox, , Mission Start, Mission found - Starting, 2
                MouseMove, 1084, 865
                Sleep, 1000
                Click
                Sleep, 1500
            MsgBox, , Troop Check, Looking for more idle troops, 2
        } Else {
            Goto, Dragon
        }
        ; check for more idle troops
        PixelSearch, X, Y, 1175, 996, 1187, 1012, 0x542710, 10, Fast RGB
            If(ErrorLevel=0){
                Goto, Monster
            }
    Dragon:
        PixelSearch, FoundX, FoundY, 270, 35, 1651, 1015, 0xFAF265, 3, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, FoundX, FoundY
            Sleep, 1000
            Click
            Sleep, 1000
        }
            PixelSearch, X, Y, 953, 822, 1205, 898, 0x0AA008, 10, Fast RGB
            If(ErrorLevel=0){
                MsgBox, , Mission Start, Mission found - Starting, 2
                MouseMove, 1084, 865
                Sleep, 1000
                Click
                Sleep, 1500
        
            MsgBox, , Troop Check, Looking for more idle troops, 2
        } Else {
            Goto, Naval
        }
        ; check for more idle troops
        PixelSearch, X, Y, 1175, 996, 1187, 1012, 0x542710, 10, Fast RGB
            If(ErrorLevel=0){
                Goto, Dragon
            }
    Naval:
        PixelSearch, FoundX, FoundY, 270, 35, 1651, 1015, 0xEB3F00, 3, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, FoundX, FoundY
            Sleep, 1000
            Click
            Sleep, 1000
        }
            PixelSearch, X, Y, 953, 822, 1205, 898, 0x0AA008, 10, Fast RGB
            If(ErrorLevel=0){
                MsgBox, , Mission Start, Mission found - Starting, 2
                MouseMove, 1084, 865
                Sleep, 1000
                Click
                Sleep, 1500
            
            MsgBox, , Troop Check, Looking for more idle troops, 2
        } Else {
            Goto, Titan
        }
        ; check for more idle troops
        PixelSearch, X, Y, 1175, 996, 1187, 1012, 0x542710, 10, Fast RGB
            If(ErrorLevel=0){
                Goto, Naval
            }
    Titan:
        PixelSearch, FoundX, FoundY, 270, 35, 1651, 1015, 0xFF5F07, 3, Fast RGB
        If (ErrorLevel = 0){
            MouseMove, FoundX, FoundY
            Sleep, 1000
            Click
            Sleep, 1000
        }
            PixelSearch, X, Y, 953, 822, 1205, 898, 0x0AA008, 10, Fast RGB
            If(ErrorLevel=0){
                MsgBox, , Mission Start, Mission found - Starting, 2
                MouseMove, 1084, 865
                Sleep, 1000
                Click
                Sleep, 1500
            MsgBox, , Troop Check, Looking for more idle troops, 2
        } Else {
            Return
        }
        ; check for more idle troops
        PixelSearch, X, Y, 1175, 996, 1187, 1012, 0x542710, 10, Fast RGB
            If(ErrorLevel=0){
                Goto, Titan
            }
}