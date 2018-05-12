;前面処理レイヤー作成
;選択範囲を逆転して読み込み
;トーンレイヤーを作成して選択範囲読込

RAlt & f::
Appskey & ^::              ;first key
Input,InputChar,C I L1 T2,{Esc},p,r,t,q  ;second keys
if ErrorLevel=Match
{
        if InputChar=p                  ;actions
	{
	Gosub , _CS_FrontsideSelect
	}

	else
        if InputChar=r                  ;actions
	{
	Gosub , _CS_FrontsideSelectInvert
	}
        else
	if InputChar=t                  ;actions
	{
	Gosub , _CS_FrontsideSelectPlusTone
	}
        else
        if InputChar=q			;キーを追加する場合はココにつなげていく
            ToolTip
}
else
{
	if(buf_CSFrontsideToolTip != 0)
	{
		buf_CSFrontsideToolTip :=0
		CoordMode, ToolTip,Screen
		Gosub , _toolTipCS_FrontsideSel
	}
	else
	{
		buf_CSFrontsideToolTip :=1
		ToolTip
	}
}
return

;-----------------------------------------------

:B0*:\\fp::
Gosub , _CS_FrontsideSelect
return

:B0*:\\fr::
Gosub , _CS_FrontsideSelectInvert
return

:B0*:\\ft::
Gosub , _CS_FrontsideSelectPlusTone
return