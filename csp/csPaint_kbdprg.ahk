

a::
if buf_CSPFlow=9
{
  send,^!{z}
}
Else
{
  send,{a}
}
return

c::
if buf_CSPFlow=9
{
gosub, _csp_flatpencil
}
Else
{
  send,{c}
}
return

v::
gosub,csp_kbd_pencil
Return

z::
if buf_CSPFlow=9
{
  send,^+{z}
}
Else
{
  send,{z}
}
return

r::
gosub, csp_kbd_pencil_detail
return






f::
gosub,cspSketchF
return


b::
if buf_CSPFlow=9
{
  send,^{NumpadSub}
}
Else
{
send,{b}
}
return

g::
if buf_CSPFlow=9
{
  send,^{NumpadAdd}
}
Else
{
  send,{g}
}
return




e::
gosub, cspSketchCurve
return


d::
gosub, cspSketchTrance:
return

s::
if buf_CSPFlow!=9
{
  send, {s}
  return
}
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