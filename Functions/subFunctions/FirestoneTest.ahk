; FirestoneTest.ahk

global 1stSlotInProcess := 0
global 2ndSlotInProcess := 0

FirestoneTest() {
    ; check for completed research (2nd slot)
    PixelSearch, X, Y, 1235, 924, 1267, 966, 0x0AA008, 10, Fast RGB
    If (Error=0){
        MouseMove, 1198, 934
        Sleep, 1000
        Click
        Sleep, 1500
        2ndSlotInProcess := 0
    }
    ;check for completed research (1st slot)
    PixelSearch, X, Y, 592, 913, 619, 965, 0x0AA008, 10, Fast RGB
    If (ErrorLevel=0){
        MouseMove, 553, 944
        Sleep, 1000
        Click
        Sleep, 1500
        1stSlotInProcess := 0
    }
  
    ; look for no research in 2nd slot
    PixelSearch, X, Y, 1064, 887, 1170, 975, 0x488ADC, 10, Fast RGB
    If (ErrorLevel=0){
        2ndSlotInProcess := 0
    }
  
    ; look for no research in 1st slot
    PixelSearch, X, Y, 466, 892, 628, 986, 0x488ADC, 10, Fast RGB
    If (ErrorLevel=0){
        1stSlotInProcess := 0
    }
  
    ; look for 2nd slot in progress
    PixelSearch, X, Y, 1128, 937,1181, 987, 0xA30094, 10, Fast RGB
    If(ErrorLevel=0){
        2ndSlotInProcess := 1
    }
  
    ; look for 1st slot in progress
    PixelSearch, X, Y, 480, 935, 530, 992, 0xA30094, 10, Fast RGB
    If(ErrorLevel=0){
        1stSlotInProcess := 1
    }
}