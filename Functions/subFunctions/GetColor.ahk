; GetColor.ahk (AHK v2)

; Function that automatically gets the color for the main menu check
GetColor() {
    hwnd := WinGetID("ahk_exe Firestone.exe")
    if !hwnd {
        MsgBox("Error: Firestone window not found!")
        return
    }
    ; Get window position and size
    wx := wy := ww := wh := 0
    WinGetPos(&wx, &wy, &ww, &wh, "ahk_id " hwnd)
    x := wx + Round(ww * (135/1920))
    y := wy + Round(wh * (54/1080))
    color := PixelGetColor(x, y, "RGB")
    return color
}