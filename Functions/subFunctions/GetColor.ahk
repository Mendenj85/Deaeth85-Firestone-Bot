; GetColor.ahk

; Function that automatically gets the color for the main menu check
GetColor()
{
    ControlFocus,, ahk_exe Firestone.exe
    ; Get color at a resolution-independent position using util.ahk functions
    ; Use MoveMouseRel for consistency, but do not actually move the mouse, just calculate position
    WinGetPos, wx, wy, ww, wh, ahk_exe Firestone.exe
    x := wx + Round(ww * (135/1920))
    y := wy + Round(wh * (54/1080))
    PixelGetColor, Color, %x%, %y%, RGB
    return Color
}