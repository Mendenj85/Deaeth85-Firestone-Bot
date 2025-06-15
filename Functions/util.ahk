; util.ahk - Utility functions for Deaeth85 Firestone Bot (AHK v2)

#SingleInstance Force
SendMode "Input"
SetWorkingDir A_ScriptDir

; Skips a function if the checkbox is checked
SkipIfChecked(checkboxObj, func) {
    if checkboxObj.Value = 1
        return
    func.Call()
}

; Calls a function if the checkbox is checked
CallIfChecked(checkboxObj, func) {
    if checkboxObj.Value = 1
        func.Call()
}

; Calls one function if the checkbox is checked, another if not
CallOrRunIfChecked(checkboxObj, funcIfChecked, funcIfNotChecked) {
    if checkboxObj.Value = 1
        funcIfChecked.Call()
    else
        funcIfNotChecked.Call()
}

; Converts client coordinates (cx, cy) of Firestone.exe to screen coordinates (sx, sy)
ClientToScreen_Firestone(cx, cy, &sx, &sy) {
    hwnd := WinGetID("ahk_exe Firestone.exe")
    if !hwnd
        return false
    pt := Buffer(8, 0)
    NumPut("Int", cx, pt, 0)
    NumPut("Int", cy, pt, 4)
    DllCall("ClientToScreen", "Ptr", hwnd, "Ptr", pt)
    sx := NumGet(pt, 0, "Int")
    sy := NumGet(pt, 4, "Int")
    return true
}

; Returns coordinates scaled to current client area
GetWindowRelativeCoord(x, y) {
    baseWidth := 1920.0
    baseHeight := 1008.0
    titleHeight := 24.0 ; Height of the title bar in pixels

    hwnd := WinGetID("ahk_exe Firestone.exe")
    if (!hwnd) {
        MsgBox "Error: Firestone window not found!"
        return [0, 0]
    }

    rc := Buffer(16, 0)
    DllCall("GetClientRect", "Ptr", hwnd, "Ptr", rc)
    clientW := NumGet(rc, 8, "Int")
    clientH := NumGet(rc, 12, "Int")

    scaledX := Round(x * 1.0 * clientW / baseWidth)
    scaledY := Round(((y - titleHeight) * 1.0 * clientH) / baseHeight)

    return [scaledX, scaledY]
}

; Moves mouse relative to game window
MoveMouseRel(x, y) {
    coords := GetWindowRelativeCoord(x, y)
    cx := coords[1]
    cy := coords[2]

    if ClientToScreen_Firestone(cx, cy, &sx, &sy) {
        MouseMove(sx, sy, 0)
    }
    ; Debug details (uncomment for debugging)
    ; MsgBox "Moving mouse to " cx "[" x "] " cy "[" y "]"
}

; Clicks relative to game window
ClickRel(x, y) {
    coords := GetWindowRelativeCoord(x, y)
    cx := coords[1]
    cy := coords[2]

    if ClientToScreen_Firestone(cx, cy, &sx, &sy) {
        MouseMove(sx, sy, 0)
        Click(sx, sy)
        Sleep 100
    }
    ; Debug details (uncomment for debugging)
    ; MsgBox "Clicking at " cx "[" x "] " cy "[" y "]"
}

; PixelSearch relative to game window (AHK v2)
PixelSearchRel(&outX, &outY, x1, y1, x2, y2, color, variation := 0, options := "") {
    topLeft := GetWindowRelativeCoord(x1, y1)
    bottomRight := GetWindowRelativeCoord(x2, y2)

    ClientToScreen_Firestone(topLeft[1], topLeft[2], &sx1, &sy1)
    ClientToScreen_Firestone(bottomRight[1], bottomRight[2], &sx2, &sy2)

    try {
        found := PixelSearch(&outX, &outY, sx1, sy1, sx2, sy2, color, variation)
        ; Convert screen coords back to client-relative
        outX := outX - sx1 + x1
        outY := outY - sy1 + y1
        return found
    } catch {
        return false
    }
}
