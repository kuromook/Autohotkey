m::
if A_TickCount < %ctrldouble%
{
     Send,{CtrlDown}{F16}{CtrlUp}
    ctrldouble=0
}
else
{
    ctrldouble=%A_TickCount%
    ctrldouble+=400
    Send,{r} 
}
return


j::
IfWinNotExist , ahk_class CPropertyPalette
{
if A_TickCount < %ctrldouble%
{
    ctrldouble=0
;    Gosub , _CS_ToolPenInout
    Send,{p}
}
else
{
    ctrldouble=%A_TickCount%
    ctrldouble+=400
    Send,{l} 
}
}
else
{
Control,Check,, Button112,ahk_class CPropertyPalette
}
return


n::
  if A_TickCount < %ctrldouble%
   {
     Send,{ShiftDown}{F16}{ShiftUp}
     ctrldouble=0
   }
  else
   {
    ctrldouble=%A_TickCount%
    ctrldouble+=400
    Send,{g} 
   }
return





i::
 if A_TickCount < %ctrldouble%
 {
    Send,{s}                        ;some action
    ctrldouble=0

 }
 else
 {
    ctrldouble=%A_TickCount%
    ctrldouble+=400
    Send,{w} 
 }
return


x::
 if A_TickCount < %ctrldouble%
 {
    Send,{ESC}                        ;
    ctrldouble=0

 }
 else
 {
    ctrldouble=%A_TickCount%
    ctrldouble+=400
    Send,{x} 
 }
return

