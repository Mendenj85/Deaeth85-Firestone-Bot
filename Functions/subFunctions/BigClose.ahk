; BigClose.ahk (AHK v2)

#Include ..\util.ahk

BigClose() {
    ; Move mouse to close button and click (update coordinates as needed)
    MoveMouseRel(1800, 100)
    Sleep(500)
    Click()
    Sleep(500)
}
