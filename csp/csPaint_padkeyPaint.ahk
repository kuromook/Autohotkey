getDoubleKeyPaint(){
  dbl := new DoubleKey()
  ; base color
  dbl.append( new Operation("main color"   , 13,"i", 1, "!{]}", "key"))
  dbl.append( new Operation("erace"   , 13,"x", 1, "!{[}", "key"))

  dbl.append( new Operation("get color"   , 13,"n", 1, "{F14}", "key"))
  dbl.append( new Operation("spoit"   , 13,"j", 1, "{i}", "key"))
    dbl.append( new Operation("change color"   , 13,"j", 2, "!{Delete}", "key"))
  dbl.append( new Operation("make base"   , 13,"m", 1, "_csp_makeBasecolor", "sub"))

  ; detail sketch
  dbl.append( new Operation("main color"   , 9,"n", 1, "{e}", "key"))
  dbl.append( new Operation("main color"   , 9,"n", 2, "_csp_curveTrance", "sub"))
  dbl.append( new Operation("main color"   , 9,"i", 1, "{w}", "key"))
  dbl.append( new Operation("main color"   , 9,"i", 2, "_csp_pencil_flag2", "sub"))
  dbl.append( new Operation("erace"   , 9,"x", 1, "{x}", "key"))
  dbl.append( new Operation("erace"   , 9,"x", 2, "_csp_pencil_flag", "sub"))
  dbl.append( new Operation("Dot"   , 9,"j", 1, "_csp_pencil", "sub"))
  dbl.append( new Operation("mirror"   , 9,"m", 1, "_csp_flatpencil", "sub"))
  dbl.append( new Operation("mirror"   , 9,"m", 2, "_csp_select_sketch_layer", "sub"))
  dbl.append( new Operation("layer " , 9,"F16", 1, "+!{F16}" , "key"))
  dbl.append( new Operation("layer " , 9,"F17", 1, "_csp_toggle_sketch_view" , "key"))
  dbl.append( new Operation("layer " , 9,"F18", 1, "_csp_make_sketch_layer" , "sub"))
  dbl.append( new Operation("layer " , 9,"F19", 1, "_csp_brushcolor" , "sub"))

  ; line
  dbl.append( new Operation("sub color"   , 4,"x", 1, "{x}", "key"))
  dbl.append( new Operation("erace"   , 4,"x", 2, "{x}", "key"))
  dbl.append( new Operation("Control"   , 4,"j", 1, "{p}", "key"))
  dbl.append( new Operation("Control"   , 4,"n", 1, "{l}", "key"))
  dbl.append( new Operation("sketch"   , 4,"m", 1, "^+{F15}", "key"))

  ; liquid paint
  dbl.append( new Operation("main color"   , 7,"i", 1, "{w}", "key"))
  dbl.append( new Operation("fill"   , 7,"i", 2, "{6}", "key"))
  dbl.append( new Operation("Brush"   , 7,"j", 1, "{Numpad4}", "key"))

  ; liquid moisture
  dbl.append( new Operation("main color"   , 11,"i", 1, "{w}", "key"))
  dbl.append( new Operation("fill"   , 11,"i", 2, "{6}", "key"))
  dbl.append( new Operation("Brush"   , 11,"j", 1, "{Numpad7}", "key"))

  ; vegetation
  dbl.append( new Operation("cloth"   , 8,"j", 1, "{F12}", "key"))
  dbl.append( new Operation("sketch"   , 8,"m", 1, "{F11}", "key"))
  ; texture
  dbl.append( new Operation("texture"   ,10,"j", 1, "{0}", "key"))
  dbl.append( new Operation("sketch"   , 10,"m", 1, "{k}", "key"))
  ; skin
  dbl.append( new Operation("cloth"   , 5,"j", 1, "{Numpad2}", "key"))
  ; cloth inflate
  dbl.append( new Operation("texture"   , 12,"j", 1, "{Numpad8}", "key"))


  ; paint
  dbl.append( new Operation("Line"   , 3,"j", 1, "_csp_paint_allbrush", "sub"))
  ; general
  dbl.append( new Operation("Main"   , 6,"j", 1, "{Numpad1}", "key"))
  ; skin
  dbl.append( new Operation("Brush"   , 2,"j", 1, "{Numpad5}", "key"))

  ; anime flow
  dbl.append( new Operation("Marker"   , 1,"j", 1, "{Numpad3}", "key"))
  dbl.append( new Operation("fill"   , 1,"i", 2, "{6}", "key"))

  ; default action (and without flow setting)
  dbl.append( new Operation("Free"   , 0,"j", 1, "{p}", "key"))
  dbl.append( new Operation("Brush"   , 0,"j", 2, "{j}", "key"))
  dbl.append( new Operation("curve thin"   , 0,"n", 2, "{z}", "key"))
  dbl.append( new Operation("curve fill"   , 1,"n", 1, "{u}", "key"))
  dbl.append( new Operation("air brush"   , 0,"m", 1, "{b}", "key"))
  dbl.append( new Operation("blur"   , 0,"m", 2, "{b}", "key"))

  dbl.append( new Operation("main color"   , 0,"i", 1, "{w}", "key"))
  dbl.append( new Operation("fill"   , 0,"i", 2, "{q}", "key"))
  dbl.append( new Operation("erace"   , 0,"x", 1, "_csp_erace_with_flag", "sub"))
;  dbl.append( new Operation("sub color"   , 0,"x", 2, "_csp_swap_color", "sub"))
  dbl.append( new Operation("curve", 0,"s", 1, "_csp_paint_curve", "sub"))
  dbl.append( new Operation("confirm"   , 0,"s", 2, "_csp_paint_confirm", "sub"))

  dbl.append( new Operation("layer " , 0,"F16", 1, "+!{F16}" , "key"))
  dbl.append( new Operation("layer " , 0,"F17", 1, "+!{F17}" , "key"))
  dbl.append( new Operation("layer " , 0,"F18", 1, "+!{F18}" , "key"))
  dbl.append( new Operation("layer " , 0,"F19", 1, "+!{F19}" , "key"))
  return dbl
}



, & .::
send, {i}
Return

+m::
dbl:=getDoubleKeyPaint()
if A_TickCount < %ctrldoubleM%
{
  keys := dbl.byKey("m",buf_CSPFlow, 2)
    ;if (buf_CSPFlow >2)
    ;{
    ;  SoundPlay,*-1
     Gosub, _csPaintResetSubTool
    ;}
  ctrldoubleM=0
   }
else
{
    keys := dbl.byKey("m",buf_CSPFlow, 1)
    ctrldoubleM=%A_TickCount%
    ctrldoubleM+=400
}
return



+j::
dbl:=getDoubleKeyPaint()
if A_TickCount < %ctrldoubleJ%
{
  keys := dbl.byKey("j",buf_CSPFlow, 2)
    if (buf_CSPFlow > 2) && (buf_CSPFlow != 10)
    {
      SoundPlay,*-1
     Gosub, _csPaintResetSubTool
    } else {
    keys := dbl.byKey("j",buf_CSPFlow, 1)
    }
  ctrldoubleJ=0
   }
else
{
    keys := dbl.byKey("j",buf_CSPFlow, 1)

    ctrldoubleJ=%A_TickCount%
    ctrldoubleJ+=400
}
return


+n::
dbl:=getDoubleKeyPaint()
  if A_TickCount < %ctrldoubleN%
   {
      keys := dbl.byKey("n",buf_CSPFlow, 2)
    if (buf_CSPFlow > 2) && (buf_CSPFlow != 10)
    {
    SoundPlay,*-1
     Gosub, _csPaintResetSubTool
    }
    else{
       keys := dbl.byKey("n",buf_CSPFlow, 1)
    }
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
dbl:=getDoubleKeyPaint()
 if A_TickCount < %ctrldoubleI%
 {
    keys := dbl.byKey("i",buf_CSPFlow, 2)
    ctrldoubleI=0

 }
 else
 {
    ctrldoubleI=%A_TickCount%
    ctrldoubleI+=400
    keys := dbl.byKey("i",buf_CSPFlow, 1)
 }
return


+x::
dbl:=getDoubleKeyPaint()
 if A_TickCount < %ctrldoubleX%
 {
    keys := dbl.byKey("x",buf_CSPFlow, 2)
    ctrldoubleX=0

 }
 else
 {
    keys := dbl.byKey("x",buf_CSPFlow, 1)
    ctrldoubleX=%A_TickCount%
    ctrldoubleX+=400
 }
return


!F14::
dbl:=getDoubleKeyPaint()
 if A_TickCount < %ctrldoubleS%
 {
    keys := dbl.byKey("s",buf_CSPFlow, 2)
    ctrldoubleS=0
 }
 else
 {
    keys := dbl.byKey("s",buf_CSPFlow, 1)
    ctrldoubleS=%A_TickCount%
    ctrldoubleS+=400

 }
return

;~!F14::RapidHotkey("_csp_paint_curve""_csp_paint_second""_csp_paint_confirm",1, 0.22 , 1)

~!+F14::RapidHotkey("_csp_paint_undo""_csp_line_curveErace""_csp_line_undo",2, 0.3, 1)
_csp_paint_undo:
send,{i}
Return



_csp_pencil_flag:
if(!pencil_flag)
{
  pencil_flag=1
}Else if(pencil_flag=1){
  pencil_flag=0
}Else{
  pencil_flag=1
}
gosub, _csp_pencil
Return

_csp_pencil_flag2:
if(!pencil_flag)
{
  pencil_flag=2
}Else if(pencil_flag=1){
  pencil_flag=2
}Else{
  pencil_flag=0
}
gosub, _csp_pencil
Return

_csp_pencil:
send,{w}
if(!pencil_flag){
  send,{9}
}Else if(pencil_flag=1){
  send,{F10}
}Else{
  send,{9}
}
Return

_csp_paint_allbrush:
send,+{z}
;send,{F8}
send,{Numpad1}
Return

_csp_paint_curve:
send, {F5}
Return

_csp_paint_second:
keys := dbl.byKey("s",buf_CSPFlow, 2)
Return

_csp_paint_clear:
send, +{F17}
Return

_csp_erace_fill:
send,{u}
send,{x}
return

+F1::
_createSolidFillLayer()
Send,^{F1}
return

F13::
Send,!{F13}
Send,^{h}
SoundPlay,*128
return


^+F17::
  if A_TickCount < %ctrldoubleST%
  {
    Send,{CtrlDown}{9}{CtrlUp}
    Send,{CtrlDown}{8}{CtrlUp}

     ctrldoubleST=0
   }
  else
   {
    ctrldoubleST=%A_TickCount%
    ctrldoubleST+=400
     Send,{CtrlDown}{F16}{CtrlUp}
   }
Return

; Flow script by NumpadDot
NumpadDot & F16::
NumpadDel & F16::
  dbl:=getDoubleKeyPaint()
  keys := dbl.byKey("F16",buf_CSPFlow, 1)
  return

NumpadDot & F17::
NumpadDel & F17::
  dbl:=getDoubleKeyPaint()
  keys := dbl.byKey("F17",buf_CSPFlow, 1)
  return

NumpadDot & F18::
NumpadDel & F18::
  dbl:=getDoubleKeyPaint()
  keys := dbl.byKey("F18",buf_CSPFlow, 1)
  return

NumpadDot & F19::
NumpadDel & F19::
  dbl:=getDoubleKeyPaint()
  keys := dbl.byKey("F19",buf_CSPFlow, 1)
  return


_csp_clipping:
if (buf_CSPFlow != 4 && buf_CSPFlow != 8 && buf_CSPFlow != 9)
{
  Send ^{g}
}
return

_csp_confirm_transform:
send,+{F17}
send {Enter}
send ^{d}
return

_csp_fill_color:
send, !{delete}
send, ^{d}
Return
_csp_curveErace:
send,{u}
send,{x}
Return

_csp_curveTrance:
send,{z}
if (buf_CSPtoggleSketch=1)
{
Send,{s}

}
else
{
  Send,{x}
}


Return


_csp_flatpencil:
send,{F3}
send,{w}
return

_csp_Boldpencil:
send,{F12}
send,{w}
return

_csp_paint_confirm:
  send,{Enter}
  send,^{d}
  return

_csp_mirror:
send ^{F16}
send {w}
return

_csp_set_default_subtool:
  send,^!{F14}
  SoundPlay,*-1
return

_csp_set_twitter_rough:
send, ^!{F16}
send, {w}
send, ^+!{F1}
send, {s}
send, ^+!{F2}
send,{w}
return

_csp_set_sketch_layer:
send, ^+{F1}
send, ^+{F2}
return

_csp_sketch_or_blur:
if (buf_CSPDisableErace=1)
{
  Send,{b}
}
else
{
Send,+{F14}
}
return

_csp_move_or_blur:
if (buf_CSPDisableErace=1)
{
  Send,{5}
}
else
{
Send,{b}
}
return

_csp_erace_with_flag:
if (buf_CSPDisableErace=1)
{
Send,{s}
}
else
{
  Send,{x}
}
return

_csp_toggle_sketch:
if (buf_CSPtoggleSketch=1)
{
Send,^!+{5}
buf_CSPtoggleSketch:=0
}
else
{
  send, ^!+{6}
  buf_CSPtoggleSketch:=1
}

_cspflowSC("d")
dbl:=getDoubleKeyPaint()
dbl.byKey("j",buf_CSPFlow, 1)
Send,^+{F14}
Send,{w}
sound(780,180)
return

_csp_makeBasecolor:
send,^!{F1}
Gosub, _csp_clipping
send, !{Delete}
Return

NumpadPgdn::
send,{9}
send,{w}
return
NumpadEnd::
  send,{u}
  send,{x}
Return




_csp_make_sketch_layer:
  send,^+{F2}
  sleep, 300
  send,{F1}
  return

_csp_select_sketch_layer:
  send,^+!{u}
  sleep, 300
  send,{F1}
  return

_csp_brushcolor:
  if buf_cspsketch =1
  {
    send, ^+!{F7}
    buf_cspsketch:=2
  }
    else if buf_cspsketch =2
  {
    send, ^+!{F8}
    buf_cspsketch:=3
  }
    else if buf_cspsketch =3
  {
    send, ^+!{F9}
    buf_cspsketch:=4
  }
  else if buf_cspsketch =4
  {
    send, {F1}
    buf_cspsketch:=5
  }
  else
  {
    send, ^+!{F2}
    buf_cspsketch:=1
  }
  sleep, 100
  send, ^+{F5}
  sleep, 100
  return


NumpadDot & NumpadClear::
csp_paint_flag:=!csp_paint_flag
return



; change brush option
_csp_reset_brush_option:
send, ^!{] 10}
sleep,100
send, +{] 10}
return


~Space & Numpad2::
gosub, csp_paint_decoration_gray
Return


~Space & Numpad1::
gosub, _csp_paint_vegtation
Return


; flow short cut
csp_paint_flow_sc_default:
dbl:=getDoubleKeyPaint()
dbl.byKey("j",buf_CSPFlow, 1)
Send,^+{F14}
Send,{w}
return

;anime
csp_paint_anime:
Numpad3::
_cspflowSC("a")
gosub,csp_paint_flow_sc_default
buf_CSPDisableErace:=1
return

;fruid
Numpad1::
  gosub, csp_paint_general
return

Numpad2::
  gosub, csp_paint_cloth
return

;fruid
Numpad4::
  gosub, csp_paint_fruid
Return

Numpad5::
  gosub, csp_paint_skin
return

;fruid
Numpad7::
  gosub, csp_paint_moisture
Return

Numpad8::
  gosub, csp_paint_texture
return

csp_paint_fruid:
_cspflowSC("f")
gosub,csp_paint_flow_sc_default
buf_CSPDisableErace:=1
return

;moisture

csp_paint_moisture:
_cspflowSC("m")
gosub,csp_paint_flow_sc_default
return



csp_paint_general:
_cspflowSC("g")
gosub,csp_paint_flow_sc_default
buf_CSPDisableErace:=1
return



;skin
csp_paint_skin:
_cspflowSC("s")
gosub,csp_paint_flow_sc_default
Return



csp_paint_cloth:
_cspflowSC("c")
gosub,csp_paint_flow_sc_default
buf_CSPDisableErace:=1
return


csp_paint_texture:
_cspflowSC("t")
gosub,csp_paint_flow_sc_default
return

;research
Numpad6::
csp_paint_research:
_cspflowSC("e")
gosub, csp_paint_flow_sc_default

return

;detail sketch
Numpad9::
csp_paint_sketch:
_cspflowSC("d")
gosub,csp_paint_flow_sc_default
return

_csp_paint_vegtation:
_cspflowSC("e")
gosub,csp_paint_flow_sc_default
return

csp_paint_decoration_gray:
_cspflowSC("v")
gosub,csp_paint_flow_sc_default
return



Numpad0 & Up::
work:= new workObj()
work.work()
return

Numpad0 & Right::
work:= new workObj()
work.next()
return

Numpad0 & Left::
work:= new workObj()
work.before()
return

Numpad0 & Down::
work:= new workObj()
work.start()
return

;~!^+F13::RapidHotkey("_csp_sketch_pencil""_csp_line_undo",2, 0.3, 1)
;+!F13::
;  send,{e}
;Return

;Mouse gesture alpha is active, then it not work. whi?
~XButton2::
;+!F13 up::
send,{9}
send,{w}
Return
