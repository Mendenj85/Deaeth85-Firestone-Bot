; GoMap.ahk (AHK v2)

#Include MainMenu.ahk
#Include ..\MapRedeem.ahk

GoMap() {
    WinActivate("ahk_exe Firestone.exe ahk_class UnityWndClass")
    ToolTip("Opening the map window")
    SetTimer(() => ToolTip(), -1500)
    Send("M")
    Sleep(1500)
    MapRedeem()
}
