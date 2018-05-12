F19::
  Suspend,permit
  Send,{LWinDown}{CtrlDown}{AltDown}{DOWN}{AltUp}{CtrlUp}{LWinUp}
  WinActivate, ahk_class Emacs
  return

F18::
  Suspend,permit
  Send,{ShiftDown}{Enter}{ShiftUp}
  return

F17::
  Suspend,permit
  Send,{CtrlDown}{v}{CtrlUp}
  return