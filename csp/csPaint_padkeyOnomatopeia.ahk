getDoubleKeyOnomatopeia(){
  dbl := new DoubleKey()
      ;fukidashi flow
  dbl.append( new Operation("Kabura  ", 5,"j", 1, "{f}", "key"))
  dbl.append( new Operation("Fil     ", 5,"n", 1, "{g}", "key"))
  dbl.append( new Operation("Start   ", 5,"F16", 1, "+{F1}", "key"))
  dbl.append( new Operation("Finished", 5,"F17", 1, "+{F2}", "key"))

  ; dustpan flow
  dbl.append( new Operation("Kabura         ", 1,"j", 1, "{f}", "key"))
  dbl.append( new Operation("Fill           ", 1,"n", 1, "{g}", "key"))
  dbl.append( new Operation("Erace          ", 1,"k", 1, "{6}", "key"))
  dbl.append( new Operation("Mag Line Select", 1,"m", 1, "{m}", "key"))

  ; default action (and without flow setting)
  dbl.append( new Operation("Free   ", 0,"j", 1, "{p}", "key"))
  dbl.append( new Operation("Control", 0,"n", 1, "{l}", "key"))
  dbl.append( new Operation("Maru   ", 0,"k", 1, "{j}", "key"))
  dbl.append( new Operation("Kabura ", 0,"m", 1, "{f}", "key"))
  return dbl
}



+m::
dbl:=getDoubleKeyOnomatopeia()
if A_TickCount < %ctrldouble%
{
  keys := dbl.byKey("m",buf_CSPFlow, 2)
  SoundPlay,*-1
  Gosub, _csPaintResetSubTool
  ctrldouble=0
}
else
{
    ctrldouble=%A_TickCount%
    ctrldouble+=400
    keys := dbl.byKey("m",buf_CSPFlow, 1)
    SoundPlay,*16
}
return


+j::
dbl:=getDoubleKeyOnomatopeia()
if A_TickCount < %ctrldouble%
{
  keys := dbl.byKey("j",buf_CSPFlow, 2)
  SoundPlay,*-1
  Gosub, _csPaintResetSubTool
  ctrldouble=0
}
else
{
    ctrldouble=%A_TickCount%
    ctrldouble+=400
    keys := dbl.byKey("j",buf_CSPFlow, 1)
    SoundPlay,*64
}
return


+n::
dbl:=getDoubleKeyOnomatopeia()
if A_TickCount < %ctrldouble%
{
  keys := dbl.byKey("n",buf_CSPFlow, 2)
  SoundPlay,*-1
  Gosub, _csPaintResetSubTool
  ctrldouble=0
}
else
{
    ctrldouble=%A_TickCount%
    ctrldouble+=400
    keys := dbl.byKey("n",buf_CSPFlow, 1)
    SoundPlay,*16
}
return

+Space::
dbl:=getDoubleKeyOnomatopeia()
if A_TickCount < %ctrldouble%
{
  keys := dbl.byKey("k",buf_CSPFlow, 2)
  SoundPlay,*-1
  Gosub, _csPaintResetSubTool
  ctrldouble=0
}
else
{
    ctrldouble=%A_TickCount%
    ctrldouble+=400
    keys := dbl.byKey("k",buf_CSPFlow, 1)
    SoundPlay,*16
}
return


+i::
 if A_TickCount < %ctrldoubleI%
 {
    Send,{s}                       
    ctrldoubleI=0
 }
 else
 {
    ctrldoubleI=%A_TickCount%
    ctrldoubleI+=400
    Send,{w} 
 }
return

 
+x::
 if A_TickCount < %xctrldouble%
 {
    Send,{CtrlDown}{d}{CtrlUp}                        
    xctrldouble=0
 }
 else
 {
    xctrldouble=%A_TickCount%
    xctrldouble+=400
    Send,{x} 
 }
 return
 

^+F17::
  Send,{F15} 
  Return

^F14::
  if A_TickCount < %ctrldouble%
  {
    Send,^{t}
    ctrldouble=0
    SoundPlay,*-1
   }
  else
   {
    ctrldouble=%A_TickCount%
    ctrldouble+=400
    if(buf_CSPTransform==1){
      Send,+{Enter}
      Send,^{d}
      buf_CSPTransform:=0
    }else{
      Send,{7}
      buf_CSPTransform:=1
    }
    SoundPlay,*48
   }

return

; F16-19 single key function
/*
;white edge
F16::
;black -> white + black edge + white edge
F17::
;black edge
F18::
;black -> white + tone + black edge
F19::
*/


; Flow script by NumpadDot 
NumpadDot & F16::
NumpadDel & F16::
  dbl:=getDoubleKeyOnomatopeia()
  keys := dbl.byKey("F16",buf_CSPFlow, 1)
  return

NumpadDot & F17::
NumpadDel & F17::
  dbl:=getDoubleKeyOnomatopeia()
  keys := dbl.byKey("F17",buf_CSPFlow, 1)
  return

NumpadDot & F18::
NumpadDel & F18::
  dbl:=getDoubleKeyOnomatopeia()
  keys := dbl.byKey("F18",buf_CSPFlow, 1)
  return

NumpadDot & F19::
NumpadDel & F19::
  dbl:=getDoubleKeyOnomatopeia()
  keys := dbl.byKey("F19",buf_CSPFlow, 1)
  return