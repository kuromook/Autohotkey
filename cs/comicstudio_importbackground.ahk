RAlt & b::
Appskey & b::              ;first key
if(IME_IsON(WinExist("A")) ){
 IME_ON(WinExist("A"), False)
}
Input,InputChar,C I L1 T2,{Esc},p,w,f,q  ;second keys
if ErrorLevel=Match
{
        if InputChar=p                  ;actions
	{
	Gosub , _CS_BGMerge
	}
	else
        if InputChar=w                  ;actions
	{
	Gosub , _CS_BGMergeForEdge
	}
        else
	if InputChar=f                  ;actions
	{
	Gosub , _CS_BGNoMergeForEdge
	}
        else
        if InputChar=q			;キーを追加する場合はココにつなげていく
            ToolTip
}
else
{
	if(buf_CSMergeToolTip != 0)
	{
		buf_CSMergeToolTip :=0
		CoordMode, ToolTip,Screen
		Gosub , _toolTipCS_BGMerge
	}
	else
	{
		buf_CSMergeToolTip :=1
		ToolTip
	}
}
return

;-------------使用不可---------------------------------
:B0*:\\b1::
Gosub , _CS_BGMerge
return

:B0*:\\b2::
Gosub , _CS_BGMergeForEdge
return

:B0*:\\b3::
Gosub , _CS_BGNoMergeForEdge
return

