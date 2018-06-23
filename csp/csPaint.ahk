

flowJsonFile := %A_ScriptDir% . "\csp\flow.json"


#Include %A_ScriptDir%\csp\csPaint_func.ahk
#Include %A_ScriptDir%\csp\csPaint_funcGroup.ahk


SetTitleMatchMode,2

global buf_CSPMode
global buf_CSPFlow
global buf_CSPWork
global buf_CSPWorkNum


;複数のウィンドウがでるのを一括するため
csPaintWindows()
{
return (WinActive("CLIP STUDIO PAINT") or WinActive("ahk_class 742DEA58-ED6B-4402-BC11-20DFC6D08040-6571DDC4-B3AA-45e4-9D35-57C0C1E90AD5"))
}


;常に使用
#If, csPaintWindows()
#Include %A_ScriptDir%\csp\csPaint_main.ahk
#Include %A_ScriptDir%\csp\csPaint_string.ahk
#Include %A_ScriptDir%\csp\csPaint_mode.ahk
#Include %A_ScriptDir%\csp\csPaint_flow.ahk
#Include %A_ScriptDir%\csp\csPaint_work.ahk
#Include %A_ScriptDir%\csp\csPaint_group.ahk
#Include %A_ScriptDir%\csp\csPaint_tooltip.ahk
#Include %A_ScriptDir%\csp\csPaint_tooltipPaint.ahk
#Include %A_ScriptDir%\csp\csPaint_tooltipFlow.ahk
#Include %A_ScriptDir%\csp\cspPaint_flowGetDoubleKey.ahk

#If csPaintWindows() and (buf_CSPMode == 10 or buf_CSPMode == 11) and !(IME_IsON(WinExist("A")))
#Include %A_ScriptDir%\csp\csPaint_padkeyPaint.ahk
#Include %A_ScriptDir%\csp\csPaint_flowPaint.ahk
#Include %A_ScriptDir%\csp\csPaint_kbdPaint.ahk
#Include %A_ScriptDir%\csp\csPaint_makePaintLayer.ahk
#Include %A_ScriptDir%\csp\csPaint_selectColor.ahk

;#Include %A_ScriptDir%\numpadFunc.ahk

#If csPaintWindows() and (buf_CSPMode == 9) and !(IME_IsON(WinExist("A")))
#Include %A_ScriptDir%\csp\csPaint_padkeyEnvironment.ahk

#If csPaintWindows() and (buf_CSPMode == 8) and !(IME_IsON(WinExist("A")))
#Include %A_ScriptDir%\csp\csPaint_padkeyRough.ahk


#If csPaintWindows() and (buf_CSPMode == 7) and !(IME_IsON(WinExist("A")))
#Include %A_ScriptDir%\csp\csPaint_padkeyStoryboard.ahk


#If csPaintWindows() and (buf_CSPMode == 7) and (IME_IsON(WinExist("A")))
#IncludeAgain %A_ScriptDir%\csp\csPaint_textShortInput.ahk
#IncludeAgain %A_ScriptDir%\csp\csPaint_textpropertyShortInput.ahk
#Include %A_ScriptDir%\csp\csPaint_speeddialStoryboard.ahk

#If csPaintWindows() and (buf_CSPMode == 6) and !(IME_IsON(WinExist("A")))
#Include %A_ScriptDir%\csp\csPaint_padkeyOnomatopeia.ahk


#If csPaintWindows() and (buf_CSPMode == 5) and !(IME_IsON(WinExist("A")))
#Include %A_ScriptDir%\csp\csPaint_padkeyCharacter.ahk
#Include %A_ScriptDir%\csp\csPaint_flowCharacter.ahk
#Include %A_ScriptDir%\csp\csPaint_speeddial.ahk

#If csPaintWindows() and (buf_CSPMode == 4) and !(IME_IsON(WinExist("A")))
#Include %A_ScriptDir%\csp\csPaint_padkeyFruid.ahk
#Include %A_ScriptDir%\csp\csPaint_speeddial.ahk

#If csPaintWindows() and (buf_CSPMode == 3) and !(IME_IsON(WinExist("A")))
#Include %A_ScriptDir%\csp\csPaint_padkeyBase.ahk
#Include %A_ScriptDir%\csp\csPaint_renameBase.ahk

#If csPaintWindows() and (buf_CSPMode == 2) and !(IME_IsON(WinExist("A")))
#Include %A_ScriptDir%\csp\csPaint_padkeyLine.ahk
;#Include %A_ScriptDir%\csp\csPaint_renameLine.ahk
#Include %A_ScriptDir%\csp\csPaint_kbdLine.ahk
;#IncludeAgain %A_ScriptDir%\csp\csPaint_speeddial.ahk

#If csPaintWindows() and (buf_CSPMode == 2) and (IME_IsON(WinExist("A")))
#Include %A_ScriptDir%\csp\csPaint_padkeyLine.ahk
#IncludeAgain %A_ScriptDir%\csp\csPaint_textShortInput.ahk
#IncludeAgain %A_ScriptDir%\csp\csPaint_textpropertyShortInput.ahk
#IncludeAgain %A_ScriptDir%\csp\csPaint_speeddial.ahk

#If csPaintWindows() and (buf_CSPMode == 1) and !(IME_IsON(WinExist("A")))
#Include %A_ScriptDir%\csp\csPaint_padkeyDustpan.ahk



#If

