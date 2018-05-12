#IfWinActive ahk_class sfl_window_class
sai_select_pen:
  send,{d}
  send,^{d}
  send,{n}
return

f::
  if A_TickCount < %ctrldoubleN%
  {
    sai_flag:=0
    gosub, sai_select_pen
    ctrldoubleN=0
  }
  else
  {
      ctrldoubleN=%A_TickCount%
      ctrldoubleN+=1400
      send,{n}
      sai_flag:=1
  }
  return




^t::
if A_TickCount < %ctrldoubleN%
{
  send,{enter}
  send,^{d}
  ctrldoubleN=0
}
else
{
    ctrldoubleN=%A_TickCount%
    ctrldoubleN+=400
    send,^{t}
}
return


#IfWinActive
