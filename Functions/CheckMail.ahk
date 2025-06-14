; CheckMail.ahk

#Include Functions\subFunctions\BigClose.ahk
#Include Functions\util.ahk

CheckMail(){
    ControlFocus,, ahk_exe Firestone.exe
    ; open mail
    MoveMouseRel(56, 777)
    Sleep, 1000
    Click
    Sleep, 1000
    ; attempt to click claim
    PixelSearchRel(FoundX, FoundY, 1260, 780, 1334, 835, 0x0AA008, 3)
    If (ErrorLevel = 0){
        MoveMouseRel(1215, 808)
        Sleep, 1000
        Click
        Sleep, 1000
        ; click ok if mail had attachment, otherwise will be empty click in mail area
        MoveMouseRel(1172, 688)
        Sleep, 1000
        Click
        Sleep, 1000
    }
    ; delete mail if any there
    PixelSearchRel(FoundX, FoundY, 1533, 904, 1601, 969, 0xE9554E, 3)
    If (ErrorLevel = 0){
        MoveMouseRel(1569, 939)
        Sleep, 1000
        Click
        Sleep, 1000
    }
    BigClose()
}