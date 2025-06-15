; CraftArtifact.ahk (AHK v2)

#Include ..\util.ahk
#Include BigClose.ahk

CraftArtifact() {
    if PixelSearchRel(&FoundX, &FoundY, 305, 517, 356, 558, 0x0AA008, 3) {
        MoveMouseRel(227, 507)
        ToolTip("Crafting an Artifact")
        SetTimer(() => ToolTip(), -1500)
        Click()
        Sleep(10000)
        BigClose()
    }
}