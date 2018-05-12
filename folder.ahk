
;---------------------------------------------------------------
RAlt & d::
Appskey & d::              ;first key
Suspend,Permit
if(IME_IsON(WinExist("A")) ){
 IME_ON(WinExist("A"), False)
}
Input,InputChar,C I L1 T2,{Esc},q,p,v,s,a,m,j,l,e
if ErrorLevel=Match
{
  if InputChar=m                   ;actions
    {
      Run, Explorer E:\原稿2014\
      buf_CSPMode := 1
    }
  Else
    if InputChar=e                   ;actions
    {
      Run, Explorer E:\イベント2013\
      buf_CSPMode := 1
    }
  Else  
      if InputChar=v                   ;actions
    {
      Run, Explorer E:\video\
      buf_CSPMode := 1
    }
  Else
    if InputChar=l                   ;actions
    {
      Run, "C:\Program Files\Adobe\Adobe Bridge CS6 (64 Bit)\Bridge.exe" 
      buf_CSPMode := 1
    }
  Else  
  if InputChar=j                   ;actions
    {
      Run, Explorer "C:\Users\kuro\js\"
      buf_CSPMode := 1
    }
  Else    
      if InputChar=s                   ;actions
    {
      Run, "C:\Program Files\Adobe\Adobe Bridge CS6 (64 Bit)\Bridge.exe"
      buf_CSPMode := 1
    }
  Else  
    if InputChar=a                   ;actions
    {
      Run, Explorer "C:\tool\gnupack_basic-11.00\home\Autohotkey\"
      buf_CSPMode := 1
    }
  Else  
    if InputChar=p                   ;actions
    {
      Run, Explorer "C:\Users\kuro\py\"
      buf_CSPMode := 1
    }
  Else  
    if InputChar=q			;キーを追加する場合はココにつなげていく
      ToolTip,,,,12
}
Else
{
  if(buf_CSPModeHelp != 0)
  {
    buf_CSPModeHelp :=0
    CoordMode, ToolTip,Screen

  }
  Else
  {
    buf_CSPModeHelp :=1
    ToolTip,,,,1
  }
}
Return
;---------------------------------------------------------------
