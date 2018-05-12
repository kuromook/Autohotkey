
;---------------------------------------------------------------
RAlt & m::
Appskey & m::              ;first key
if(IME_IsON(WinExist("A")) ){
 IME_ON(WinExist("A"), False)
}
Input,InputChar,C I L1 T2,{Esc},q,n,s,c,e,b,f,d,l,r  ;second keys
if ErrorLevel=Match
{
          if InputChar=n                   ;actions
	{
	ToolTip,,,,12
	_comicStudioMode(8,"Name")
	buf_CSToggle := 9
	}
	else 
        if InputChar=r                   ;actions
	{
	ToolTip,,,,12
	_comicStudioMode(8,"Redraw")
	buf_CSToggle := 8
	}
	else 
        if InputChar=l                   ;actions
	{
	ToolTip,,,,12
	Gosub,_toolTipLayerNameMode
	buf_CSToggle := 7
	}
	else 
        if InputChar=e                   ;actions
	{
	_comicStudioMode(6,"Erotic")
	buf_CSToggle := 6
	}
	else  
        if InputChar=d                   ;actions
	{
	_comicStudioMode(5,"Dastpan")
	buf_CSToggle := 5
	}
	else  
        if InputChar=b                   ;actions
	{
	_comicStudioMode(4,"Basic")
	buf_CSToggle := 4
	}
	else  
        if InputChar=f                   ;actions
	{
	_comicStudioMode(3,"Front")
	buf_CSToggle := 3
	}
	else
        if InputChar=s                   ;actions
	{
	_comicStudioMode(2,"Skin")
	buf_CSToggle := 2
	}
	else
        if InputChar=c                   ;actions
	{
	_comicStudioMode(1,"Cloth")
	buf_CSToggle := 1
	}
	else       
        if InputChar=q			;キーを追加する場合はココにつなげていく
            ToolTip,,,,1
	}
	else
	{
	if(buf_CSModeHelp != 0)
	{
		buf_CSModeHelp :=0
		CoordMode, ToolTip,Screen
		Gosub , _toolTipFuncCS_SCList
	}
	else
	{
		buf_CSModeHelp :=1
		ToolTip,,,,1
	}
}
return
;---------------------------------------------------------------
