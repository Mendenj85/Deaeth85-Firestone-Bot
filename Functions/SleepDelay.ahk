; SleepDelay.ahk

; This script uses the Delay() function from your Gui.ahk to pause for the user-selected delay.

#Include Gui.ahk

EndofLoopDelay() {
    GuiControlGet, SelectedDelay, , Delay
    Sleep, %SelectedDelay%*1000
}