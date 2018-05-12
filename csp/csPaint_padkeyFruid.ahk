+m::
if A_TickCount < %ctrldouble%
{
    Send,{b}                        ;some action
    ctrldouble=0
}
else
{
    ctrldouble=%A_TickCount%
    ctrldouble+=400
  Send,{l}
}
return

+j::
if A_TickCount < %ctrldouble%
{
  ctrldouble=0
  Send,{p}
   }
else
{
    ctrldouble=%A_TickCount%
    ctrldouble+=400
  Send,{p}
}
return


+n::
  if A_TickCount < %ctrldouble%
   {
      Send,{q}
    ctrldouble=0
   }
  else
   {
    ctrldouble=%A_TickCount%
    ctrldouble+=400
  Send,{g}
   }
return

k::
 if A_TickCount < %ctrldouble%
 {
    Send,{k}                        ;some action
    ctrldouble=0
 Control,Choose,1, ComboBox1,ahk_class CToolOptionPalette
 }
 else
 {
    ctrldouble=%A_TickCount%
    ctrldouble+=400
    Send,{k} 
    Control,Choose,2, ComboBox1,ahk_class CToolOptionPalette
 }
return



+i::

    Send,{w} 

return


+x::
 if A_TickCount < %ctrldouble%
 {
    Send,{END}                        ;
    ctrldouble=0

 }
 else
 {
    ctrldouble=%A_TickCount%
    ctrldouble+=400
    Send,{x} 
 }
return

;プロパティクローズ
^b::
      Send,{f} 
return

+Space::
  Send,{f} 
  Return


^+F17::
  Send,{F15} 
  Return

^F14::
 if A_TickCount < %ctrldouble%
 {
    Send,^+{F8}                        ;
    ctrldouble=0

 }
 else
 {
    ctrldouble=%A_TickCount%
    ctrldouble+=400
    Send,^+{F7} 
 }
return