#Include %A_ScriptDir%

#IfWinActive ahk_class WinClass_FXS
XButton1::
Send,{Enter}
return
XButton2::
Send,{Space}
return

#IfWinActive ahk_class ENMainFrame
; speaking converter
F10::
run, C:\Anaconda3\python.exe C:\Users\kuro\code\py\csp\speakingConvert.py
Return


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

F18::
  Suspend,permit
  if(buf_CSPMode != 7)
  Send,{RWinDown}{CtrlDown}{AltDown}{LEFT}{AltUp}{CtrlUp}{RWinUp}
;  WinActivate, ahk_class CS40FrameWnd
return

F19::
  Suspend,permit
  Send,{LWinDown}{CtrlDown}{AltDown}{UP}{AltUp}{CtrlUp}{LWinUp}
  WinActivate, ahk_class CS40FrameWnd
return



;-------------------------------------------------------------
#IfWinActive ahk_class MozillaWindowClass
#v::
Send,{CtrlDown}{y}{CtrlUp}
return

#c::
Send,{AltDown}{w}{AltUp}
return
F10::
run, C:\Anaconda3\python.exe C:\Users\kuro\code\py\csp\speakingConvert.py
Return


#IfWinActive
