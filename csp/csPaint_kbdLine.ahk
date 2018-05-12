
;t::
;gosub, _csp_toggle_sketch
;
;return

a::
  send,^!{z}
return

c::
send, ^{F14}
return

v::
if A_TickCount < %ctrldoubleKD%
{
  ctrldoubleKD=0
  dbl:=getDoubleKeyLine()
  keys := dbl.byKey("j",buf_CSPFlow, 2)
  send,{x}
}
else
{
  dbl:=getDoubleKeyLine()
  keys := dbl.byKey("j",buf_CSPFlow, 1)
  send,{x}
    ctrldoubleKD=%A_TickCount%
    ctrldoubleKD+=400
}
return

z::
  send,^+{z}

return


r::
if A_TickCount < %ctrldoubleKD%
{
  ctrldoubleKD=0
  send, {q}
  send, {w}
}
else
{
  dbl:=getDoubleKeyLine()
  keys := dbl.byKey("j",buf_CSPFlow, 1)
  send,{x}
  ctrldoubleKD=%A_TickCount%
  ctrldoubleKD+=400
}
return



f::
  dbl:=getDoubleKeyLine()
  keys := dbl.byKey("j",buf_CSPFlow, 1)
;  send,{F11}
  send,{w}
return



b::
  send,^{NumpadSub}
return

g::
  send,^{NumpadAdd}
return


e::
if A_TickCount < %ctrldoubleKD%
{
  ctrldoubleKD=0
  gosub, _csp_line_confirm
}
else
{
  gosub, _csp_line_curve
    ctrldoubleKD=%A_TickCount%
    ctrldoubleKD+=400
}
return


d::
if A_TickCount < %ctrldoubleKD%
{
  ctrldoubleKD=0
    gosub, _csp_line_curveFill

}
else
{
    gosub, _csp_line_curveErace
    ctrldoubleKD=%A_TickCount%
    ctrldoubleKD+=400
}
return

s::
if A_TickCount < %ctrldoubleKD%
{
  ctrldoubleKD=0
    send,^!{F13}

}
else
{
    send,^{F6}
    ctrldoubleKD=%A_TickCount%
    ctrldoubleKD+=400
}
return