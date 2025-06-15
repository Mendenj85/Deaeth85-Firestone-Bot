; SleepDelay.ahk

; This script pauses for the user-selected delay using the delayDD control object from your Gui.ahk.

EndofLoopDelay() {
    global delayDD 
    SelectedDelay := delayDD.Value
    Sleep SelectedDelay * 1000
}