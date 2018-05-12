

_csp_pasteText(x, y, txt)
{
clipboard:=txt
MouseMove,x,y,30
click
sleep, 500
send,^{v}
send,+{return}
return
}

CountSubstring(fullstring, substring){
   StringReplace, junk, fullstring, %substring%, , UseErrorLevel
   return errorlevel
}

setSpeaking(scenario)
{
	;msgbox, % scenario
    page := StrSplit(scenario, "`nl`n")
    startLocationX := 800+400
    startLocationY := 180

    x :=startLocationX
    y := startLocationY
    height := 180
    width := 10
    lineSpace := 30 + 40
    
	for index, line in page
	{      

		speak := StrSplit(line, "`n`n`n")	
		for i, txt in speak
		{
            num:=CountSubstring(txt, "`r`n")

        	_csp_pasteText(x,y, txt)
        	x:= x-lineSpace*(num+1)

		}
        
        if y < 500
        {
            y:= y+height
            x:=startLocationX
        }
    }
}


^F13::
send,{t}
setSpeaking(clipboard)
Return



