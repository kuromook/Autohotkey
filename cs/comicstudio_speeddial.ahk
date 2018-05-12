; 塗りつぶしの短縮キー
F19::
Appskey & F12::
SetKeyDelay,200
Send,{ShiftDown}{F5}{ShiftUp}
WinWaitActive , ahk_class #32770
ControlClick,OK,ahk_class #32770
return

; 選択範囲反転縮小の短絡キー
F18::
Appskey & F11::
Send,{F6}
return

; 選択範囲反転の短絡キー
Appskey & F10::
F17::
Send,{F7}
return

; 選択範囲の短絡キー
Appskey & F9::
F16::
Send,{F5}
return