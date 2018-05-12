;トーンプロパティ操作関連


;グラデーション長さ調整
0::
_CSGradationLength(0.5)
return

1::
_CSGradationLength(1)
return

2::
_CSGradationLength(2)
return

3::
_CSGradationLength(3)
return

4::
_CSGradationLength(4)
return

5::
_CSGradationLength(5)
return

6::
_CSGradationLength(6)
return

7::
_CSGradationLength(7)
return

8::
_CSGradationLength(8)
return

9::
_CSGradationLength(9)
return


+1::
_CSGradationLength(3)
return

+2::
_CSGradationLength(6)
return

+3::
_CSGradationLength(9)
return

+4::
_CSGradationLength(12)
return

+5::
_CSGradationLength(15)
return

+6::
_CSGradationLength(18)
return

+7::
_CSGradationLength(21)
return

+8::
_CSGradationLength(24)
return

+9::
_CSGradationLength(27)
return


;グラデーション変換＋回転

w::
_CSGradationRotation(90)
return

e::
_CSGradationRotation(135)
return

d::
_CSGradationRotation(180)
return

c::
_CSGradationRotation(225)
return

x::
_CSGradationRotation(270)
return

z::
_CSGradationRotation(315)
return

a::
_CSGradationRotation(0)
return

q::
_CSGradationRotation(45)
return


+w::
_CSGradationRotation(112)
return

+e::
_CSGradationRotation(157)
return

+d::
_CSGradationRotation(202)
return

+c::
_CSGradationRotation(247)
return

+x::
_CSGradationRotation(292)
return

+z::
_CSGradationRotation(337)
return

+a::
_CSGradationRotation(22)
return

+q::
_CSGradationRotation(67)
return



y::
ControlSetText,Edit52,30,ahk_class CPropertyPalette
ControlSetText,Edit56,10,ahk_class CPropertyPalette
Send {Enter}
return

k::
Control,Choose,1, ComboBox15,ahk_class CPropertyPalette
ControlSetText,Edit56,100,ahk_class CPropertyPalette
Send {Enter}
return

l::
Control,Choose,4, ComboBox14,ahk_class CPropertyPalette
ControlSetText,Edit52,10,ahk_class CPropertyPalette
ControlSetText,Edit53,0,ahk_class CPropertyPalette
ControlSetText,Edit56,10,ahk_class CPropertyPalette
Send {Enter}
return


o::
Control,Choose,4, ComboBox14,ahk_class CPropertyPalette
ControlSetText,Edit52,10,ahk_class CPropertyPalette
ControlSetText,Edit53,90,ahk_class CPropertyPalette
ControlSetText,Edit56,10,ahk_class CPropertyPalette
Send {Enter}
return


u::
ControlSetText,Edit56,25,ahk_class CPropertyPalette
Control,Choose,7, ComboBox14,ahk_class CPropertyPalette
ControlSetText,Edit54,80,ahk_class CPropertyPalette
Send {Enter}
return


i::
ControlSetText,Edit56,15,ahk_class CPropertyPalette
Control,Choose,7, ComboBox14,ahk_class CPropertyPalette
ControlSetText,Edit54,80,ahk_class CPropertyPalette
Send {Enter}
return

