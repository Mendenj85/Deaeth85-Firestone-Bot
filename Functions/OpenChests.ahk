; OpenChests.ahk

#Include Functions\subFunctions\MainMenu.ahk
#Include Functions\subFunctions\BigClose.ahk
#Include Functions\subFunctions\Comet.ahk
#Include Functions\subFunctions\Common.ahk
#Include Functions\subFunctions\Cosmic.ahk
#Include Functions\subFunctions\Diamond.ahk
#Include Functions\subFunctions\Emerald.ahk
#Include Functions\subFunctions\Epic.ahk
#Include Functions\subFunctions\Galaxy.ahk
#Include Functions\subFunctions\Golden.ahk
#Include Functions\subFunctions\Iron.ahk
#Include Functions\subFunctions\Legendary.ahk
#Include Functions\subFunctions\Lunar.ahk
#Include Functions\subFunctions\MysteryBox.ahk
#Include Functions\subFunctions\Mythic.ahk
#Include Functions\subFunctions\Nebula.ahk
#Include Functions\subFunctions\Opal.ahk
#Include Functions\subFunctions\OraclesGift.ahk
#Include Functions\subFunctions\Solar.ahk
#Include Functions\subFunctions\Rare.ahk
#Include Functions\subFunctions\Uncommon.ahk
#Include Functions\subFunctions\Wooden.ahk

ControlFocus,, ahk_exe Firestone.exe
MainMenu()

OpenChests(){
    ; open bag
    MouseMove, 1581, 939
    Sleep, 1000
    Click
    Sleep, 1000
    ; click chests tab
    MouseMove, 1487, 460
    Sleep, 1000
    Click
    Sleep, 1000
    ; looks for Gear Chests
    GuiControlGet, SelectedItem, ,GearChestExclude,
    If (SelectedItem="Exclude All"){
        Goto, JewelChests
    }
    GuiControlGet, SelectedItem, ,GearChestExclude,
    If (SelectedItem="Don't Exclude Any"){
        Goto, Mythic
    }    
    GuiControlGet, SelectedItem, ,GearChestExclude,
    If (SelectedItem="Mythic"){
        Goto, Legendary
    }
    GuiControlGet, SelectedItem, ,GearChestExclude,
    If (SelectedItem="Legendary and Higher"){
        Goto, Epic
    }
    GuiControlGet, SelectedItem, ,GearChestExclude,
    If (SelectedItem="Epic and Higher"){
        Goto, Rare
    }    
    Mythic:
    MsgBox, , Open Chests, Opening Mythic Chests, 2
    Mythic()
    Legendary:
    MsgBox, , Open Chests, Opening Legendary Chests, 2
    Legendary()
    Epic:
    MsgBox, , Open Chests, Opening Epic Chests, 2
    Epic()
    Rare:
    MsgBox, , Open Chests, Opening Rare Chests, 2
    Rare()
    MsgBox, , Open Chests, Opening Uncommon Chests, 2
    Uncommon()
    MsgBox, , Open Chests, Opening Common Chests, 2
    Common()

    JewelChests:
    ; look for Jewel Chests
    GuiControlGet, SelectedItem, ,JewelChestExclude,
    If (SelectedItem="Exclude All"){
        Goto, Gifts
    }
    GuiControlGet, SelectedItem, ,JewelChestExclude,
    If (SelectedItem="Don't Exclude Any"){
        Goto, Emerald
    }
    GuiControlGet, SelectedItem, ,JewelChestExclude,
    If (SelectedItem="Diamond and Higher"){
        Goto, Golden
    }
    GuiControlGet, SelectedItem, ,JewelChestExclude,
    If (SelectedItem="Opal and Higher"){
        Goto, Diamond
    }
    GuiControlGet, SelectedItem, ,JewelChestExclude,
    If (SelectedItem="Emerald"){
        Goto, Opal
    }
    Emerald:
    MsgBox, , Open Chests, Opening Emerald Chests, 2
    Emerald()
    Opal:
    MsgBox, , Open Chests, Opening Opal Chests, 2
    Opal()
    Diamond:
    MsgBox, , Open Chests, Opening Diamond Chests, 2
    Diamond()
    Golden:
    MsgBox, , Open Chests, Opening Golden Chests, 2
    Golden()
    MsgBox, , Open Chests, Opening Iron Chests, 2
    Iron()
    MsgBox, , Open Chests, Opening Wooden Chests, 2
    Wooden()
    
    Gifts:
    ; look for Gifts
    MsgBox, , Open Chests, Opening Oracle Gifts, 2
    OraclesGift()
    MsgBox, , Open Chests, Opening Mystery Boxes, 2
    MysteryBox()

    ;close bag
    MouseMove, 1870, 246
    Sleep, 1000
    Click
    Sleep, 1500
    Return
}
; section will trigger only if Upgrade Blessings is selected and Open Chests is not
OpenBlessChests(){
    ; open bag
    MouseMove, 1581, 939
    Sleep, 1000
    Click
    Sleep, 1000
    ; click chests tab
    MouseMove, 1487, 460
    Sleep, 1000
    Click
    Sleep, 1000
    ; look for blessing chests
    MsgBox, , Open Chests, Opening Galaxy Chests, 2
    Galaxy()
    MsgBox, , Open Chests, Opening Cosmic Chests, 2
    Cosmic()
    MsgBox, , Open Chests, Opening Nebula Chests, 2
    Nebula()
    MsgBox, , Open Chests, Opening Solar Chests, 2
    Solar()
    MsgBox, , Open Chests, Opening Lunar Chests, 2
    Lunar()
    MsgBox, , Open Chests, Opening Comet Chests, 2
    Comet()
    ; close bag
    MouseMove, 1870, 246
    Sleep, 1000
    Click
    Sleep, 1000
}
