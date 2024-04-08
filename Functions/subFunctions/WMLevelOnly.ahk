; WMLevelOnly.ahk

LevelOnly(){
; open anvil tab
MouseMove, 1337, 170
Sleep, 1000
Click
Sleep, 1000
; click upgrade
MouseMove, 1428, 581
Sleep, 1000
Click
Sleep, 1000
; close popup if not enough Expedition tokens (safe click spot if there was)
MouseMove, 1288, 343
Sleep, 1000
Click
Sleep, 1000
}