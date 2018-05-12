
getDoubleKeyBase(){
  dbl := new DoubleKey()
    ; Sub
  dbl.append( new Operation("Blur"   , 2,"n", 1, "{q}", "key"))
  dbl.append( new Operation("Control"   , 2,"n", 2, "{p}", "key"))


  ; default action (and without flow setting)
  dbl.append( new Operation("Control"   , 0,"n", 1, "{j}", "key"))
  dbl.append( new Operation("Blur"   , 0,"n", 2, "{z}", "key"))


  dbl.append( new Operation("layer " , 0,"F16", 1, "_csPaintFlowNewLayerColored" , "sub"))

  return dbl
}

+m::
    Send,{F16}
    send,{w}
    send,{g}
return


+j::
    Send,{l} 
return



+n::
dbl:=getDoubleKeyBase()
  if A_TickCount < %ctrldoubleN%
   {
      keys := dbl.byKey("n",buf_CSPFlow, 2)
    ctrldoubleN=0
   }
  else
   {
      keys := dbl.byKey("n",buf_CSPFlow, 1)
    ctrldoubleN=%A_TickCount%
    ctrldoubleN+=400
   }
return





+i::
 if A_TickCount < %ctrldouble%
 {
    Send,{g}                        ;some action
    ctrldouble=0

 }
 else
 {
    ctrldouble=%A_TickCount%
    ctrldouble+=400
    Send,{w} 
 }
return


+x::
 if A_TickCount < %ctrldouble%
 {
  Gosub, _csp_swap_color
    ctrldouble=0

 }
 else
 {
    ctrldouble=%A_TickCount%
    ctrldouble+=400
    Send,{x} 
 }
 return





^+F17::
  if A_TickCount < %ctrldoubleST%
  {
    Send,^+{F17} 

     ctrldoubleST=0
   }
  else
   {
    ctrldoubleST=%A_TickCount%
    ctrldoubleST+=400
     Send,{CtrlDown}{0}{CtrlUp}
   }
Return

!F14::
 if A_TickCount < %ctrldouble%
 {
    Send,{enter} 
    Send,^{d}                       ;
    ctrldouble=0

 }
 else
 {
    ctrldouble=%A_TickCount%
    ctrldouble+=400
    Send,{u} 
 }
return

