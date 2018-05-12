IME_IsON(hWindow)
{
	; WM_IME_CONTROL    = 0x0283
	; IMC_GETOPENSTATUS = 0x0005
	bufCurrentDetectMode := A_DetectHiddenWindows
	DetectHiddenWindows, On
	buf := DllCall("user32.dll\SendMessageA", "UInt", DllCall("imm32.dll\ImmGetDefaultIMEWnd", "Uint",hWindow), "UInt", 0x0283, "Int", 0x0005, "Int", 0)
	DetectHiddenWindows, %bufCurrentDetectMode%
	Return buf
}

IME_ON(hWindow, IsON)
{
	; WM_IME_CONTROL    = 0x0283
	; IMC_SETOPENSTATUS = 0x0006
	bufCurrentDetectMode := A_DetectHiddenWindows
	DetectHiddenWindows, On
	buf := DllCall("user32.dll\SendMessageA", "UInt", DllCall("imm32.dll\ImmGetDefaultIMEWnd", "Uint",hWindow), "UInt", 0x0283, "Int", 0x0006, "Int", IsON)
	DetectHiddenWindows, %bufCurrentDetectMode%
	Return buf
}

IME_GetConversion(hWindow)
{
	; WM_IME_CONTROL        = 0x0283
	; IMC_GETCONVERSIONMODE = 0x0001
	bufCurrentDetectMode := A_DetectHiddenWindows
	DetectHiddenWindows, On
	buf := DllCall("user32.dll\SendMessageA", "UInt", DllCall("imm32.dll\ImmGetDefaultIMEWnd", "Uint",hWindow), "UInt", 0x0283, "Int", 0x0001, "Int", 0)
	DetectHiddenWindows, %bufCurrentDetectMode%
	Return buf
}

IME_SetConversion(hWindow,ConversionMode)
{
	; WM_IME_CONTROL        = 0x0283
	; IMC_SETCONVERSIONMODE = 0x0002
	bufCurrentDetectMode := A_DetectHiddenWindows
	DetectHiddenWindows, On
	buf := DllCall("user32.dll\SendMessageA", "UInt", DllCall("imm32.dll\ImmGetDefaultIMEWnd", "Uint",hWindow), "UInt", 0x0283, "Int", 0x0002, "Int", ConversionMode)
	DetectHiddenWindows, %bufCurrentDetectMode%
	Return buf
}
