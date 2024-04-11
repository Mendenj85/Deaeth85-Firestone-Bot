;ResearchSlotTest.ahk

ResearchSlotTest() {
    ; make sure slot 2 is purchased
    MsgBox, , Slot 2 Status ,Checking status of slot 2..., 1.5
    PixelSearch, X, Y, 1208, 892, 1264, 931, 0x6F6F6F, 1, Fast RGB
    If (ErrorLevel = 0){
        MsgBox, , Slot 2 Status, Slot 2 not purchased - setting to in progress, 1.5
        Slot2InProcess := 1
        Goto, Slot1Check
    }
    ; check for in process research in slot 2
    PixelSearch, X, Y, 1228, 889, 1269, 929, 0x916A37, 3, Fast RGB
    If (ErrorLevel = 0){
        MsgBox, , Slot 2 Status, Slot 2 is in progress., 1.5
        Slot2InProcess := 1
        Goto, Slot1Check
    }
    ; checking if slot 2 is ready for free claim
    PixelSearch, X, Y, 1234, 912, 1272, 974, 0xF9AA47, 3, Fast RGB
    If (ErrorLevel = 0){
        MouseMove, 1204, 938
        MsgBox, , Slot 2 Status, Slot 2 is able to be completed for free., 1.5
        Click
        Sleep, 1000
        Slot2InProcess := 0
        Goto, Slot1Check
    }
    ; checking if slot 2 is completed
    PixelSearch, X, Y, 1234, 912, 1272, 974, 0x0AA008, 3, Fast RGB
    If (ErrorLevel = 0){
        MsgBox, , Slot 2 Status, Slot 2 is completed and ready to claim., 1.5
        MouseMove, 1204, 938
        Sleep, 1000
        Click
        Sleep, 1000
        Slot2InProcess := 0
        Goto, Slot1Check
    }
    MsgBox, , Slot 2 Status, Slot 2 is not in progress., 1.5
    Slot2InProcess := 0
    Goto, Slot1Check
    
    Slot1Check:
    ; check for in process research in slot 1
    MsgBox, , Slot 1 Status, Checking status of slot 1... , 1.5
    PixelSearch, X, Y, 603, 891, 624, 932, 0x916A37, 3, Fast RGB
    If (ErrorLevel = 0){
        MsgBox, , Slot 1 Status, Slot 1 is in progress., 1.5
        Slot1InProcess := 1
        Return
    }
    ; checking if slot 1 is ready for free claim
    PixelSearch, X, Y, 588, 911, 620, 967, 0xF9AA47, 3, Fast RGB
    If (ErrorLevel = 0){
        MouseMove, 545, 940
        MsgBox, , Slot 1 Status, Slot 1 is able to be completed for free., 1.5
        Click
        Sleep, 1000
        Slot1InProcess := 0
        If (Slot2InProcess = 1){
            Slot1InProcess := 1
            Slot2InProcess := 0
            MsgBox, , Changing Slot Status, Changing Slot 1 to In Process and Slot 2 to Not in Process, 2
            Return
        }
    }
    ; checking if slot 1 is complete
    PixelSearch, X, Y, 588, 911, 620, 967, 0x0AA008, 3, Fast RGB
    If (ErrorLevel = 0){
        MsgBox, , Slot 1 Status, Slot 1 is completed and ready to claim., 1.5
        MouseMove, 545, 940
        Sleep, 1000
        Click
        Sleep, 1000
        Slot1InProcess := 0
        If (Slot2InProcess = 1){
            Slot1InProcess := 1
            Slot2InProcess := 0
            MsgBox, , Changing Slot Status, Changing Slot 1 to In Process and Slot 2 to Not in Process, 2
        }
        Return
    }
    MsgBox, , Slot 1 Status, Slot 1 is not in progress., 1.5
    Slot1InProcess := 0
}