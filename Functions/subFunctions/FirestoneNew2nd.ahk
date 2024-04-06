; FirestoneNew2nd.ahk

FirestoneNew2nd() {
    ; start new research if able for 2nd slot
    If (2ndSlotInProcess = 0){
        Loop, 35{
            Send, {WheelUp}
            Sleep, 200
        }
        PixelSearch, FoundX, FoundY, 181, 158, 1896, 835, 0x0D49DE, 10, Fast RGB
        if(ErrorLevel=0){
            MouseMove, FoundX, FoundY
            Sleep, 1000
            Click
            Sleep, 1500
            MouseMove, 806, 765
            Sleep, 1000
            Click
            Sleep, 1500
        } Else {
            loop, 35{
                Send {WheelDown}
                Sleep, 200
            }
            PixelSearch, FoundX, FoundY, 181, 158, 1896, 835, 0x0D49DE, 10, Fast RGB
            if(ErrorLevel=0){
                MouseMove, FoundX, FoundY
                Sleep, 1000
                Click
                Sleep, 1500
            }
        }
    }
}