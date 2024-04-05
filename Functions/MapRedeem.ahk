; Function to redeem the missions
MapRedeem(){
    ControlFocus,, ahk_exe Firestone.exe
    MouseMove, 94, 325
    Sleep, 1000
    Click
    Sleep, 1000

    ; Check if the mission reward page is shown
    PixelSearch, X, Y, 476, 263, 476, 263, 0xE1CDAC, 150, Fast RGB
    if (ErrorLevel = 1){
        ; Mission reward page not found, close map
        MapClose()

        ; Check if there are idle troops
        PixelSearch, X, Y, 459, 1007, 459, 1007, 0xEFD9C0, 150, Fast RGB
        if (ErrorLevel = 0){
            ; Idle troops found, start map missions
            MapStart()
        }
    }

    ; Check if progress image is found
    ImageSearch, X, Y, 758, 509, 1177, 753, Images\progress.png, 50
    if (ErrorLevel = 1){
        ; Progress image not found, recursively call MapRedeem to retry
        MapRedeem()
    }

    ; Progress image found, handle it (e.g., click on it)

    ; Close map after handling progress
    MapClose()

    ; Check if there are idle troops after closing map
    PixelSearch, X, Y, 459, 1007, 459, 1007, 0xEFD9C0, 150, Fast RGB
    if (ErrorLevel = 0){
        ; Idle troops found, start map missions
        MapStart()
    }

    ; No idle troops found, end function
    return
}
