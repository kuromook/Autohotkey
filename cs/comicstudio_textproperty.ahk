

NumpadDot & Numpad1::
Suspend,Permit
Control,ChooseString,6, ComboBox12,ahk_class CPropertyPalette
return

NumpadDot & Numpad2::
Suspend,Permit
Control,ChooseString,8, ComboBox12,ahk_class CPropertyPalette
return

NumpadDot & Numpad3::
Suspend,Permit
Control,ChooseString,9, ComboBox12,ahk_class CPropertyPalette
return

NumpadDot & Numpad4::
Suspend,Permit
Control,ChooseString,10, ComboBox12,ahk_class CPropertyPalette
return

NumpadDot & Numpad5::
Suspend,Permit
Control,ChooseString,12, ComboBox12,ahk_class CPropertyPalette
return

NumpadDot & Numpad6::
Suspend,Permit
Control,ChooseString,16, ComboBox12,ahk_class CPropertyPalette
return

NumpadDot & Numpad7::
Suspend,Permit
Control,ChooseString,20, ComboBox12,ahk_class CPropertyPalette
return

NumpadDot & Numpad8::
Suspend,Permit
Control,ChooseString,24, ComboBox12,ahk_class CPropertyPalette
return

NumpadDot & Numpad9::
Suspend,Permit
Control,ChooseString,36, ComboBox12,ahk_class CPropertyPalette
return

RAlt & 0::
AppsKey & 0::
Suspend,Permit
SetControlDelay,200
SetKeyDelay,100
Control,Choose,1, ComboBox15,ahk_class CPropertyPalette
Control,Choose,1, ComboBox14,ahk_class CPropertyPalette
Control,Check,, Button132,ahk_class CPropertyPalette
Control,Uncheck,, Button129,ahk_class CPropertyPalette
Control,Choose,1, ComboBox12,ahk_class CPropertyPalette
return


RAlt & 9::
AppsKey & 9::
Suspend,Permit
SetControlDelay,200
SetKeyDelay,100
Control,Choose,1, ComboBox12,ahk_class CPropertyPalette
Control,Choose,1, ComboBox15,ahk_class CPropertyPalette
Control,Choose,1, ComboBox14,ahk_class CPropertyPalette
Control,Uncheck,, Button132,ahk_class CPropertyPalette
Control,Uncheck,, Button129,ahk_class CPropertyPalette
return


RAlt & 8::
AppsKey & 8::
Suspend,Permit
SetControlDelay,200
SetKeyDelay,100
Control,Choose,6, ComboBox12,ahk_class CPropertyPalette
Control,Choose,1, ComboBox15,ahk_class CPropertyPalette
Control,Choose,1, ComboBox14,ahk_class CPropertyPalette
Control,Check,, Button132,ahk_class CPropertyPalette
Control,Uncheck,, Button129,ahk_class CPropertyPalette
return


RAlt & 7::
AppsKey & 7::
Suspend,Permit
SetControlDelay,200
SetKeyDelay,100
Control,Choose,5, ComboBox12,ahk_class CPropertyPalette
Control,Choose,1, ComboBox15,ahk_class CPropertyPalette
Control,Choose,2, ComboBox14,ahk_class CPropertyPalette
Control,Uncheck,, Button132,ahk_class CPropertyPalette
Control,Check,, Button129,ahk_class CPropertyPalette
return

RAlt & 6::
AppsKey & 6::
Suspend,Permit
SetControlDelay,200
SetKeyDelay,100
Control,Choose,5, ComboBox12,ahk_class CPropertyPalette
Control,Choose,1, ComboBox15,ahk_class CPropertyPalette
Control,Choose,2, ComboBox14,ahk_class CPropertyPalette
Control,Uncheck,, Button132,ahk_class CPropertyPalette
Control,Check,, Button129,ahk_class CPropertyPalette
return


RAlt & -::
AppsKey & -::
Suspend,Permit
SetControlDelay,200
SetKeyDelay,100
Control,Choose,2, ComboBox12,ahk_class CPropertyPalette
Control,Choose,1, ComboBox15,ahk_class CPropertyPalette
Control,Choose,1, ComboBox14,ahk_class CPropertyPalette
Control,Uncheck,, Button132,ahk_class CPropertyPalette
Control,Uncheck,, Button129,ahk_class CPropertyPalette
return


LAlt & v::
Suspend,Permit
SetControlDelay,100
SetKeyDelay,200
Clipboard=----------------------
Control,Choose,7, ComboBox12,ahk_class CPropertyPalette
Control,Choose,1, ComboBox15,ahk_class CPropertyPalette
Control,Choose,1, ComboBox14,ahk_class CPropertyPalette
Control,Check,, Button113,ahk_class CPropertyPalette
Control,Check,, Button132,ahk_class CPropertyPalette
Control,Uncheck,, Button126,ahk_class CPropertyPalette
Control,Uncheck,, Button129,ahk_class CPropertyPalette
Send,^v
return


;bold 指定（トグル）
!b::
Suspend,Permit
;SetControlDelay,100
SetKeyDelay,200
ControlGet, OutputVar, Checked,,Button120,ahk_class CPropertyPalette
if (OutputVar !=1)
 Control,Check,, Button120,ahk_class CPropertyPalette
else
 Control,Uncheck,, Button120,ahk_class CPropertyPalette
return

;文字フチ
F12::
Suspend,Permit
;SetControlDelay,100
Send,{CtrlDown}{a}{CtrlUp}
SetKeyDelay,200
ControlGet, OutputVar, Checked,,Button129,ahk_class CPropertyPalette
if (OutputVar !=1)
{
 Control,Check,, Button129,ahk_class CPropertyPalette
 ControlSetText,Edit54,0.5,ahk_class CPropertyPalette
}
else
 Control,Uncheck,, Button129,ahk_class CPropertyPalette
return

;縦横
F13::
Suspend,Permit
;SetControlDelay,100
Send,{CtrlDown}{a}{CtrlUp}
SetKeyDelay,200
ControlGet, OutputVar, Checked,,Button132,ahk_class CPropertyPalette
if (OutputVar !=1)
 Control,Check,, Button132,ahk_class CPropertyPalette
else
 Control,Uncheck,, Button132,ahk_class CPropertyPalette
return

F18::
  Suspend,Permit
  Send,{ShiftDown}{Enter}{ShiftUp}
  return

F19::
  Suspend,Permit
  Send,{CtrlDown}{v}{CtrlUp}
  return