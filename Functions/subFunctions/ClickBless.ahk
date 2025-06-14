; ClickBless.ahk

#Include Functions\util.ahk

; Simple script to click the Bless box
ClickBless(){
    ; Click the Bless box
    MoveMouseRel(1371, 812)
    Sleep, 1000
    Click
    Sleep, 1000

    ; Confirm the blessing
    MoveMouseRel(471, 643)
    Sleep, 1000
    Click
    Sleep, 1000
}
