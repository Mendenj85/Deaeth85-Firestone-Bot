; OpenTown.ahk (AHK v2)

#Include ..\util.ahk

; Simple script to save on coding
OpenTown() {
    WinActivate("ahk_exe Firestone.exe")
    ToolTip("Opening the Town Window")
    SetTimer(() => ToolTip(), -1500)
    Send("T")
}