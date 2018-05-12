
; this is same as padkeyCharacter.ahk
+m::
  dbl:=getDoubleKeyEnvironment()
if A_TickCount < %ctrldoubleM%
{
    ctrldoubleM =0
  keys := dbl.byKey("m",buf_CSPFlow, 2)
}
else
{
    ctrldoubleM =%A_TickCount%
    ctrldoubleM +=400
  keys := dbl.byKey("m",buf_CSPFlow, 1)
}
return


+j::
  dbl:=getDoubleKeyEnvironment()
if A_TickCount < %ctrldoubleJ%
{
    ctrldoubleJ=0
  keys := dbl.byKey("j",buf_CSPFlow, 2)
}
else
{
    ctrldoubleJ=%A_TickCount%
    ctrldoubleJ+=400
  keys := dbl.byKey("j",buf_CSPFlow, 1)
}
return


+n::
  dbl:=getDoubleKeyEnvironment()
  if A_TickCount < %ctrldoubleN%
   {
  keys := dbl.byKey("n",buf_CSPFlow, 2)
    ctrldoubleN=0
   }
  else
   {
    ctrldoubleN=%A_TickCount%
    ctrldoubleN+=400
  keys := dbl.byKey("n",buf_CSPFlow, 1)
   }
return

+Space::
    dbl:=getDoubleKeyEnvironment()
  if A_TickCount < %ctrldoubleS%
   {
  keys := dbl.byKey("k",buf_CSPFlow, 2)
    ctrldoubleS=0
   }
  else
   {
    ctrldoubleS=%A_TickCount%
    ctrldoubleS+=400
  keys := dbl.byKey("k",buf_CSPFlow, 1)
   }
  Return


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
 
^F14::
  Send,{F15} 
  Return

^+F17::
 if A_TickCount < %ctrldouble14%
 {
    Send,^+{F8}                        ;
    ctrldouble14=0

 }
 else
 {
    ctrldouble14=%A_TickCount%
    ctrldouble14+=400
    Send,^+{F7} 
 }
return


o::
 if A_TickCount < %ctrldoubleO%
 {
    Send,{i}                        ;
    ctrldoubleO=0

 }
 else
 {
    ctrldoubleO=%A_TickCount%
    ctrldoubleO+=400
    Send,{o} 
 }
return
; F16-19 single key function

  



; Flow script by NumpadDot 
NumpadDot & F16::
NumpadDel & F16::
  dbl:=getDoubleKeyEnvironment()
  keys := dbl.byKey("F16",buf_CSPFlow, 1)
  return

NumpadDot & F17::
NumpadDel & F17::
  dbl:=getDoubleKeyEnvironment()
  keys := dbl.byKey("F17",buf_CSPFlow, 1)
  return

NumpadDot & F18::
NumpadDel & F18::
  dbl:=getDoubleKeyEnvironment()
  keys := dbl.byKey("F18",buf_CSPFlow, 1)
  return

NumpadDot & F19::
NumpadDel & F19::
  dbl:=getDoubleKeyEnvironment()
  keys := dbl.byKey("F19",buf_CSPFlow, 1)
  return

  *MButton::
SetKeyDelay -1
Send {Blind}{Ctrl DownTemp}{Alt DownTemp}{Shift DownTemp}
Return
*MButton up::
SetKeyDelay -1
Send {Blind}{Ctrl Up}{Alt Up}{Shift Up}
return

*RButton::
SetKeyDelay -1
Send {Blind}{Ctrl DownTemp}{Shift DownTemp}
Return
*RButton up::
SetKeyDelay -1
Send {Blind}{Ctrl Up}{Shift Up}
return