_toolTipFuncCS_SCList:
CoordMode, ToolTip,Screen
ToolTip,
(
*Mode Select Short Cut

d: Dastpan
r: Redraw
b: Basic
e: Erotic
s: Shadow
f: Frontside Effect 
   & Onomatpeia
l: Layer Name 
n: Name

)
,10,460,1
return

_CSModeLayerName:
ToolTip,
(
LAYER NAME MODE
Short Cut List
)
,10,60,12
return

_CSModeName:
ToolTip,
(
NAME MODE
Short Cut List
F19: Paste
F18: Return
F17: Emacs
---------------
on Emacs
F17: Copy Speaking
F19: Comic Studio 
)
,10,60,12
return
_CSModeRedraw:
ToolTip,
(
REDRAW MODE
Short Cut List

L1 : Pen
L1*: Pen Large 
L2 : Bucket .7
L2*: Redraw Layer
R1 : Fil
R2 : Rotationl
R2*: Reset Rotation

Ctrl- E : merge Layer
)
,10,60,12
return

_CSModeDastpan:
ToolTip,
(
DASTPAN MODE
Short Cut List

L1 : Pen
L1*: - 
L2 : Bucket .7
L2*: -
R2 : Fil
R2*: -
)
,10,60,12
return

_CSModeBasic:
ToolTip,
(
BASIC MODE
Short Cut List

L1 : Pen
L1*: - 
L2 : Bucket .7
L2*: Fil

R1 : Fil
R1*: Property
R2 : Flat Marker
R2*: -
)
,10,60,12
return

_CSModeErotic:
ToolTip,
(
EROTIC MODE
Short Cut List

L1 : Pen
L1*: Pen Large
L2 : Bucket .2
L2*: Fil
R2 : Pattern Brush
R2*: Pattern Brush L
)
,10,60,12
return

_CSModeCloth:
ToolTip,
(
CLOTH MODE
Short Cut List

L1 : Pen
L1*: Pen InOut
L2 : Bucket .2

R1*: Fil
R2 : Flat Marker
R2*: Pattern Brush
)
,10,60,12
return


_CSModeSkin:
ToolTip,
(
SHADOW MODE
Short Cut List

L1 : Pen
L1*: Pen Revised 
L2 : Bucket .2
L2*: Bucket .7

R1 : Fil
R2*: Layer Property
R2 : Flat Marker
R2*: Pattern Brush
)
,10,60,12
return


_CSModeFront:
ToolTip,
(
FRONT MODE
Short Cut List

L1 : Pen
L1*: Pen InOut
L2 : Bucket .2
L2*: Polygonal Lasso
R2 : Circle Marker
R2*: Pattern Brush
)
,10,60,12
return

;---------------------------------------------------------------
_toolTipCS_Property:
CoordMode, ToolTip,Screen
ToolTip,
(
*Tone Property Short Cut

j: Move
n: Hand
m: Rotation


y: 10ppc 30L Mesh
l: 10ppc Stripe Line
o: 10ppc Border Line
i: 15ppc Noise  80
u: 25ppc Noize  80
t: Black

[qwedcxza] : Gradation
Shift + [qwedcxza] : Tilted Gradation
[0-9] : set Length of Gradation
Shift + [0-9] : set Length of Gradation trebled
)
,10,60,1
return
;---------------------------------------------------------------
_toolTipCS_Rotation:
CoordMode, ToolTip,Screen
ToolTip,
(
*Rotation Short Cut

C-t: 180 turn
C-r: Right 90
C-l: Left 90
)
,10,-320,1
return

;---------------------------------------------------------------
_toolTipCS_SCList:
CoordMode, ToolTip,Screen
ToolTip,
(
*Short Cut List

window sort : \\w
---------------------------------------
*layer

F16 (AF9): make selection by color
F17 (AF10): invert selection
F18 (AF11): shrink selection and invert
F19 (AF12): fill selection

F8 : new layer
F9 : new tone layer
F10 : delete layer 

\\ld : Layer Duplicate
---------------------------------------
*import PSD
\\p : import
Apps + p : import with adjust
F13 : move layer

*Rotation
Ctrl + r Ctrl + t : rotate 180
Ctrl + r Ctrl + r : rotate Right 90
Ctrl + r Ctrl + l : rotate Left 90
---------------------------------------
*merge Backbround effect ( Apps + b )

Apps + b : merge background effect
---------------------------------------
*Front side effect ( Apps + f )

\\fl : selection to selection layer

\\fp : selection layer to Plain selection
\\fr : selection layer to Reverse selection
\\ft : selection layer to Tone filled selection 
---------------------------------------
*Onomatopeia Edge

\\bw : Black + White edge
\\rb : Reverse + black edge
\\wb : White + Black edge
---------------------------------------
*Export ( Apps + x )

\\ep : Export Printshop
\\ec : Export Consignment
\\eb : Export Blog
\\ee : Export Ebook 
---------------------------------------
\\\ : layer property
---------------------------------------
*Help Document ( Apps + h or w)

Apps + h g : Graypainting
Apps + h f : Frontside effect preparation
Apps + h o : Onomatpeia
Apps + h p : Property
Apps + h t : Text
Apps + w : Web Document
)
,10,60,2
return

;---------------------------------------------------------------
_toolTipCS_SCListGraypainting:
CoordMode, ToolTip,Screen
ToolTip,
(
*Short Cut List

window sort : \\w
---------------------------------------
*layer

F16 : make selection by color
F17 : invert selection
F18 : shrink selection and invert
F19 : fill selection

F8 : new layer
F9 : new tone layer
F10 : delete layer 

\\ld : Layer Duplicate
---------------------------------------
\\\ : layer property
---------------------------------------
*Help Document ( Apps + h or w)
)
,10,60,2
return

;---------------------------------------------------------------
_toolTipCS_SCListOnomatpeia:
CoordMode, ToolTip,Screen
ToolTip,
(
*Short Cut List
---------------------------------------
*Onomatopeia Edge

\\bw : Black + White edge
\\rb : Reverse + black edge
\\wb : White + Black edge

)
,10,60,2
return

;---------------------------------------------------------------
_toolTipCS_FrontsideSel:	;前面処理準備Tips
ToolTip,
(
* making frontside selection

1.make Selection sticking out
2.press F3 ( Selection to Selection Layer )
3.adjust Selection Layer
4.press short cut

Apps + f p : Plain Selection
Apps + f r : Reverse Selection
Apps + f t : Tone Filed Selection

(Hotstring SC)
\\fp : selection layer to Plain selection
\\fr : selection layer to Reverse selection
\\ft : selection layer to Tone filled selection 
)
,10,-800,1
return

;---------------------------------------------------------------

_toolTipCS_SCText:		;Tipsショートカットリスト
ToolTip,
(
Tooltip Help SC Text

*Text Mode
NumDot + Num[1-9] : font size
------------------------------
Apps + 0 : Vertical
Apps + 9 : Horrizontal
Apps + 8 : Erotic Voice
Apps + 7 : Location
Apps + - : Postscript
------------------------------
@@ (Alt + h) : Heart mark
]] (Alt + t) : ltu (hiragana)
[[ (Alt + T) : ltu (katakana)
```` (Alt + w) : wave

Alt + z : !!!
Alt + g : SPACE
Alt + v : Strict Line
------------------------------
Alt + b : Bold
F12     : white edge
F13     : vertical <-> horrizontal

Apps + n : naka (Rubi)

)
,10,-500,2
return


;---------------------------------------------------------------
_toolTipCS_BGMerge:
CoordMode, ToolTip,Screen
ToolTip,
(
*Background Merge mode

1.set Layer Order like this.

[ Background Effect Layer ]
[ Tone filed Layer you will shape ]

2.Set Control on
[ Background Effect Layer ]

3.Press Short cut 

Apps + b p : Plain 
Apps + b w : White Edge
Apps + b f : Floated 
)
,10,-800,1
return

;---------------------------------------------------------------
_toolTipCSExport:
CoordMode, ToolTip,Screen
ToolTip,
(
Export Short Cut
Apps + x ->
p : Printshop
c : Consignment Bookshop
b : Blog
e : Ebook

( Hotstring SC )
\\ep : Export Printshop
\\ec : Export Consignment
\\eb : Export Blog
\\ee : Export Ebook 
)
,10,-800,1
return

;---------------------------------------------------------------
_toolTipCSImportPSD:
CoordMode, ToolTip,Relative
ToolTip,
(
1.Select file to include
2.Select 2nd layer
3.Press Apps + p
)
,10,-800,1
return

;---------------------------------------------------------------
_toolTipCS_WebDocument:
CoordMode, ToolTip,Relative
ToolTip,
(
comic studio Web Document

Apps + w f : finishing theory
Apps + w d : division material flow
Apps + w s : short cut consideration
)
,10,-800,2
return


;---------------------------------------------------------------
_toolTipCS_SpeedDial:
CoordMode, ToolTip,Relative
ToolTip,
(
comic studio Speed Dial

F13 :
F14 :
F15 :

F16 : Select Color
F17 : Invert Selection
F18 : Shrink Selection & Invert
F19 : Fill Color
)
,10,-800,2
return