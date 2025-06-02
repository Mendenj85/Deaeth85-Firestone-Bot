; OpenTown.ahk

; simple script to save on coding
OpenTown(){
    WinActivate, ahk_exe Firestone.exe
    MsgBox, , Open Town, Opening the Town Window, 1.5
    Send, T
    Sleep, 1500
}