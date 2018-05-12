m::
IfWinNotExist , ahk_class CPropertyPalette
{
if A_TickCount < %ctrldouble%
{
    Send,{b}                        ;some action
    ctrldouble=0
}
else
{
    ctrldouble=%A_TickCount%
    ctrldouble+=400
    _CS_ToolPen(2.8)
}
}
else
{
Control,Check,, Button113,ahk_class CPropertyPalette
}
return


j::
IfWinNotExist , ahk_class CPropertyPalette
{
if A_TickCount < %ctrldouble%
{
   ctrldouble=0
   _CS_ToolPenOut(2.2,1.8)
}
else
{
    ctrldouble=%A_TickCount%
    ctrldouble+=400
    _CS_ToolPen(0.6)
}
}
else
{
Control,Check,, Button112,ahk_class CPropertyPalette
}
return


n::
 IfWinNotExist , ahk_class CPropertyPalette
  {
  if A_TickCount < %ctrldouble%
   {
    Send,{l}                        ;some action
    ctrldouble=0
   }
  else
   {
    ctrldouble=%A_TickCount%
    ctrldouble+=400
    _CS_ToolBucket(0.2)
   }
  }
 else
  {
  Control,Check,, Button111,ahk_class CPropertyPalette
  }
return

+n::
send,{g}
Control,Uncheck,, Button4,ahk_class CToolOptionPalette
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

;プロパティクローズ

^b::
IfWinExist , ahk_class CPropertyPalette
{
;ToolTip,,,,11
ControlClick,OK,ahk_class CPropertyPalette
}
else
{
;Gosub , _toolTipCS_Property
PostMessage, 0x111, 40519,0,, ahk_class CS40FrameWnd ; 0x111 is WM_COMMAND

}
return