
;---------------------------------------------------------------
RAlt & h::
Appskey & h::              ;first key
if(IME_IsON(WinExist("A")) ){
 IME_ON(WinExist("A"), False)
}
Input,InputChar,C I L1 T2,{Esc},f,g,t,s,o,p,q  ;second keys
if ErrorLevel=Match
{
        if InputChar=f                   ;actions
	{
	CoordMode, ToolTip,Screen
	Gosub , _toolTipCS_FrontsideSel
	}
        else
        if InputChar=g                   ;actions
	{
	CoordMode, ToolTip,Screen
	Gosub , _toolTipCS_SCListGraypainting
	}
        else
	if InputChar=o                   ;actions
	{
	CoordMode, ToolTip,Screen
	Gosub , _toolTipCS_SCListOnomatpeia
	}
        else
	if InputChar=p                   ;actions
	{
	CoordMode, ToolTip,Screen
	Gosub , _toolTipCS_Property
	}
        else
        if InputChar=s                   ;actions
	{
	CoordMode, ToolTip,Screen
	Gosub , _toolTipCS_SpeedDial
	}
        else
	if InputChar=t                   ;actions
	{
	CoordMode, ToolTip,Screen
	Gosub , _toolTipCS_SCText
	}
        else
        if InputChar=q			;キーを追加する場合はココにつなげていく
            ToolTip


}
else
{
	if(buf_comicstudioHelp != 0)
	{
		buf_comicstudioHelp :=0
		CoordMode, ToolTip,Screen
		Gosub , _toolTipCS_SCList
	}
	else
	{
		buf_comicstudioHelp :=1
            	ToolTip,,,,2
	}
}
return
;---------------------------------------------------------------
