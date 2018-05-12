;Blender
#If WinActive("ahk_class GHOST_WindowClass")

_toolTipBlenderMouse:
CoordMode, ToolTip,Screen
ToolTip,
(
Blender Operation Help
*Viewpoint Move

Zoom In/Out :Wheel 
Slide : MidL+ Mouse
Rotate : Mid + Mouse
--------------------------
* Mouse Assign

L2 : Shift
R2 : Control
L1 : Alt
R1 : Space

G10 : b (boundary)
G9 : a (all)
G8 : c (circle)

G11 : C-Tab  
--------------------------
* Numpad Assign

NumDot -> Ctrl
** : z (solid/wireframe)

--------------------------
* Property Num Control
mouse cursor on box
Sfhit + drag : change amout
Ctrl + drag : chang amount
  
mouse cursor on color box
can Edit by Ctrl-C , Ctrl-V
  --------------------------
*Fly mode
Start: Fly mode
R1/R2 : Up/Down
Cross : Move
Green : Cancel
Pink  : Confirm
)
,10,1600,1
return

_toolTipBlenderStudy:
CoordMode, ToolTip,Screen
ToolTip,
(
Blender study
modeling

append module path
add obj : shift + a
a : release
c : select

e : extrude
-xyz : limit axis
s : resize

Alt + f : close
 
z : solid & wireframe
tab edit mode
)
,10,1600,1
return

Ralt & q::
Gosub, _toolTipBlenderStudy
return

RAlt & h::
Gosub, _toolTipBlenderMouse
return


NumpadDot & Numpad1::
Send, {CtrlDown}{Numpad1}{CtrlUp}
return

NumpadDot & Numpad3::
Send, {CtrlDown}{Numpad3}{CtrlUp}
return
NumpadDot & Numpad7::
Send, {CtrlDown}{Numpad7}{CtrlUp}
return

NumpadDot & Numpad2::
Send, {CtrlDown}{Numpad2}{CtrlUp}
return
NumpadDot & Numpad4::
Send, {CtrlDown}{Numpad4}{CtrlUp}
return

NumpadDot & Numpad6::
Send, {CtrlDown}{Numpad6}{CtrlUp}
return
NumpadDot & Numpad8::
Send, {CtrlDown}{Numpad8}{CtrlUp}
return

NumpadDot & Tab::
Send, {CtrlDown}{Tab}{CtrlUp}
return

NumpadMult::
if A_TickCount < %ctrldouble%
{
    Send,{z} 
    ctrldouble=0
}
else
{
    ctrldouble=%A_TickCount%
    ctrldouble+=400
    Send,{NumpadMult} 
}
return
#If
