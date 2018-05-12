; Winキー単体は当然殺すべき
;#IfWinActive ahk_class ZBrush


#IfWinActive ahk_class ZBrush

LWin::return

^s::
send,^+{s}
sleep, 1000
send,{enter}
sleep, 1000
send,{y}
return


#2::
_toolTipZbTranspose:
CoordMode, ToolTip,Screen
ToolTip,
(
Zbrush Transpose MEMO
+ clcik on mesh, draw Action line for Normal
+ for set perticular axis, click end point
+ move when drawing action line, hit Space
+ move action line to CENTER orang ring
+ move end point to drag end orange ring
- alt+ click on mesh, move or scale

INNER RING ACTION
MOVE (w)
move       drag center
duplicate  c-click center
bend       a-click,drag center or end
stretch    drag distant
flatten    drag near
inflate    r-click,drag distant
extrude    c-click,drag mesh with masking

SCALE (E)
scale      click,drag distant foward end
scale axis clcik,drag mid
inflate/de c-click mid with masking

ROTATE (r)
rotate    click,drag opposite point
rotate line click, drag mid
elbow     a-click,drag end point

MASK POLYGROUP
c-click makes mask by polygroup
(only MOVE/SCALE/ROTATE MODE)
)
,10,510,1
return

#3::

CoordMode, ToolTip,Screen
ToolTip,
(
Zbrush Hair MEMO
Tool->Adaptive skin->
make adaptive skin
Tool->Insert->
mesh

1.All zspheres visible
press a
2. make adaptive skin
only one subtool.
then, insert mesh converted
3.set zsphere of 2 invisible,
 then activate inseted mesh of 2
, Tool->Subtool->Merge->
Merge Visible
)
,10,510,1
return

#1::

CoordMode, ToolTip,Screen
ToolTip,
,10,510,1
return
#IfWinActive
