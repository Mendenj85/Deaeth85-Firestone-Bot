; SellExotic.ahk

#Include Functions\BuyExotic.ahk
#Include Functions\subFunctions\MainMenu.ahk
#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\OpenTown.ahk

ControlFocus,, ahk_exe Firestone.exe
MainMenu()

SellExotic(){
    OpenTown()
    ; Open exotic merchant
    MouseMove, 1459, 650
    Sleep, 1000
    Click
    Sleep, 1500
    ; make sure we are at the top
    Loop, 35{
        Send, {WheelUp}
        Sleep, 200
    }
    ; sell scroll of speed
    MouseMove, 959, 596
    Sleep, 1000
    Click
    Sleep, 1500
    ; sell scroll of damage
    MouseMove, 1280, 601
    Sleep, 1000
    Click
    Sleep, 1500
    ; sell scroll of health
    MouseMove, 1595, 592
    Sleep, 1000
    Click
    Sleep, 1500
    ; check if Sell ALL exotic items is checked
    GuiControlGet, Checked, , SellAll,
    If (Checked = 1){
        ; sell midas' touch
        MouseMove, 962, 908
        Sleep, 1000
        Click
        Sleep, 1500
        ; sell pouch of gold
        MouseMove, 1278, 910
        Sleep, 1000
        Click
        Sleep, 1500
        ; sell bucket of gold
        MouseMove, 1602, 911
        Sleep, 1000
        Click
        Sleep, 1500
        ; scroll to bottom
        Loop, 35{
            Send, {WheelDown}
            Sleep, 200
        }
        ; sell crate of gold
        MouseMove, 967, 307
        Sleep, 1000
        Click
        Sleep, 1500
        ; sell barrel of gold
        MouseMove, 1280, 313
        Sleep, 1000
        Click
        Sleep, 1500
        ; sell drums of war
        MouseMove, 1611, 313
        Sleep, 1000
        Click
        Sleep, 1500
        ; sell dragon armor
        MouseMove, 954, 616
        Sleep, 1000
        Click
        Sleep, 1500
        ; sell guardian's rune
        MouseMove, 1269, 608
        Sleep, 1000
        Click
        Sleep, 1500
        ; sell totem of agony
        MouseMove, 1591, 610
        Sleep, 1000
        Click
        Sleep, 1500
        ; sell totem of annihilation
        MouseMove, 951, 934
        Sleep, 1000
        Click
        Sleep, 1500
    } Else {
        ; check if Sell All But Keep Gold Items is checked
        GuiControlGet, Checked, , SellNoGold,
        If (Checked = 1){
            Loop, 35{
                Send, {WheelDown}
                Sleep, 200
            }
            ; sell drums of war
            MouseMove, 1611, 313
            Sleep, 1000
            Click
            Sleep, 1500
            ; sell dragon armor
            MouseMove, 954, 616
            Sleep, 1000
            Click
            Sleep, 1500
            ; sell guardian's rune
            MouseMove, 1269, 608
            Sleep, 1000
            Click
            Sleep, 1500
            ; sell totem of agony
            MouseMove, 1591, 610
            Sleep, 1000
            Click
            Sleep, 1500
            ; sell totem of annihilation
            MouseMove, 951, 934
            Sleep, 1000
            Click
            Sleep, 1500
        }
    }
    ; check if buy exotic chests is checked
    GuiControlGet, Checked, , BuyEx,
    If (Checked = 1) {
        BuyExotic()
    }
BigClose()
BigClose()
}