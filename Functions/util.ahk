; util.ahk - Utility functions for Deaeth85 Firestone Bot

#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%

; Skips a function if the checkbox is checked
SkipIfChecked(checkbox, func){
    GuiControlGet, Checked, , %checkbox%
    If (Checked = 1) {
        Return
    } Else {
        %func%()
    }
}
; Calls a function if the checkbox is checked
CallIfChecked(checkbox, func){
    GuiControlGet, Checked, , %checkbox%
    If (Checked = 1) {
        %func%()
    }
}

; Calls a function or jumps to a label based on checkbox
CallOrGotoIfChecked(checkbox, label, func){
    GuiControlGet, Checked, , %checkbox%
    If (Checked = 1) {
        Goto, %label%
    } Else {
        %func%()
    }
}

; ========= Resolution-Independent Utilities for AHK v1 =========

global baseWidth := 1920
global baseHeight := 1080

; --- Returns coordinates scaled to current client area ---
GetWindowRelativeCoord(x, y)
{
    global baseWidth, baseHeight
    WinGet, hwnd, ID, ahk_exe Firestone.exe
    if (!hwnd) {
        MsgBox, Error: Firestone window not found!
        return [0, 0]
    }

    ; Get client area size
    VarSetCapacity(rc, 16, 0)
    DllCall("GetClientRect", "Ptr", hwnd, "Ptr", &rc)
    clientW := NumGet(rc, 8, "Int")
    clientH := NumGet(rc, 12, "Int")

    ; Get top-left corner of client on screen
    VarSetCapacity(pt, 8, 0)
    DllCall("ClientToScreen", "Ptr", hwnd, "Ptr", &pt)
    screenX := NumGet(pt, 0, "Int")
    screenY := NumGet(pt, 4, "Int")

    ; Scale the coordinates
    scaledX := screenX + Round(x * clientW / baseWidth)
    scaledY := screenY + Round(y * clientH / baseHeight)
    return [scaledX, scaledY]
}

; --- Moves mouse relative to game window ---
MoveMouseRel(x, y)
{
    coords := GetWindowRelativeCoord(x, y)
    MouseMove, % coords[1], % coords[2]
}

; --- Clicks relative to game window ---
ClickRel(x, y)
{
    coords := GetWindowRelativeCoord(x, y)
    MouseMove, % coords[1], % coords[2]
    Click
}

; --- PixelSearch relative to game window ---
PixelSearchRel(ByRef outX, ByRef outY, x1, y1, x2, y2, color, variation := 0, options := "")
{
    global baseWidth, baseHeight
    WinGet, hwnd, ID, ahk_exe Firestone.exe
    if (!hwnd)
    {
        MsgBox, Error: Could not find Firestone window for PixelSearch!
        return false
    }

    ; Get client area
    VarSetCapacity(rc, 16, 0)
    DllCall("GetClientRect", "Ptr", hwnd, "Ptr", &rc)
    clientW := NumGet(rc, 8, "Int")
    clientH := NumGet(rc, 12, "Int")

    ; Get top-left of client area on screen
    VarSetCapacity(pt, 8, 0)
    DllCall("ClientToScreen", "Ptr", hwnd, "Ptr", &pt)
    screenX := NumGet(pt, 0, "Int")
    screenY := NumGet(pt, 4, "Int")

    ; Scale search box
    sx1 := screenX + Round(x1 * clientW / baseWidth)
    sy1 := screenY + Round(y1 * clientH / baseHeight)
    sx2 := screenX + Round(x2 * clientW / baseWidth)
    sy2 := screenY + Round(y2 * clientH / baseHeight)

    ; Perform the pixel search
    PixelSearch, outX, outY, sx1, sy1, sx2, sy2, color, variation, %options%
    return !ErrorLevel
}