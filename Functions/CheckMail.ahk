; CheckMail.ahk

#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\MainMenu.ahk

CheckMail(){
    ControlFocus,, ahk_exe Firestone.exe
    MainMenu()
    ; open mail
    MouseMove, 56, 777
    Sleep, 1000
    Click
    Sleep, 1500
    ; attempt to click claim
    MouseMove, 1215, 808
    Sleep, 1000
    Click
    Sleep, 1500
    ; click ok if mail had attachment, otherwise will be empty click in mail area
    MouseMove, 1172, 688
    Sleep, 1000
    Click
    Sleep, 1500
    ; delete claimed mail
    MouseMove, 1569, 939
    Sleep, 1000
    Click
    Sleep, 1500
    BigClose()
}