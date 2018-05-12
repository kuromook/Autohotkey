;グレー/網点表示切替
+^F7::
if A_TickCount < %ctrldouble%
{
PostMessage, 0x111, 40515,0,, ahk_class CS40FrameWnd ; 0x111 is WM_COMMAND
    ctrldouble=0
}
else
{
    ctrldouble=%A_TickCount%
    ctrldouble+=400
PostMessage, 0x111, 40514,0,, ahk_class CS40FrameWnd ; 0x111 is WM_COMMAND
}
return




