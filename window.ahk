Ralt & 1::
if !chrome_flag
{
WinActivate, ahk_class Chrome_WidgetWin_1
WinMove, ahk_class Chrome_WidgetWin_1,, 600, 20,300,300
loop, 5
{
	Send, ^{NumpadSub}
	sleep,50
}
chrome_flag:=True
}
Else
{
WinActivate, ahk_class Chrome_WidgetWin_1
WinMove, ahk_class Chrome_WidgetWin_1,, 500, 40,1000,1000
loop, 5
{
	Send, ^{NumpadAdd}
	sleep,50
}	
chrome_flag:=False

}
Return
