#Include %A_ScriptDir%\_Struct\sizeof.ahk
#Include %A_ScriptDir%\_Struct\_Struct.ahk
#Include %A_ScriptDir%\_Struct\Struct.ahk
#Include %A_ScriptDir%\AutoHotkey-JSON\JSON.ahk
#Include %A_ScriptDir%\Lib\array.ahk
#Include %A_ScriptDir%\Lib\rapidkey.ahk
#Include %A_ScriptDir%\Lib\varexist.ahk
#Include <remoteBuf>

#Include %A_ScriptDir%\TT\TT.ahk
#Include %A_ScriptDir%\IME\IME.ahk


#Include %A_ScriptDir%
#Include maclike.ahk
#Include app.ahk
#Include tooltip.ahk

#Include %A_ScriptDir%\csp\csPaint.ahk



AppsKey::#Tab


#F1::  Winset, Alwaysontop, , A

;CapsLock::Ctrl
*CapsLock::
  SetKeyDelay -1
  Send {Blind}{Ctrl DownTemp}
return

*CapsLock up::
  SetKeyDelay -1
  Send {Blind}{Ctrl Up}
return
;snap shot to clip board

+CapsLock::
return


;kill windows key hotkey
#p::
Return
#u::
return
#lbutton::
Return

#+d::
;:R*?:datestr::
FormatTime, CurrentDateTime,, yyyy/MM/dd
SendInput %CurrentDateTime%
return

#+t::
;:R*?:datestr::
FormatTime, CurrentDateTime,, hh:mm
SendInput %CurrentDateTime%
return

RCtrl::
send,!{/}
return

#q::
send,!{F4}
return
;-----------------------snapshot-------------------------------------------------
#F14::
send,{pause}
return
#+^4:
Send, ^!+{4}
Return
#4:
send,^!+{4}
Return


;--------------------------------------------------------------------------

;excute AutoHotKey reboot
#0::
Suspend,Permit
Run,C:\Program Files\AutoHotkey\AutoHotkey.exe C:\tool\Autohotkey\windows10.ahk /r /f
return

;japanese input like mac OS
LWin & Space::
CapsLock & Space::
;LAlt & Space::
;vk1Dsc07B & Space::
Suspend,Permit

Send !{``}
;Send,{vkF3sc029}
return

;suspend
RAlt & Space::
AppsKey & Space::
Suspend
return

Pause::
send,^+{y}
return


;modifier key reset
+^#F19::
+!^#F19::
  Suspend,Permit
  Send, {CtrlUp}
  Send, {AltUp}
  Send, {ShiftUp}
  Send, {LWinUp}
  Send, {RWinUp}
  return

+^#F18::
+!^#F18::
    Suspend,Permit
    Loop,20
    {
      CoordMode, ToolTip,Screen
      ToolTip,,,,%A_Index%
    }
  return

LWin::return

RCtrl & Space::
ExitApp
Return


 ;--------------------------------------------------------------------------
sound(key, length){

  SoundBeep, key, length

}
