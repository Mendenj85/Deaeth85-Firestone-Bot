; UseTavernToken.ahk (AHK v2)

#Include ..\util.ahk
#Include MainMenu.ahk
#Include BigClose.ahk

global UseThree := 0
global UseTwo := 0
global UseOne := 0

UseToken() {
    global UseThree, UseTwo, UseOne

    ; check for 3 use token buttons (resolution independent)
    PixelSearchRel(&FoundX, &FoundY, 705, 932, 752, 988, 0x0AA008, 3)
    if !A_LastError {
        PixelSearchRel(&FoundX, &FoundY, 1019, 934, 1050, 991, 0x0AA008, 3)
        if !A_LastError {
            PixelSearchRel(&FoundX, &FoundY, 1250, 932, 1279, 987, 0x0AA008, 3)
            if !A_LastError {
                UseThree := 1
            }
        }
    }
    ; check for 2 use token buttons
    PixelSearchRel(&FoundX, &FoundY, 815, 934, 875, 987, 0x0AA008, 3)
    if !A_LastError {
        PixelSearchRel(&FoundX, &FoundY, 1134, 934, 1163, 980, 0x0AA008, 3)
        if !A_LastError {
            UseTwo := 1
        }
    }
    ; check for one use token button
    PixelSearchRel(&FoundX, &FoundY, 1019, 934, 1050, 991, 0x0AA008, 3)
    if !A_LastError {
        UseOne := 1
    }
    if (UseThree = 1) {
        MoveMouseRel(1188, 959)
        Sleep(1000)
        Click()
        Sleep(1000)
    } else if (UseTwo = 1) {
        MoveMouseRel(1082, 957)
        Sleep(1000)
        Click()
        Sleep(1000)
    } else if (UseOne = 1) {
        MoveMouseRel(962, 958)
        Sleep(1000)
        Click()
        Sleep(1000)
    } else {
        return
    }

    ; Define the X and Y coordinates for each card (absolute, util.ahk will convert)
    XCoords := [680, 956, 1243, 680, 956, 1243]
    YCoords := [315, 315, 315, 715, 715, 715]

    ; Generate a random index for card selection to be randomized
    RandomIndex := Random(1, 6)

    ; Get the random location
    RandomX := XCoords[RandomIndex]
    RandomY := YCoords[RandomIndex]
    Sleep(1000)
    MoveMouseRel(RandomX, RandomY)
    Sleep(1000)
    Click()
    Sleep(1000)

    ; random click in case get game tokens was clicked
    MoveMouseRel(1257, 49)
    Sleep(1000)
    Click()
    Sleep(1000)
}