; 回転表示のリセット
_CS_ResetRotation:
SetControlDelay,200
SetKeyDelay,100
ControlSetText,Edit2,0,ahk_class CS40FrameWnd
ControlSend ,Edit2,{Enter},ahk_class CS40FrameWnd
Send,{return}
return

_CS_makeRedrawLayer:
SetControlDelay,200
SetKeyDelay,100
ControlSetText,Edit1,10,ahk_class CLayerPalette
ControlSend ,Edit1,{Enter},ahk_class CLayerPalette
Send,{F8}
return
;---------------------------------------------------------------
;フォントの設定
_CS_FontNormal:
Suspend,Permit
SetControlDelay,200
SetKeyDelay,100
Control,Choose,1, ComboBox15,ahk_class CPropertyPalette
Control,Choose,1, ComboBox14,ahk_class CPropertyPalette
Control,Check,, Button132,ahk_class CPropertyPalette
Control,Uncheck,, Button129,ahk_class CPropertyPalette
return

;---------------------------------------------------------------
;pen setting
;コミスタのペン入り抜き設定はmm指定されるため、サイズごと変更しないといけない

_CS_ToolPen(size){
SetControlDelay , 5
Send,{p} 
ControlSetText,Edit1,%size%,ahk_class CToolOptionPalette
Control,Uncheck,, Button4,ahk_class CToolOptionPalette
Control,Uncheck,, Button5,ahk_class CToolOptionPalette
Control,Uncheck,, Button9,ahk_class CToolOptionPalette
Control,Uncheck,, Button10,ahk_class CToolOptionPalette
return
}

_CS_ToolPenOut(size,out){
SetControlDelay , 5
Send,{p} 
ControlSetText,Edit1,%size%,ahk_class CToolOptionPalette
Control,Uncheck,, Button4,ahk_class CToolOptionPalette
Control,Check,, Button5,ahk_class CToolOptionPalette
Control,Uncheck,, Button9,ahk_class CToolOptionPalette
ControlSetText,Edit4,%out%,ahk_class CToolOptionPalette
Control,Uncheck,, Button10,ahk_class CToolOptionPalette
return
}

_CS_ToolPenInout(size,in,out){
SetControlDelay , 5
Send,{p} 
ControlSetText,Edit1,%size%,ahk_class CToolOptionPalette
Control,Check,, Button4,ahk_class CToolOptionPalette
Control,Check,, Button5,ahk_class CToolOptionPalette
Control,Uncheck,,Button9,ahk_class CToolOptionPalette
ControlSetText,Edit3,%in%,ahk_class CToolOptionPalette
ControlSetText,Edit4,%out%,ahk_class CToolOptionPalette
Control,Uncheck,,Button10,ahk_class CToolOptionPalette
return
}

_CS_ToolBrush(size){
SetControlDelay , 5
Send,{b} 
ControlSetText,Edit1,%size%,ahk_class CToolOptionPalette
return
}

_CS_ToolMarkerFlat:
Send,{c} 
SetControlDelay , 5
Control,Uncheck,,Button10,ahk_class CToolOptionPalette
Control,Uncheck,,Button9,ahk_class CToolOptionPalette
ControlSetText,Edit6,10,ahk_class CToolOptionPalette
ControlSetText,Edit7,0,ahk_class CToolOptionPalette
return

_CS_ToolPenSkinAdjust:
Send,{p}                        ;some action
SetControlDelay , 5
Control,Check,,Button10,ahk_class CToolOptionPalette
Control,Check,,Button9,ahk_class CToolOptionPalette
ControlSetText,Edit6,100,ahk_class CToolOptionPalette
ControlSetText,Edit5,18,ahk_class CToolOptionPalette
ControlSetText,Edit7,0,ahk_class CToolOptionPalette
return

_CS_ToolPen:
    Send,{p} 
 Control,Uncheck,, Button4,ahk_class CToolOptionPalette
 Control,Uncheck,, Button5,ahk_class CToolOptionPalette
 Control,Uncheck,, Button9,ahk_class CToolOptionPalette
 Control,Uncheck,, Button10,ahk_class CToolOptionPalette
return

_CS_ToolPenInout:
Control,Check,, Button4,ahk_class CToolOptionPalette
Control,Check,, Button5,ahk_class CToolOptionPalette
 Control,Uncheck,,Button9,ahk_class CToolOptionPalette
 Control,Uncheck,,Button10,ahk_class CToolOptionPalette
return

;---------------------------------------------------------------
;Bucket

_CS_ToolBucket(num){
Send,{g} 
SetControlDelay , 5
Control,Check,, Button4,ahk_class CToolOptionPalette
ControlSetText,Edit1,%num%,ahk_class CToolOptionPalette
Control,Check,, Button6,ahk_class CToolOptionPalette
return
}

_CS_ToolMarkerCircle:
Send,{c} 
SetControlDelay , 5
Control,Uncheck,,Button10,ahk_class CToolOptionPalette
Control,Check,,Button9,ahk_class CToolOptionPalette
ControlSetText,Edit6,100,ahk_class CToolOptionPalette
ControlSetText,Edit7,0,ahk_class CToolOptionPalette
ControlSetText,Edit5,10,ahk_class CToolOptionPalette
return

;---------------------------------------------------------------
_CS_ExportPrintshop:
Suspend,Permit
PostMessage, 0x111, 40051,0,, ahk_class CS40FrameWnd ; 0x111 is WM_COMMAND
WinWaitActive , ahk_class #32770
SetControlDelay , 80
Control,Check,, Button32,ahk_class #32770
Control,Choose, 1, ComboBox2,ahk_class #32770
Control,Choose, 2, ComboBox3,ahk_class #32770
Control,Check,, Button27,ahk_class #32770
Control,Check,, Button21,ahk_class #32770
Control,Check,, Button7,ahk_class #32770
Control,Uncheck,, Button2,ahk_class #32770
Control,Choose, 4, ComboBox1,ahk_class #32770
ControlSetText,Edit8,100,ahk_class #32770
return

_CS_ExportConsignment:
Suspend,Permit
PostMessage, 0x111, 40051,0,, ahk_class CS40FrameWnd ; 0x111 is WM_COMMAND
WinWaitActive , ahk_class #32770
SetControlDelay , 80
Control,Check,, Button32,ahk_class #32770
Control,Choose, 3, ComboBox2,ahk_class #32770
Control,Choose, 3, ComboBox3,ahk_class #32770
Control,Check,, Button27,ahk_class #32770
Control,Check,, Button21,ahk_class #32770
Control,Check,, Button8,ahk_class #32770
Control,Uncheck,, Button2,ahk_class #32770
Control,Choose, 2, ComboBox1,ahk_class #32770
ControlSetText,Edit8,20,ahk_class #32770
return

_CS_ExportBlog:
Suspend,Permit
PostMessage, 0x111, 40051,0,, ahk_class CS40FrameWnd ; 0x111 is WM_COMMAND
WinWaitActive , ahk_class #32770
SetControlDelay , 80
Control,Check,, Button32,ahk_class #32770
Control,Choose, 3, ComboBox2,ahk_class #32770
Control,Choose, 3, ComboBox3,ahk_class #32770
Control,Check,, Button27,ahk_class #32770
Control,Check,, Button21,ahk_class #32770
Control,Check,, Button8,ahk_class #32770
Control,Uncheck,, Button2,ahk_class #32770
Control,Choose, 2, ComboBox1,ahk_class #32770
ControlSetText,Edit8,6,ahk_class #32770
return

_CS_ExportIpad:
Suspend,Permit
PostMessage, 0x111, 40051,0,, ahk_class CS40FrameWnd ; 0x111 is WM_COMMAND
WinWaitActive , ahk_class #32770
SetControlDelay , 80
Control,Check,, Button32,ahk_class #32770
Control,Choose, 3, ComboBox2,ahk_class #32770
Control,Choose, 3, ComboBox3,ahk_class #32770
Control,Check,, Button27,ahk_class #32770
Control,Check,, Button21,ahk_class #32770
Control,Check,, Button8,ahk_class #32770
Control,Uncheck,, Button2,ahk_class #32770
Control,Choose, 2, ComboBox1,ahk_class #32770
ControlSetText,Edit8,16,ahk_class #32770
return
;---------------------------------------------------------------

_CS_BGMerge:
Suspend,Permit
Send,{.}
SetKeyDelay,300
SetControlDelay, 300
Send,{F5}
Send,{F7}
Send,{,}
Send,{Delete}
Send,{CtrlDown}{d}{CtrlUp}
Send,{.}
Send,{F10}
return

_CS_BGMergeForEdge:
Suspend,Permit
Send,{.}
SetKeyDelay,300
SetControlDelay, 300
Send,{F5}
Send,{F7}
Send,{,}
Send,{Delete}
Send,{CtrlDown}{d}{CtrlUp}
Send,{.}
Send,{F6}
Send,{F10}
return

_CS_BGNoMergeForEdge:
Suspend,Permit
Send,{.}
SetKeyDelay,300
SetControlDelay, 300
Send,{F5}
Send,{F7}
Send,{,}
Send,{Delete}
Send,{CtrlDown}{d}{CtrlUp}
Send,{.}
Send,{F6}
Send,{,}
return

;---------------------------------------------------------------

_CS_FrontsideSelect:
SetKeyDelay,200
Send,{CtrlDown}{f}{CtrlUp}
Send,{F10}
return

_CS_FrontsideSelectInvert:
SetKeyDelay,200
Send,{CtrlDown}{f}{CtrlUp}
Send,{F10}
Send,{F7}
return

_CS_FrontsideSelectPlusTone:
SetKeyDelay,200
Send,{CtrlDown}{f}{CtrlUp}
Send,{F10}
Send,{F9}
Send,{ShiftDown}{F5}{ShiftUp}
WinWaitActive , ahk_class #32770
ControlClick,OK,ahk_class #32770
return

;---------------------------------------------------------------
_CSGradationLength(num){
ControlSetText,Edit58,%num%,ahk_class CPropertyPalette
return
}


_CSGradationRotation(num){
Control,Choose, 2, ComboBox15,ahk_class CPropertyPalette
ControlSetText,Edit51,%num%,ahk_class CPropertyPalette
Control,Check,, Button112,ahk_class CPropertyPalette
}


_CSWorkspace(num){
Suspend,Permit
PostMessage, 0x111, 40809,0,, ahk_class CS40FrameWnd ; 0x111 is WM_COMMAND
Control,Choose, %num%,ComboBox1,ahk_class CMaterialPalette
return
}
;---------------------------------------------------------------

_comicStudioMode(num,modeName){
	CoordMode, ToolTip,Screen
	ToolTip,,,,12
	Gosub , _CSMode%modeName%
}

;---------------------------------------------------------------
Comic_StudioRotation(num){
IfWinExist , ahk_class CPropertyPalette
{
SetControlDelay,100
ControlFocus,Edit59,ahk_class CPropertyPalette
ControlSetText,Edit59,%num%,ahk_class CPropertyPalette
ControlClick,OK,ahk_class CPropertyPalette
Tooltip,,,,1
}
}