
;---------------------------------------------------------------
RAlt & w::
Appskey & w::              ;first key
Input,InputChar,C I L1 T2,{Esc},f,s,d,q  ;second keys
if ErrorLevel=Match
{
        if InputChar=f                   ;actions
	{
	Run,chrome.exe --app=https://docs.google.com/document/d/1rjqShFwe2789dLRMvNHQyGaYwAkpJEe1DQMZxql9G4s/edit
	}
        else
        if InputChar=s                   ;actions
	{
	Run,chrome.exe --app=https://docs.google.com/document/d/1X3ETf2ublYFgcyT_u-qSO7YDOMFgiyZ38WI2D49VbKA/edit
	}
        else
        if InputChar=d                   ;actions
	{
	Run,chrome.exe --app=https://docs.google.com/document/d/1uspHKiiA7mG2hCn7BBgvQDF7jWj1-y49xT3vKgNjgJk/edit
	}
        else
        if InputChar=q			;キーを追加する場合はココにつなげていく
            ToolTip,,,,2


}
else
{
	if(buf_comicstudioHelp != 1)
	{
		buf_comicstudioHelp :=1
		CoordMode, ToolTip,Screen
		Gosub , _toolTipCS_WebDocument
	}
	else
	{
		buf_comicstudioHelp :=0
            	ToolTip,,,,2
	}
}
return
;---------------------------------------------------------------
