#Include %A_ScriptDir%\cs\comicstudio_func.ahk


CSPadkeyWindows()
{
 return WinActive("ahk_class CS40FrameWnd") OR WinActive("ahk_class CToolOptionPalette") OR WinActive("ahk_class CLayerPalette")
}


;全モード共通
#If CSPadkeyWindows()

#IncludeAgain %A_ScriptDir%\cs\comicstudio_importpsd.ahk
#IncludeAgain %A_ScriptDir%\cs\comicstudio_importbackground.ahk
#IncludeAgain %A_ScriptDir%\cs\comicstudio_main.ahk
#IncludeAgain layername_tooltip.ahk
#Include %A_ScriptDir%\cs\comicstudio_export.ahk
#Include %A_ScriptDir%\cs\comicstudio_common.ahk
#Include %A_ScriptDir%\cs\comicstudio_help.ahk

#Include %A_ScriptDir%\cs\comicstudio_web.ahk
#Include %A_ScriptDir%\cs\comicstudio_mode.ahk

LWin::
Suspend,Permit
Return

;各window限定
#IfWinActive ahk_class CS40FrameWnd
#Include %A_ScriptDir%\cs\comicstudio_rotation.ahk
#Include %A_ScriptDir%\cs\comicstudio_frontsideEffect.ahk

;色域指定ウィンドウ
#If WinExist("ahk_class CS40FrameWnd") and WinActive("ahk_class #32770")
#IncludeAgain %A_ScriptDir%\cs\comicstudio_importpsd.ahk
#Include %A_ScriptDir%\cs\comicstudio_export.ahk


;プロパティウィンドウ
#IfWinExist ahk_class CPropertyPalette
#IncludeAgain %A_ScriptDir%\cs\comicstudio_common.ahk
#IncludeAgain %A_ScriptDir%\cs\comicstudio_rotation.ahk
#Include %A_ScriptDir%\cs\comicstudio_rubi.ahk
#Include %A_ScriptDir%\cs\comicstudio_textproperty.ahk

#If WinExist("ahk_class CPropertyPalette") and !(buf_CSToggle == 9) and !(IME_IsON(WinExist("A")))
#IncludeAgain %A_ScriptDir%\cs\comicstudio_toneproperty.ahk

#If WinExist("ahk_class CPropertyPalette") and !(IME_IsON(WinExist("A")))
#Include %A_ScriptDir%\cs\comicstudio_padkey.ahk



#If WinExist("ahk_class CPropertyPalette") and (IME_IsON(WinExist("A")))
#IncludeAgain %A_ScriptDir%\cs\comicstudio_textpropertyShortInput.ahk


#If CSPadkeyWindows() and (buf_CSToggle == 1) and !(IME_IsON(WinExist("A")))
#IncludeAgain %A_ScriptDir%\cs\comicstudio_padkeyCloth.ahk
#IncludeAgain %A_ScriptDir%\cs\comicstudio_speeddial.ahk

#If CSPadkeyWindows() and (buf_CSToggle == 2 ) and !(IME_IsON(WinExist("A")))
#Include %A_ScriptDir%\cs\comicstudio_padkeySkin.ahk
#IncludeAgain %A_ScriptDir%\cs\comicstudio_speeddial.ahk

#If CSPadkeyWindows() and (buf_CSToggle == 3) and !(IME_IsON(WinExist("A")))
#Include %A_ScriptDir%\cs\comicstudio_padkeyFront.ahk
#IncludeAgain %A_ScriptDir%\cs\comicstudio_speeddial.ahk

#If CSPadkeyWindows() and (buf_CSToggle == 4) and !(IME_IsON(WinExist("A")))
#Include %A_ScriptDir%\cs\comicstudio_padkeyBasic.ahk
#IncludeAgain %A_ScriptDir%\cs\comicstudio_speeddial.ahk

#If CSPadkeyWindows() and (buf_CSToggle == 5) and !(IME_IsON(WinExist("A")))
#Include %A_ScriptDir%\cs\comicstudio_padkeyDastpan.ahk
#IncludeAgain %A_ScriptDir%\cs\comicstudio_speeddial.ahk

#If CSPadkeyWindows() and (buf_CSToggle == 6) and !(IME_IsON(WinExist("A")))
#Include %A_ScriptDir%\cs\comicstudio_padkeyErotic.ahk
#IncludeAgain %A_ScriptDir%\cs\comicstudio_speeddial.ahk

#If CSPadkeyWindows() and (buf_CSToggle == 7) and !(IME_IsON(WinExist("A")))
#IncludeAgain layername.ahk
#IncludeAgain %A_ScriptDir%\cs\comicstudio_speeddial.ahk

#If CSPadkeyWindows() and (buf_CSToggle == 8) and !(IME_IsON(WinExist("A")))
#Include %A_ScriptDir%\cs\comicstudio_padkeyRedraw.ahk
#IncludeAgain %A_ScriptDir%\cs\comicstudio_speeddial.ahk

#If CSPadkeyWindows() and (buf_CSToggle == 9) 
#Include %A_ScriptDir%\cs\comicstudio_text.ahk

#IfWinActive
