;ルビ用　日本語→ユニコード変換サイト
;http://www.kwonline.org/unicode_js.php


F11:: ;あまね
Suspend,Permit
SetControlDelay,100
SetKeyDelay , 8
ControlClick ,Button127, ahk_class CPropertyPalette
WinWaitActive , ahk_class #32770
Control,Check,, Button9,ahk_class #32770
ControlFocus, Edit11 ,ahk_class #32770
ControlSend,Edit11,{U+3042}{U+307e}{U+306d}{Enter},ahk_class #32770
ControlClick,OK,ahk_class #32770
return


;\u30dc\u30a6\u30b3 ボウコ
F10::
Suspend,Permit
SetControlDelay,100
ControlClick ,Button127, ahk_class CPropertyPalette
WinWaitActive , ahk_class #32770
Control,Check,, Button8,ahk_class #32770
ControlFocus, Edit11 ,ahk_class #32770
ControlSend, Edit11,{U+30dc}{U+30a6}{U+30b3}{Enter},ahk_class #32770
ControlClick,OK,ahk_class #32770
return

;\u304d\u308a\u3053 きりこ
F9::
Suspend,Permit
SetControlDelay,100
ControlClick ,Button127, ahk_class CPropertyPalette
WinWaitActive , ahk_class #32770
Control,Check,, Button8,ahk_class #32770
ControlFocus, Edit11 ,ahk_class #32770
ControlSend, Edit11,{U+304d}{U+308a}{U+3053}{Enter},ahk_class #32770
ControlClick,OK,ahk_class #32770
return


F1:: ;ナカ（膣内）
Suspend,Permit
SetControlDelay,100
ControlClick ,Button127, ahk_class CPropertyPalette
WinWaitActive , ahk_class #32770
Control,Check,, Button8,ahk_class #32770
ControlFocus, Edit11 ,ahk_class #32770
ControlSend,Edit11, {U+30ca}{U+30ab}{Enter},ahk_class #32770
ControlClick,OK,ahk_class #32770
return

;\u3060\u3059 だす（射精）
F2::
Suspend,Permit
SetControlDelay,100
ControlClick ,Button127, ahk_class CPropertyPalette
WinWaitActive , ahk_class #32770
Control,Check,, Button8,ahk_class #32770
ControlFocus, Edit11 ,ahk_class #32770
ControlSend,Edit11, {U+3060}{U+3059}{Enter},ahk_class #32770
ControlClick,OK,ahk_class #32770
return

;\u3067　で　(射精
+F2:: 
Suspend,Permit
SetControlDelay,100
ControlClick ,Button127, ahk_class CPropertyPalette
WinWaitActive , ahk_class #32770
Control,Check,, Button8,ahk_class #32770
ControlFocus, Edit11 ,ahk_class #32770
ControlSend,Edit11, {U+3067}{U+3059}{Enter},ahk_class #32770
ControlClick,OK,ahk_class #32770
return

; いれ（挿入）
F3::
Suspend,Permit
SetControlDelay,100
ControlClick ,Button127, ahk_class CPropertyPalette
WinWaitActive , ahk_class #32770
Control,Check,, Button8,ahk_class #32770
ControlFocus, Edit11 ,ahk_class #32770
ControlSend,Edit11, {U+3044}{U+308c}{Enter},ahk_class #32770
ControlClick,OK,ahk_class #32770
return

;\u306f\u3044 はい（挿入）
+F3::
Suspend,Permit
SetControlDelay,100
ControlClick ,Button127, ahk_class CPropertyPalette
WinWaitActive , ahk_class #32770
Control,Check,, Button8,ahk_class #32770
ControlFocus, Edit11 ,ahk_class #32770
ControlSend,Edit11, {U+306f}{U+3044}{Enter},ahk_class #32770
ControlClick,OK,ahk_class #32770
return

;\u30b6\u30fc\u30e1\u30f3 ザーメン（精液）
F4::
Suspend,Permit
SetControlDelay,100
ControlClick ,Button127, ahk_class CPropertyPalette
WinWaitActive , ahk_class #32770
Control,Check,, Button8,ahk_class #32770
ControlFocus, Edit11 ,ahk_class #32770
ControlSend,Edit11, {U+30b6}{U+30fc}{U+30e1}{U+30f3}{Enter},ahk_class #32770
ControlClick,OK,ahk_class #32770
return
