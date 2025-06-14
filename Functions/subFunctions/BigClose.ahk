; BigClose.ahk

; Function to close menus
BigClose(){
    ; Use resolution-independent close (top-right X)
    MoveMouseRel(1851, 84)
    Sleep, 1000
    Click
    Sleep, 1500
    Return
}
