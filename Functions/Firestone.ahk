; Firestone.ahk

#include Functions\subFunctions\BigClose.ahk
#include Functions\subFunctions\MainMenu.ahk
#Include Functions\subFunctions\OpenTown.ahk

;opens the firestone tree
GoFirestone(){
ControlFocus,, ahk_exe Firestone.exe
MainMenu()
OpenTown()
; open Library
MouseMove, 329, 657
Sleep, 1000
click
sleep, 1000
; select Firestone
MouseMove, 1809, 975
Sleep, 1000
click
Sleep, 1000
MouseMove, 1522,892
return
}

;the firestone function, a bit complicated to explain
FirestoneTest(){
MouseMove, 567, 958
Sleep, 1000
click
Sleep, 1000
;clicks to see if there is running missions or it can start
PixelSearch,X,Y, 1049, 318, 1338, 422, 0xEB00EF, 100, Fast RGB
  If(ErrorLevel=0){
    return
  }
  MouseMove, 567, 958
  Sleep, 1000
  click
  Sleep, 1000
; tries to find first node available, if none is found it will scroll the tree and restart the function
PixelSearch,X,Y, 205, 208, 1887, 850, 0x0D49DE, 100, Fast RGB
  if(ErrorLevel=1){
    loop, 35{
      Send {WheelDown}
      Sleep, 200
    }
  FirestoneTest()
  return
  }
  if(ErrorLevel=0){
    Sleep, 1000
    MouseMove, X, Y
    Click
    Sleep, 1000
    MouseMove, 812, 775
    Sleep, 1000
    Click
    Sleep, 1000
; after it starts the first node, it goes searching for the nodes in the following collumns
PixelSearch,W,Z,X+400,Y,1887,850, 0x0D49DE, 100, Fast RGB
  if(ErrorLevel=0){
    Sleep, 1000
    MouseMove, W, Z
    Click
    Sleep, 1000
    MouseMove, 812, 775
    Sleep, 1000
    Click
    Sleep, 1000
    BigClose()
    BigClose()
    return
  }
  if(ErrorLevel=1){
  ; searches for another node on the current commun
  PixelSearch,W,Z,X,Y+130,1887,850, 0x0D49DE, 3, Fast RGB
    if(ErrorLevel=0) {
      Sleep, 1000
      MouseMove, W, Z
      Click
      Sleep, 1000
      MouseMove, 812, 775
      Sleep, 1000
      Click
      Sleep, 1000
      BigClose()
      BigClose()
      return
    }
    if(ErrorLevel=1){
    ; if no nodes are found it check if the reest of the nodes are locked, otherwise it just scrolls on the tree
    PixelSearch,W,Z,205, 208, 1887, 850, 0x919CB2, 3, Fast RGB
      if(ErrorLevel=0){
      BigClose()
      BigClose()
      return
      }
      if(ErrorLevel=1){
        loop, 35{
          Send {WheelDown}
          Sleep, 200
        }
        PixelSearch,X,Y, 205, 208, 1887, 850, 0x0D49DE, 3, Fast RGB
          if(ErrorLevel=0){
            Sleep, 1000
            MouseMove, X, Y
            Click
            Sleep, 1000
            MouseMove, 812, 775
            Sleep, 1000
            Click
            Sleep, 1000
            loop, 35{
              Send {WheelUp}
              Sleep, 200
            }
            BigClose()
            BigClose()
            return
          }
          return
      }
    }
  }
}
}