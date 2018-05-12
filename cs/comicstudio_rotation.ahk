

;回転用
^r::
IfWinExist , ahk_class CPropertyPalette
Comic_StudioRotation(270)
else
{
Gosub , _toolTipCS_Rotation
Send , {CtrlDown}{r}{CtrlUp}
WinActivate , ahk_class CPropertyPalette
}
return


^t::
IfWinExist , ahk_class CPropertyPalette
Comic_StudioRotation(180)
else
Send,{CtrlDown}{t}{CtrlUp}
return

^l::
IfWinExist , ahk_class CPropertyPalette
Comic_StudioRotation(90)
else
Send,{CtrlDown}{l}{CtrlUp}
return

