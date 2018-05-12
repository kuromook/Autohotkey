#IfWinActive VUE Complete 2014

_toolTipVueHelp:
CoordMode, ToolTip,Screen
ToolTip,
(
*Vue Help

MButton4 : Drop
MButton5 : Duplicate
)
,10,460,1
return


F19::
Send,{F9}
Return


NumpadDot & F19::
^F19::
Send,^{F9}
Return


RAlt & h::
AppsKey & h::
GoSub, _toolTipVueHelp
return

XButton1::
Send, +{d}
Return

XButton2::
Send,^{d}
return