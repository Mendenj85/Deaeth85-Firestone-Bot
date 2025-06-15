; MainMenu.ahk (AHK v2)

#Include ..\util.ahk
#Include BigClose.ahk

MainMenu() {
    WinActivate("ahk_exe Firestone.exe ahk_class UnityWndClass")
    BigClose()
    Sleep(500)
    MoveMouseRel(1850, 60) ; Update these coordinates as needed
    Sleep(1000)
    Click()
    Sleep(1500)
}