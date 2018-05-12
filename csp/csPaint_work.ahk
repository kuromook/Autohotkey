
;---------------------------------------------------------------
RAlt & w::
Appskey & w::              ;first key
Suspend,Permit
if(IME_IsON(WinExist("A")) ){
 IME_ON(WinExist("A"), False)
}
if(buf_CSPMode != 10){
  return
}
Input,InputChar,C I L1 T2,{Esc},q,s,e,h,c,r,m,g ;second keys
if ErrorLevel=Match
{
    if InputChar=s                 ;actions
    {
      ToolTip,,,,14
      _csPaintWork(1,"skin")
      buf_CSPWork := "skin"
      buf_CSPWorkNum := 1
      _cspflowSC("m")
      dbl:=getDoubleKeyPaint()
      dbl.byKey("j",buf_CSPFlow, 1)
    }
  Else
      if InputChar=c                 ;actions
    {
      ToolTip,,,,14
      _csPaintWork(2,"cloth")
      buf_CSPWork := "cloth"
      buf_CSPWorkNum := 1
      _cspflowSC("c")
      dbl:=getDoubleKeyPaint()
      dbl.byKey("j",buf_CSPFlow, 1)
    }
  Else 
    if InputChar=q			;キーを追加する場合はココにつなげていく
      ToolTip,,,,14
}
Else
{
  if(buf_CSPWorkHelp != 0)
  {
    buf_CSPWorkHelp :=0
    CoordMode, ToolTip,Screen
    Gosub , _toolTipFuncCSP_SCList
  }
  Else
  {
    buf_CSPWorkHelp :=1
    ToolTip,,,,2
  }
}
Return
;---------------------------------------------------------------
