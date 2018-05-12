
;---------------------------------------------------------------
RAlt & g::
Appskey & g::              ;first key
Suspend,Permit
if(IME_IsON(WinExist("A")) ){
 IME_ON(WinExist("A"), False)
}
Input,InputChar,C I L1 T2,{Esc},s,h,f,e,-,+,1,2,3,4,5,6,7,8 ;second keys
if ErrorLevel=Match
{
      if InputChar=1                   ;actions
    {
      _csPaintGroup("1")
    }
    Else 
      if InputChar=2                   ;actions
    {
      _csPaintGroup("2")
    }
    Else
    if InputChar=3                 ;actions
    {
      _csPaintGroup("3")
    }
  Else 
  if InputChar=4                 ;actions
  {
    _csPaintGroup("4")
  }
  Else
  if InputChar=5                   ;actions
  {
    _csPaintGroup("5")
  }
  Else
    if InputChar=6                   ;actions
    {
      _csPaintGroup("6")
    }
  Else
    if InputChar=e                   ;actions
    {
      _csPaintGroup("Erotic")
    }
  Else  
    if InputChar=f                   ;actions
    {
      _csPaintGroup("Face")
    }
  Else
    if InputChar=h                   ;actions
    {
      _csPaintGroup("Hair")
    }
  Else 
    if InputChar=+                   ;actions
    {
      _csPaintGroup("Male")
    }
  Else 
      if InputChar=-                   ;actions
    {
      _csPaintGroup("Female")
    }
  Else 

    if InputChar=s                  ;actions
    {
      _csPaintGroup("Skin")
    }
}
Else
{
  if(buf_CSPGroupHelp != 0)
  {
    buf_CSPGroupHelp :=0
    CoordMode, ToolTip,Screen
    Gosub , _toolTipGroupCSP_SCList
  }
  Else
  {
    buf_CSPGroupHelp :=1
    ToolTip,,,,5
  }
}
Return
;---------------------------------------------------------------
