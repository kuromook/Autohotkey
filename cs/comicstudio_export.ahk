RAlt & x::
Appskey & x::              ;first key
if(IME_IsON(WinExist("A")) ){
 IME_ON(WinExist("A"), False)
}
Input,InputChar,C I L1 T2,{Esc},p,c,b,e,q  ;second keys
if ErrorLevel=Match
{
        if InputChar=p                  ;actions
	{
	Gosub , _CS_ExportPrintshop
	}
	else
        if InputChar=c                  ;actions
	{
	Gosub , _CS_ExportConsignment
	}
        else
	if InputChar=b                  ;actions
	{
	Gosub , _CS_ExportBlog
	}
	if InputChar=e                  ;ipad
	{
	Gosub , _CS_ExportIpad
	}
        else
        if InputChar=q			;キーを追加する場合はココにつなげていく
            ToolTip
}
else
{
	if(buf_CSExportToolTip != 0)
	{
		buf_CSExportToolTip :=0
		CoordMode, ToolTip,Screen
		Gosub , _toolTipCSExport
	}
	else
	{
		buf_CSExportToolTip :=1
		ToolTip
	}
}
return

:B0*:\\ep::
Suspend,Permit
Gosub , _CS_ExportPrintshop
return

:B0*:\\ec::
Suspend,Permit
Gosub , _CS_ExportConsignment
return

:B0*:\\eb::
Suspend,Permit
Gosub , _CS_ExportBlog
return

:B0*:\\ee::
Suspend,Permit
Gosub , _CS_ExportIpad
return
