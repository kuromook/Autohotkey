F19::
  Suspend,permit
  Send,{LWinDown}{CtrlDown}{AltDown}{RIGHT}{AltUp}{CtrlUp}{LWinUp}
  WinActivate, ahk_class Emacs
  return

F17::
  Suspend,permit
  Send,{CtrlDown}{v}{CtrlUp}
  return