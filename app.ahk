#Include %A_ScriptDir%

#IfWinActive ahk_class WinClass_FXS
XButton1::
Send,{Enter}
return
XButton2::
Send,{Space}
return

#IfWinActive ahk_class Emacs
; speaking converter
F10::
run, C:\Anaconda3\python.exe C:\Users\kuro\code\py\csp\speakingConvert.py
Return

#c::
send,{ESC Down}{w}{ESC Up}
return

#v::
send,^{y}
return


#IfWinActive
