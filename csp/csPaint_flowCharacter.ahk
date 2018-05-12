_csPaintFlowEyeOperation1:
Send,+{F17}
return

_csPaintFlowEyeOperation2:
Send,+^!{F2}
return


_csPaintFlowLampOperation1:
Send,+^!{g}
Send,+^!{l}
Send,{Enter}
Send,^!{g}
return

_csPaintFlowLampOperation2:
Send,+^!{g}
return

_csPaintFlowDuplicate:
Send,^!{F16}
Send,{f}
return

_csPaintFlowShadow:
	InputChar:="s"
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

    }
return