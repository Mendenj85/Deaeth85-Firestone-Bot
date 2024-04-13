; CraftArtifact.ahk

#Include Functions\subFunctions\BigClose.ahk

CraftArtifact(){
    PixelSearch, X, Y, 305, 517, 356, 558, 0x0AA008, 3, Fast RGB
    If (ErrorLevel = 0){
        MouseMove, 227, 507
        MsgBox, , Craft Artifact, Crafting an Artifact, 1.5
        Click
        Sleep, 10000
        BigClose()
    }
}