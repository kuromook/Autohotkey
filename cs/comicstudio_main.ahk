;レイヤー２重化
F2::
:B0*:\\ld::
SetKeyDelay,200
SetControlDelay,100 
Send,{F5}
Send,{CtrlDown}{ShiftDown}{c}{ShiftUp}{CtrlUp}
Send,{k}
return


;選択範囲を選択範囲レイヤーに
F3::
:B0*:\\fl::
SetKeyDelay,200
Send,{CtrlDown}{ShiftDown}{d}{ShiftUp}{CtrlUp}
return

;塗りつぶし
F4::
SetKeyDelay,200
Send,{ShiftDown}{F5}{ShiftUp}
WinWaitActive , ahk_class #32770
ControlClick,OK,ahk_class #32770
return


;ワークスペース設定
#F12::
:B0*:\\w::
_CSWorkspace(8)
return

;選択解除
End::
Suspend,Permit
Send,{CtrlDown}{d}{CtrlUp}
return
;-----------------------------------------------------
;white edge
:B0*:\\bw::
Send,{F12}
return


;invert and black edge
:B0*:\\rb::
Send,{ShiftDown}{F12}{ShiftUp}
return

;white to black edge
:B0*:\\wb::
Send,{F11}
return
;-----------------------------------------------------
;layer property ( for layer rename )
:B0*:\\\::
Send,{ShiftDown}{F4}{ShiftUp}
return