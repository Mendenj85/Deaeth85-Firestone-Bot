; HeroUpgrade.ahk

#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\MainMenu.ahk

; function that upgrades heros
HeroUpgrade(){
    ControlFocus,, ahk_exe Firestone.exe
    ; open upgrade menu
    MsgBox, , Hero Upgrades, Opening Hero Upgrade Menu, 2
    Send, U
    Sleep, 1500
    ; check special upgrade
    PixelSearch, X, Y, 1874, 207, 1889, 249, 0x0AA008, 3, Fast RGB
    If (ErrorLevel = 0 ){
    MouseMove, 1769, 205
    Sleep, 1000
    Click
    Sleep, 500
    }
    ; check 5th hero
    PixelSearch, X, Y, 1868, 880, 1885, 912, 0x0AA008, 3, Fast RGB
    If (ErrorLevel = 0 ){
    MouseMove, 1752, 873
    Sleep, 1000
    Click
    Sleep, 500
    }
    ; check 4th hero
    PixelSearch, X, Y, 1864, 770, 1889, 802, 0x0AA008, 3, Fast RGB
    If (ErrorLevel = 0 ){
    MouseMove, 1770, 772
    Sleep, 1000
    Click
    Sleep, 500
    }
    ; check 3rd hero
    PixelSearch, X, Y, 1866, 654, 1889, 693, 0x0AA008, 3, Fast RGB
    If (ErrorLevel = 0 ){
    MouseMove, 1773, 650
    Sleep, 1000
    Click
    Sleep, 500
    }
    ; check 2nd hero
    PixelSearch, X, Y, 1866, 545, 1885, 584, 0x0AA008, 3, Fast RGB
    If (ErrorLevel = 0 ){
    MouseMove, 1759, 539
    Sleep, 1000
    Click
    Sleep, 500
    }
    ; check 1st hero
    PixelSearch, X, Y, 1862, 434, 1888, 469, 0x0AA008, 3, Fast RGB
    If (ErrorLevel = 0 ){
    MouseMove, 1763, 427
    Sleep, 1000
    Click
    Sleep, 500
    }
    ; check guardian
    PixelSearch, X, Y, 1869, 319, 1890, 352, 0x0AA008, 3, Fast RGB
    If (ErrorLevel = 0 ){
    MouseMove, 1757, 317
    Sleep, 1000
    Click
    Sleep, 500
    }
    BigClose()
}