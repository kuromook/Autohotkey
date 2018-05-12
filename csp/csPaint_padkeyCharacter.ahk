

+m::
  dbl:=getDoubleKeyCharacter()
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
  dbl:=getDoubleKeyCharacter()
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
  dbl:=getDoubleKeyCharacter()
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




+i::
 if A_TickCount < %ctrldoubleI%
 {
    Send,{g}                       
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
    keys := dbl.byKey("x",buf_CSPFlow, 2)
                
    xctrldouble=0
 }
 else
 {
    keys := dbl.byKey("x",buf_CSPFlow, 1)
    xctrldouble=%A_TickCount%
    xctrldouble+=400

 }
 return
  


^F14::
  dbl:=getDoubleKeyCharacter()
  if A_TickCount < %ctrldoubleN%
   {
  keys := dbl.byKey("s",buf_CSPFlow, 2)
    ctrldoubleN=0
   }
  else
   {
    ctrldoubleN=%A_TickCount%
    ctrldoubleN+=400
  keys := dbl.byKey("s",buf_CSPFlow, 1)
   }
return

^+F17::

  if A_TickCount < %ctrldoubleF7%
   {
    Send, ^+{2}
    Send, ^+{F7}
    ctrldoubleF7=0
   }
  else
   {
    ctrldoubleF7=%A_TickCount%
    ctrldoubleF7+=400

    Send, ^+{F7}

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



_csPaintFlowChacacterFree:
Send,{p}
Send,^+{F14}
Return
_csPaintFlowChacacterSubColor:
Send,{s}
Send,{w}
Return
_csPaintFlowChacacterControl:
Send,{l}
Send,^+{F14}
Return

_csPaintFlowChacacterQuickMask:
SoundPlay,*-1
Send,^+{F7}
Send,{F15}
Send,{w}
Return
_csp_Character_confirm_transform:
send {Enter}
send ^{d}
return
; Flow script by NumpadDot 
NumpadDot & F16::
NumpadDel & F16::
  dbl:=getDoubleKeyCharacter()
  keys := dbl.byKey("F16",buf_CSPFlow, 1)
  return

NumpadDot & F17::
NumpadDel & F17::
  dbl:=getDoubleKeyCharacter()
  keys := dbl.byKey("F17",buf_CSPFlow, 1)
  return

NumpadDot & F18::
NumpadDel & F18::
  dbl:=getDoubleKeyCharacter()
  keys := dbl.byKey("F18",buf_CSPFlow, 1)
  return

NumpadDot & F19::
NumpadDel & F19::
  dbl:=getDoubleKeyCharacter()
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


Numpad1::
_cspflowSC("b")
dbl:=getDoubleKeyCharacter()
dbl.byKey("j",buf_CSPFlow, 1)
Send,^+{F14}
Send,{w} 
return 

Numpad2::
_cspflowSC("s")
dbl:=getDoubleKeyCharacter()
dbl.byKey("j",buf_CSPFlow, 1)
Send,^+{F14}
Send,{w} 
return 

Numpad3::
_cspflowSC("l")
dbl:=getDoubleKeyCharacter()
dbl.byKey("j",buf_CSPFlow, 1)
Send,^+{F14}
Send,{w} 
return 

Numpad4::
_cspflowSC("g")
dbl:=getDoubleKeyCharacter()
dbl.byKey("j",buf_CSPFlow, 1)
Send,^+{F14}
Send,{w} 
return 

Numpad5::
_cspflowSC("d")
dbl:=getDoubleKeyCharacter()
dbl.byKey("n",buf_CSPFlow, 1)
Send,^+{F14}
Send,{w} 
return 

Numpad6::
_cspflowSC("f")
dbl:=getDoubleKeyCharacter()
dbl.byKey("j",buf_CSPFlow, 1)
Send,^+{F14}
Send,{w} 
return 

Numpad7::
_cspflowSC("i")
dbl:=getDoubleKeyCharacter()
dbl.byKey("j",buf_CSPFlow, 1)
Send,^+{F14}
Send,{w} 
return 

Numpad9::
_cspflowSC("k")
dbl:=getDoubleKeyCharacter()
dbl.byKey("j",buf_CSPFlow, 1)
Send,^+{F14}
Send,{w} 

return 