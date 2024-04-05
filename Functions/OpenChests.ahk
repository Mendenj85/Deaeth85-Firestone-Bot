; OpenChests.ahk

#include Functions\subFunctions\MainMenu.ahk
#include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\Comet.ahk
#Include Functions\subFunctions\Lunar.ahk
#Include Functions\subFunctions\Solar.ahk

ControlFocus,, ahk_exe Firestone.exe
MainMenu()

OpenChests(){
    ; open bag
    MouseMove, 1581, 939
    Sleep, 1000
    Click
    Sleep, 1500
    ; click chests tab
    MouseMove, 1487, 460
    Sleep, 1000
    Click
    Sleep, 1500
    ; opens the first chest slot
    MouseMove, 1596, 364
    Sleep, 1000
    Click
    Sleep, 5000 ; 5 second delay to allow for lag
    ; click 1
    MouseMove, 914, 812
    Sleep, 1000
    Click
    Sleep, 5000
    ; clicks equip or space it should be
    MouseMove, 962, 850
    Sleep, 1000
    Click
    Sleep, 1500
    BigClose()
    ; failsafe in case big close opens options
    MouseMove, 622, 962
    Sleep, 1000
    Click
    Sleep, 1500
    }
    ; a second slot open attempt in case you have an un-openable chest in slot 1 (no cycle)
    MouseMove, 1712, 363
    Sleep, 1000
    Click
    Sleep, 5000 ; 5 second delay to allow for lag
    ; click 1
    MouseMove, 914, 812
    Sleep, 1000
    Click
    Sleep, 5000
    ; clicks equip or space it should be
    MouseMove, 962, 850
    Sleep, 1000
    Click
    Sleep, 1500
    BigClose()
    ; failsafe in case big close opens options
    MouseMove, 47, 622
    Sleep, 1000
    Click
    Sleep, 1500
    ; close bag
    MouseMove, 1870, 246
    Sleep, 1000
    Click
    Sleep, 1500
    Return

; section will trigger only if Upgrade Blessings is selected and Open Chests is not
OpenBlessChests(){
    ; open bag
    MouseMove, 1581, 939
    Sleep, 1000
    Click
    Sleep, 1500
    ; click chests tab
    MouseMove, 1487, 460
    Sleep, 1000
    Click
    Sleep, 1500
    ; look for blessing chests
    Comet()
    Lunar()
    Solar()
    ; close bag
    MouseMove, 1870, 246
    Sleep, 1000
    Click
    Sleep, 1500
}