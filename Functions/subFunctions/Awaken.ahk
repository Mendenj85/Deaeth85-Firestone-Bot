; Awaken.ahk

#Include Functions\subFunctions\BigClose.ahk
#Include Functions\util.ahk

AwakenRun(){
    ControlFocus,, ahk_exe Firestone.exe

    ; Check for awaken heroes notification on crystal screen
    PixelSearchRel(foundX, foundY, 1877, 308, 1905, 339, 0xF40000, 3)
    If (ErrorLevel = 0){
        MoveMouseRel(1826, 360)
        Sleep, 1000
        Click
        Sleep, 1500

        ; Look for and click highest x#
        PixelSearchRel(foundX, foundY, 1839, 313, 1902, 328, 0x0AA008, 3)
        If (ErrorLevel = 0){
            MoveMouseRel(1865, 338)
            Sleep, 1000
            Click
            Sleep, 1000
        } Else {
            PixelSearchRel(foundX, foundY, 1739, 316, 1802, 330, 0x0AA008, 3)
            If (ErrorLevel = 0){
                MoveMouseRel(1767, 342)
                Sleep, 1000
                Click
                Sleep, 1000
            } Else {
                ; Using raw percent-based math previously — convert to relative coords
                PixelSearchRel(foundX, foundY, 1639, 315, 1706, 319, 0x0AA008, 3)
                If (ErrorLevel = 0){
                    MoveMouseRel(1676, 339)
                    Sleep, 1000
                    Click
                    Sleep, 1000
                }
            }
        }

        ; Change to auto
        MoveMouseRel(1774, 993)
        Sleep, 1000
        Click
        Sleep, 20000

        BigClose()
    }
}
