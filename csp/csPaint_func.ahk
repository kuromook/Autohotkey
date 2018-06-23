_extractRgbString()
{
  StringSplit, clipAry, Clipboard, `n
  Loop,%clipAry0%
  {
    string := clipAry%a_index%
    if(RegExMatch(string,"Red:")){
      red := RegExReplace(string, "Red:", "")
    }
    if(RegExMatch(string,"Green:")){
      green := RegExReplace(string, "Green:", "")
    }
    if(RegExMatch(string,"Blue:")){
      blue := RegExReplace(string, "Blue:", "")
    }
  }

      MsgBox, %red% %green% %blue%
    return
}

_createSolidFillLayer()
{


  StringSplit, clipAry, Clipboard, `n
  Loop,%clipAry0%
  {
    string := clipAry%a_index%
    if(RegExMatch(string, "Red:(\d+)", SubPat)){
      red := Subpat1
     }
    else if(RegExMatch(string, "Green:(\d+)", SubPat)){
      green:=Subpat1

    }
    else if(RegExMatch(string, "Blue:(\d+)", SubPat)){
      blue:=Subpat1
    }
  }

  Send,+!^{n}
  WinWaitActive, ahk_class #32770
  ;MsgBox, %red% %green% %blue%


      OutputDebug, %red%
      OutputDebug, %green%
      OutputDebug, %blue%
  SetKeyDelay, 100
  ControlSetText, Edit4, %red%
  ControlSetText, Edit5, %green%
  ControlSetText, Edit6, %blue%
  Send,{Enter}
  WinWaitNotActive, ahk_class #32770
  return
}

_csPaintMode(num,modeName)
{

  CoordMode, ToolTip,Screen
  ToolTip,,,,12
  ToolTip,,,,19
  ;Gosub , _CSPMode%modeName%
  ;Gosub , _toolTipFuncCSP_SCListCommon
  _csPaintWorkspace(num+4+3)
  return
}


_csPaintFlow(flow)
{
  CoordMode, ToolTip,Screen
  ToolTip,,,,13
  msg:=flow.videoPath
  OutputDebug, showmsg %msg%
  flowTT:=TT(flow.onclick())
  ;flowTT.show(flow.message(),flow.x, flow.y ,flow.title())
  flowTT.show("message disabled",flow.x, flow.y ,flow.title())

  return
}


_csPaintWork(work, workName)
{
  CoordMode, ToolTip,Screen
  ToolTip,,,,14
  return
}


_csPaintGroup(groupName)
{
  Gosub , _CSPGroup%groupName%
  return
}


_csPaintWorkspace(num)
{
;  Sleep,1000
  Send,!{w}
  sleep, 50
  Send,{w}
  sleep, 50
  Send,{right}
  Loop,%num%
  {
    sleep,50
    Send,{Down}
  }
  Send,{Enter}
  Sleep,1000
  WinActivate, CLIP STUDIO PAINT
  Return
}

_csPaintResetSubTool:
  Send,{CtrlDown}{ShiftDown}{F14}{ShiftUp}{CtrlUp}
  Return

_csp_swap_color:
send !+{x}
send {w}
return


class Flow
{
    __New(name, inputChar, mode, flag, docUrl, videoPath, msg)
    {
      this.name := name
      this.inputChar := inputChar
      this.mode := mode
      this.flag := flag
      this.docUrl := docUrl
      this.videoPath := videoPath
      this.msg := msg
      this.x := 280
      this.y := 100
    }

    title(){
        return this.name . " " . "FLOW"
    }

    onclick(){
        msg := "OnClick=TT_MsgFlow"
        return msg
    }

    message(){
      mesHash:={"base":"base","character":"Character","lineart":"Line", "environment":"Environment"}

      mode:=this.mode
      modeName:=mesHash[mode]
      dbl:=getDoubleKey%modeName%()
      OutputDebug, Message test %mode% %modeName%
      msg:= dbl.messageByKey(this.flag)
      OutputDebug, message %msg%
      return msg . this.msg
    }

}

class FlowObj
{
  __New()
  {
    this.list := Object()
  }

  ; test which it succeeded importing list from json
  test(){
    l:= this.list ; list length
    if len.MaxIndex=0{
      return True
    }
    Else
    {
      return false
    }
  }

  ; push flowObject to list
  append(flo){
    this.list.insert(flo)
    name:=flo.name
    OutputDebug, init %name%

  }

  ; get flowObject that match flow key, inputChar and mode flag.
  byKey(inputChar,modeFlag){
    modeHash := {1:"dustpan",2:"lineart",3:"base",5:"character",6:"onomatopoeia", 9:"environment",10:"paint", 11:"gray"}
    counter:=0
    for v, element in this.list
    {
      val:=element.inputChar
      mode:=element.mode
      counter+=1
      OutputDebug, test%counter% %modeFlag% : %inputChar% : %val% : %mode% ( %v%)
      if( (element.mode = modeHash[modeFlag]) & (element.inputChar = inputChar) )
        return element
    }
  }

  byName(name){
    array := this.list
    For index, element in array
    {
      if(element.name = name)
        return element
    }
  }

  byFlag(flag,modeFlag){
    modeHash := {1:"dustpan",2:"lineart",3:"base",5:"character",6:"onomatopoeia", 9:"environment",10:"paint", 11:"gray"}
    For index, element in this.list{
      name := element.name
      i := element.flag
      OutputDebug, %name%, %flag%, %i%
      if((element.mode = modeHash[modeFlag]) &( element.flag = flag))
        return element
    }
  }

  keyList(buf){
    t:="Flow list"
    t=%t%`n
     modeHash := {1:"dustpan",2:"lineart",3:"base",5:"character",6:"onomatopoeia", 9:"environment",10:"paint", 11:"gray"}
     For index, element in this.list{
      name := element.name
      inputChar := element.inputChar
      if(element.mode = modeHash[buf]){
        t =%t% %inputChar% %name%`n
      }
      OutputDebug, keylist %t%

    }
    return t
  }
}

getStrFromJson(){
  str:=""
  OutputDebug, jsonfile , %fileJsonFile%
  Loop, read, %A_ScriptDir%\csp\flow.json
    str .= A_LoopReadLine
  return str
}

; this function for "object" like array to join.
; because  Json parser make object from list in JSON file
arrayJoin(obj){
  str:=""
  for k,v in obj
  {
    str.=v . "`n"
  }
  return str
}

getFlowObjByJson(){
  str := getStrFromJson()
  json_obj := JSON.parse(str)
  OutputDebug, json , %str%
  msg_temp := {}
  flowObj := new FlowObj()
  For key, value in json_obj["flow_msg_template"]
  {
    msg_temp[key]:=arrayJoin(value)
    OutputDebug, msg_temp initialize %key% %value%
  }
  counter := 0
  For k, v in json_obj["flow"]
  {
    counter +=1
    OutputDebug, flow initializes %counter% %k%
    flowObj.append(new Flow(v["name"], v["key"], v["mode"], v["flag"], v["doc"], v["movie"], msg_temp[v["msg"]] ))
  }
  return flowObj
}

getFlowObj(){
    ttpaintmsg:="1 .F16 : mask layer`n2 base paint`n4 .F17 : paint`n5 High light`n`n<a click1>movie</a>`n<a click2>Document</a>"
    ttonomatpeiamsg:="1 .F16 : convert`n`n<a click1>movie</a>`n<a click2>Document</a>"
    tteroticmsg:="1 .F16 : tool 1`n`n<a click1>movie</a>`n<a click2>Document</a>"
    ttimportmsg:="1 .F16 : import 1`n`n<a click1>movie</a>`n<a click2>Document</a>"
    ttlinemsg:="1 .F16 : line 1`n`n<a click1>movie</a>`n<a click2>Document</a>"

    flowObj:= new FlowObj()
    flowObj.append(new Flow("Skin","s","paint",1,"http:www.google.com","e:\video\CSP\CSP_painting_skin_large.avi",ttpaintmsg))
    flowObj.append(new Flow("Oral","o","paint",2,"http:www.yahoo.com","e:\video\CSP\CSP_painting_hair.avi",ttpaintmsg))
    flowObj.append(new Flow("Nip","n","paint",3,"http:www.google.com","e:\video\CSP\CSP_painting_nip.avi",ttpaintmsg))
    flowObj.append(new Flow("Penis","p","paint",4,"http:www.yahoo.com","e:\video\CSP\CSP_painting_hair.avi",ttpaintmsg))
    flowObj.append(new Flow("Vagina","v","paint",5,"http:www.google.com","e:\video\CSP\CSP_painting_sperma.avi",ttpaintmsg))
    flowObj.append(new Flow("Teeth","t","paint",6,"http:www.yahoo.com","e:\video\CSP\CSP_painting_hair.avi",ttpaintmsg))
    flowObj.append(new Flow("Water","w","paint",7,"http:www.google.com","e:\video\CSP\CSP_painting_sweat.avi",ttpaintmsg))
    flowObj.append(new Flow("Milk","m","paint",8,"http:www.yahoo.com","e:\video\CSP\CSP_painting_hair.avi",ttpaintmsg))
    flowObj.append(new Flow("Juice","j","paint",9,"http:www.google.com","e:\video\CSP\CSP_painting_sperma.avi",ttpaintmsg))
    flowObj.append(new Flow("Hot","h","paint",10,"http:www.yahoo.com","e:\video\CSP\CSP_painting_hair.avi",ttpaintmsg))

    flowObj.append(new Flow("Hair","h","gray",1,"http:www.google.com","e:\video\CSP\CSP_painting_hair.avi",ttpaintmsg))
    flowObj.append(new Flow("Pupil","p","gray",2,"http:www.yahoo.com","e:\video\CSP\CSP_painting_hair.avi",ttpaintmsg))
    flowObj.append(new Flow("Cloth","c","gray",3,"http:www.google.com","e:\video\CSP\CSP_painting_cloth.avi",ttpaintmsg))
    flowObj.append(new Flow("Gem","g","gray",4,"http:www.yahoo.com","e:\video\CSP\CSP_painting_accecery.avi",ttpaintmsg))
    flowObj.append(new Flow("Lash","l","gray",5,"http:www.google.com","e:\video\CSP\CSP_painting_lash.avi",ttpaintmsg))
    flowObj.append(new Flow("Eye","e","gray",6,"http:www.google.com","e:\video\CSP\CSP_painting_sperma.avi",ttpaintmsg))

    flowObj.append(new Flow("male","m","lineart",1,"http:www.google.com","e:\video\CSP\CSP_line_face.avi",ttlinemsg))
    flowObj.append(new Flow("female","f","lineart",2,"http:www.yahoo.com","e:\video\CSP\CSP_line_hair.avi",ttlinemsg))
    flowObj.append(new Flow("brush","b","lineart",3,"http:www.google.com","e:\video\CSP\CSP_line_lash.avi",ttlinemsg))

    flowObj.append(new Flow("Wisper","w","onomatopoeia",1,"http:www.google.com","e:\video\CSP\CSP_line_face.avi",ttonomatpeiamsg))
    flowObj.append(new Flow("Viblation","v","onomatopoeia",2,"http:www.yahoo.com","e:\video\CSP\CSP_line_hair.avi",ttonomatpeiamsg))
    flowObj.append(new Flow("Click","c","onomatopoeia",3,"http:www.google.com","e:\video\CSP\CSP_line_lash.avi",ttonomatpeiamsg))
    flowObj.append(new Flow("Slap","s","onomatopoeia",4,"http:www.yahoo.com","e:\video\CSP\CSP_line_hair.avi",ttonomatpeiamsg))
    flowObj.append(new Flow("Tap","t","onomatopoeia",5,"http:www.google.com","e:\video\CSP\CSP_line_face.avi",ttonomatpeiamsg))
    flowObj.append(new Flow("haha","h","onomatopoeia",6,"http:www.google.com","e:\video\CSP\CSP_line_face.avi",ttonomatpeiamsg))

    flowObj.append(new Flow("Nip","n","erotic",1,"http:www.google.com","e:\video\CSP\CSP_line_face.avi",tteroticmsg))
    flowObj.append(new Flow("Lip","l","erotic",2,"http:www.yahoo.com","e:\video\CSP\CSP_line_hair.avi",tteroticmsg))
    flowObj.append(new Flow("Penis","p","erotic",3,"http:www.google.com","e:\video\CSP\CSP_line_lash.avi",tteroticmsg))
    flowObj.append(new Flow("Vagina","v","erotic",4,"http:www.yahoo.com","e:\video\CSP\CSP_line_hair.avi",tteroticmsg))
    flowObj.append(new Flow("BackEffect","b","erotic",5,"http:www.yahoo.com","e:\video\CSP\CSP_line_hair.avi",tteroticmsg))
    flowObj.append(new Flow("Sigh","s","erotic",6,"http:www.yahoo.com","e:\video\CSP\CSP_line_hair.avi",tteroticmsg))
    flowObj.append(new Flow("Eye","e","erotic",7,"http:www.yahoo.com","e:\video\CSP\CSP_line_hair.avi",tteroticmsg))

    flowObj.append(new Flow("Lineart","l","dustpan",1,"http:www.google.com","e:\video\CSP\CSP_line_face.avi",ttimportmsg))
    flowObj.append(new Flow("Background","b","dustpan",2,"http:www.yahoo.com","e:\video\CSP\CSP_line_hair.avi",ttimportmsg))
    flowObj.append(new Flow("Model","m","dustpan",3,"http:www.google.com","e:\video\CSP\CSP_line_lash.avi",ttimportmsg))
    flowObj.append(new Flow("Sketch","s","dustpan",4,"http:www.yahoo.com","e:\video\CSP\CSP_line_hair.avi",ttimportmsg))


    return flowObj
}

nextFlow(InputChar){
    OutputDebug, reached nextFlow func %InputChar%
    ToolTip,,280,-660,4
    flowObj:=getFlowObjByJson()
    if(flowObj.test())
    {
      ToolTip,Import error,280,460,13
      return
    }
    if(buf_CSPFlow)
    {
      TT_Remove()
    }
    flow := flowObj.byKey(InputChar, buf_CSPMode)
    if(flow)
    {
      buf_CSPFlow := flow.flag
      _csPaintFlow(flow)

    }else{
      OutputDebug, not found %InputChar% %buf_CSPMode%
    }
return
}

class Operation{
    __New(name, flow, key, num, str, optype)
    {
      this.key := key
      this.name := name
      this.num := num
      this.flow := flow
      this.str := str
      this.optype := optype
    }
}

class DoubleKey{
  __New()
  {
    this.list := Object()
  }

  append(op){
    this.list.insert(op)
    name:=op.name
    OutputDebug, init %name%
  }

  byKey(key,flow,num){
    array := this.list

    For index, element in array
      {
        name:= element.name
        keys:= element.key
        flows:= element.flow
        nums:= element.num
        OutputDebug,  for %index%  %name% %keys% %flows%:%flow% %num% :%nums%
        if((element.key = key) & (element.flow = flow)){
          if(element.num = num){
            OutputDebug, Found
            o:= element
          }
          if(element.num =1){
            o1:= element
          }
        }
        Else if(element.key =key){
          if(element.num = num){
            d:= element
          }
          if(element.num =1){
            d1:= element
          }
        }
      }

    if not (o)
      o:= o1
    if not (o)
      o:= d
    if not (o)
      o:=d1

      if o.optype = "key" {
        string := o.str
        Send, %string%
      }
      else if o.optype = "sub" {
        string := o.str
        Gosub, %string%
      }
      else if o.optype = "next" {
        string := o.str
        nextFlow(string)
      }
      else if o.optype = "null"{
        return
      }
      optype:= o.optype
      OutputDebug, %optype% optype
      return string
    }

    messageByKey(buf){
      array:= this.list
      arrayDefault := []
      arrayFlow:=[]
      arrayMerged:=[]

      array:= this.list
      For index, element in array
      {
        f:=element.flow
        if(f = 0){
          arrayDefault.insert(element)
        }
      }

      array:= this.list
      For index, element in array
      {
        f:=element.flow
        if(f = buf){
          arrayFlow.insert(element)
        }
      }

      For i, el in arrayDefault
      {
        o:=el
        For j, ef in arrayFlow
        {
          if((ef.key=el.key)&(ef.num=el.num))
          {
            o:=ef
          }
        }
        arrayMerged.insert(o)
      }

      For i, el in arrayMerged
      {
        if(el.num=2){
          flag:=False
          exist1st:=False
          For j, ef in arrayFlow
          {
            if((ef.num=2)&(ef.key=el.key))
            {
              flag:=True
            }
            if((ef.num=1)&(ef.key=el.key))
            {
              exist1st:=True
            }
          }
          if((!flag)&(exist1st)){
            arrayMerged.remove(i)
            i=-1
          }
        }
      }

      t := ""
      For index, element in arrayMerged
      {
        name:= element.name
        f:= element.flow
        k:=element.key
        nums:= element.num
        OutputDebug, %buf% (%index%) %name%  %f% %nums%
        t =%t%%k% %nums%: %name%`n
      }
      OutputDebug, messageByKey  %t%
      return t
    }
}



_cspflowSC(char){

   ToolTip,,280,-660,4
    flowObj:=getFlowObjByJson()
    if(flowObj.test())
    {

      ToolTip,Import error,280,460,13
      return
    }
    if(buf_CSPFlow)
    {
      TT_Remove()
    }
    flow := flowObj.byKey(char, buf_CSPMode)
    if(flow)
    {
      buf_CSPFlow := flow.flag
      _csPaintFlow(flow)

    }
    Else
    {
      ;MsgBox, key error
      t:=flowObj.keyList(buf_CSPMode)
      ToolTip,%t%,280,-660,4
      OutputDebug, none
    }
    return
}

_cspflowFlag(flag){
    ToolTip,,280,-660,4
    flowObj:=getFlowObjByJson()
    if(flowObj.test())
    {

      ToolTip,Import error,280,460,13
      return
    }
    if(buf_CSPFlow)
    {
      TT_Remove()
    }
    flow := flowObj.byFlag(flag, buf_CSPMode)
    if(flow)
    {
      buf_CSPFlow := flow.flag
      _csPaintFlow(flow)

    }
    Else
    {
      ;MsgBox, key error
      t:=flowObj.keyList(buf_CSPMode)
      ToolTip,%t%,280,-660,4
      OutputDebug, none
    }
    return
}


class workObj
{
  __New()
  {
    this.workflow := { skin: ["m","f","s"], cloth: ["c","g","s"]}
  }

  work(){
    li:= this.workflow
    work_flag := li[buf_CSPWork][buf_CSPWorkNum]
    _cspflowSC(work_flag)
    dbl:=getDoubleKeyPaint()
    dbl.byKey("j",buf_CSPFlow, 1)
  }
  start(){
      buf_CSPWorkNum := 1
      this.work()
  }

  before(){
    if buf_CSPWorkNum !=1
    {
      buf_CSPWorkNum -= 1
    }
    this.work()
  }

  next(){
    maxIndex:=this.workflow[buf_CSPWork].MaxIndex()

    if (buf_CSPWorkNum < maxIndex)
    {
      buf_CSPWorkNum += 1
    }
    this.work()
  }
}
