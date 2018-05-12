csp_kbd_pencil:
if buf_CSPFlow=9
{
  if pencil_flag=1
  {
    pencil_flag=0
  }
  Else
  {
    pencil_flag=1
  }
gosub, _csp_pencil
}
Else
{
  send,{v}
}
return

cspSketchF:
if buf_CSPFlow!=9
{
  send, {f}
  return
}
if A_TickCount < %ctrldoubleKDF%
{
  ctrldoubleKDF=0
    send,^+{F14}
}
else
{
  gosub, _csp_pencil
    ctrldoubleKDF=%A_TickCount%
    ctrldoubleKDF+=400
}
return

cspSkecthFlatpencil:
if buf_CSPFlow!=9
{
  send, {f}
  return
}
if A_TickCount < %ctrldoubleKDF%
{
  ctrldoubleKDF=0
    send,^+{F14}
}
else
{
  gosub, _csp_flatpencil
    ctrldoubleKDF=%A_TickCount%
    ctrldoubleKDF+=400
}

return


cspSketchCurve:
if buf_CSPFlow!=9
{
  send,{e}
  return
}
if A_TickCount < %ctrldoubleKDC%
{
  ctrldoubleKDC=0

  gosub, _csp_paint_confirm
}
else
{
  gosub, _csp_paint_curve
    ctrldoubleKDC=%A_TickCount%
    ctrldoubleKDC+=400
}
return

cspSketchTrance:
if buf_CSPFlow!=9
{
  send, {d}
  return
}
if A_TickCount < %ctrldoubleKD%
{
  ctrldoubleKD=0
    gosub, _csp_curveTrance

}
else
{
    gosub, _csp_curveErace
    ctrldoubleKD=%A_TickCount%
    ctrldoubleKD+=400
}
return


cspSketchView:
if buf_CSPFlow!=9
{
  send, {d}
  return
}
if A_TickCount < %ctrldoubleKDV%
{
  ctrldoubleKDV=0
    send,^+{F12}
    send, ^!{F13}

}
else
{
    send,^{F6}
    ctrldoubleKDV=%A_TickCount%
    ctrldoubleKDV+=400
}
return

NumpadRight::
gosub,cspSketchF
return

NumpadLeft::
gosub,cspSketchTrance
return

NumpadUp::
gosub, cspSketchView
return

NumpadClear::
send, ^!{z}
return

NumpadIns & NumpadClear::
send, ^+{z}
return

NumpadDown::
gosub, csp_kbd_pencil
return

;NumpadPgdn::
;gosub, cspSkecthFlatpencil
;Return

NumpadPgup::
gosub,cspSketchCurve

Return

NumpadHome::alt

BackSpace::
     Gosub, _csPaintResetSubTool 
     Return

     
;NumpadEnd::ctrl

NumpadEnter::space

NumpadIns::shift

^+NumpadLeft::
send,^+!{4}
return

NumpadIns & NumpadPgDn::
send,+^{h}
Return