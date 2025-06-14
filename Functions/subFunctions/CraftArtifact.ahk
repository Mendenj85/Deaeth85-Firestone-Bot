; CraftArtifact.ahk

#Include Functions\subFunctions\BigClose.ahk
#Include Functions\util.ahk

CraftArtifact(){
    PixelSearchRel(FoundX, FoundY, 305, 517, 356, 558, 0x0AA008, 3)
    If (ErrorLevel = 0){
        MoveMouseRel(227, 507)
        MsgBox, , Craft Artifact, Crafting an Artifact, 1.5
        Click
        Sleep, 10000
        BigClose()
    }
}