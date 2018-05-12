;原稿PSDファイルインポート
RAlt & p::
Appskey & p::
IfWinNotActive , ahk_class #32770
{
PostMessage, 0x111, 40044,0,, ahk_class CS40FrameWnd ; 0x111 is WM_COMMAND
Control,ChooseString, scan ,ComboBox1,ahk_class #32770
Gosub , _toolTipCSImportPSD
}
else
{
SetControlDelay,400
Control,Choose, 2, ComboBox1,ahk_class #32770
ControlClick,OK,ahk_class #32770
ToolTip,,,,17
}
return


;通常PSDファイルインポート
:B0*:\\p::
PostMessage, 0x111, 40044,0,, ahk_class CS40FrameWnd ; 0x111 is WM_COMMAND
return
