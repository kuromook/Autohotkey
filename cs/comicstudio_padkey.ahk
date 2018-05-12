m::
Control,Check,, Button113,ahk_class CPropertyPalette
;Send,{Control}
return

j::
Control,Check,, Button112,ahk_class CPropertyPalette
;Send,{Shift}
return

n::
  Control,Check,, Button111,ahk_class CPropertyPalette
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
