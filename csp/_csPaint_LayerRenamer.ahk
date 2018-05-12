
layerRenamePosition(key)
{
IfWinExist, CLIP STUDIO PAINT
{
    WinActivate
}
position := {"w":"front", "s":"back","d":"right","a":"left", "r":"top", "f":"bottom" }
Backup := ClipboardAll
Clipboard:=" " . position[key]
Sleep, 100
Send,^!{n}
Sleep, 100
Send,{Right}
Send,^{v}
Send, {enter}
Clipboard := Backup
return  
}

!w::
:*:000w::
layerRenamePosition("w")
return

!s::
:*:000s::
layerRenamePosition("s")
return

!d::
:*:000d::
layerRenamePosition("d")
return

!a::
:*:000a::
layerRenamePosition("a")
return

!r::
:*:000r::
layerRenamePosition("r")
return

!f::
:*:000f::
layerRenamePosition("f")
return



layerRename(name)
{
IfWinExist, CLIP STUDIO PAINT
{
    WinActivate
}
Backup := ClipboardAll
prefix := ""
If GetKeyState("w", "P"){
 	prefix:="front"
 	}
If GetKeyState("s", "P"){
 	prefix:="back"
 	} 	
If GetKeyState("a", "P"){
 	prefix:="left"
 	} 	
If GetKeyState("d", "P"){
 	prefix:="right"
 	} 	
If GetKeyState("r", "P"){
 	prefix:="top"
 	} 	
If GetKeyState("f", "P"){
 	prefix:="bottom"
 	} 	

BlockInput, on
Clipboard:=prefix . " " . name
Sleep, 100
Send,^!{n}
Sleep, 100
Send,^{v}
Send, {enter}
Clipboard := Backup
BlockInput, off
return
}


;eye
layer_renamer_eye_ey:
:*:eyeey::
layerRename("eye")
return


;pupil
layer_renamer_eye_pu:
:*:eyepu::
layerRename("pupil")
return


;eye ball
layer_renamer_eye_ba:
:*:eyeba::
layerRename("eye ball")
return


;eye brow
layer_renamer_eye_br:
:*:eyebr::
layerRename("eye brow")
return


;eye lash
layer_renamer_eye_ls:
:*:eyels::
layerRename("eye lash")
return


;mouse
layer_renamer_mouse_mo:
:*:mousemo::
layerRename("mouse")
return


;tongue
layer_renamer_mouse_to:
:*:mouseto::
layerRename("tongue")
return


;oral
layer_renamer_mouse_or:
:*:mouseor::
layerRename("oral")
return


;teeth
layer_renamer_mouse_te:
:*:mousete::
layerRename("teeth")
return


;lip
layer_renamer_mouse_li:
:*:mouseli::
layerRename("lip")
return


;ear
layer_renamer_face_ea:
:*:faceea::
layerRename("ear")
return


;face
layer_renamer_face_fa:
:*:facefa::
layerRename("face")
return


;nose
layer_renamer_face_no:
:*:faceno::
layerRename("nose")
return


;glass
layer_renamer_face_gl:
:*:facegl::
layerRename("glass")
return


;hair
layer_renamer_hair_ha:
:*:hairha::
layerRename("hair")
return


;front hair
layer_renamer_hair_fr:
:*:hairfr::
layerRename("front hair")
return


;back hair
layer_renamer_hair_ba:
:*:hairba::
layerRename("back hair")
return


;side hair
layer_renamer_hair_si:
:*:hairsi::
layerRename("side hair")
return


;pony tail
layer_renamer_hair_po:
:*:hairpo::
layerRename("pony tail")
return


;twin tail
layer_renamer_hair_tw:
:*:hairtw::
layerRename("twin tail")
return


;braid
layer_renamer_hair_br:
:*:hairbr::
layerRename("braid")
return


;hair accecery
layer_renamer_hair_ac:
:*:hairac::
layerRename("hair accecery")
return


;hair ribbon
layer_renamer_hair_ri:
:*:hairri::
layerRename("hair ribbon")
return


;neck
layer_renamer_body_ne:
:*:bodyne::
layerRename("neck")
return


;hand
layer_renamer_body_ha:
:*:bodyha::
layerRename("hand")
return


;arm
layer_renamer_body_ar:
:*:bodyar::
layerRename("arm")
return


;leg
layer_renamer_body_le:
:*:bodyle::
layerRename("leg")
return


;foot
layer_renamer_body_fo:
:*:bodyfo::
layerRename("foot")
return


;tigh
layer_renamer_body_tig:
:*:bodytig::
layerRename("tigh")
return


;body
layer_renamer_body_bo:
:*:bodybo::
layerRename("body")
return


;west
layer_renamer_body_we:
:*:bodywe::
layerRename("west")
return


;rist
layer_renamer_body_ri:
:*:bodyri::
layerRename("rist")
return


;finger
layer_renamer_body_fi:
:*:bodyfi::
layerRename("finger")
return


;cloth
layer_renamer_cloth_cl:
:*:clothcl::
layerRename("cloth")
return


;shirts
layer_renamer_cloth_sh:
:*:clothsh::
layerRename("shirts")
return


;jacket
layer_renamer_cloth_ja:
:*:clothja::
layerRename("jacket")
return


;pants
layer_renamer_cloth_pa:
:*:clothpa::
layerRename("pants")
return


;socks
layer_renamer_cloth_so:
:*:clothso::
layerRename("socks")
return


;kimono
layer_renamer_cloth_ki:
:*:clothki::
layerRename("kimono")
return


;rope
layer_renamer_cloth_ro:
:*:clothro::
layerRename("rope")
return


;ribbon
layer_renamer_cloth_ri:
:*:clothri::
layerRename("ribbon")
return


;suites
layer_renamer_cloth_su:
:*:clothsu::
layerRename("suites")
return


;sword
layer_renamer_other_sw:
:*:othersw::
layerRename("sword")
return


;bag
layer_renamer_other_ba:
:*:otherba::
layerRename("bag")
return


;armor
layer_renamer_other_ar:
:*:otherar::
layerRename("armor")
return


#F1::
Gui,+AlwaysOnTop
Gui, Add, Tab2,,eye|mouse|face|hair|body|cloth|other
Gui, Tab,1
Gui, Add, Text, cBlue glayer_renamer_eye_ey, eye (ey)
Gui, Add, Text, cBlue glayer_renamer_eye_pu, pupil (pu)
Gui, Add, Text, cBlue glayer_renamer_eye_ba, eye ball (ba)
Gui, Add, Text, cBlue glayer_renamer_eye_br, eye brow (br)
Gui, Add, Text, cBlue glayer_renamer_eye_ls, eye lash (ls)
Gui, Tab,2
Gui, Add, Text, cBlue glayer_renamer_mouse_mo, mouse (mo)
Gui, Add, Text, cBlue glayer_renamer_mouse_to, tongue (to)
Gui, Add, Text, cBlue glayer_renamer_mouse_or, oral (or)
Gui, Add, Text, cBlue glayer_renamer_mouse_te, teeth (te)
Gui, Add, Text, cBlue glayer_renamer_mouse_li, lip (li)
Gui, Tab,3
Gui, Add, Text, cBlue glayer_renamer_face_ea, ear (ea)
Gui, Add, Text, cBlue glayer_renamer_face_fa, face (fa)
Gui, Add, Text, cBlue glayer_renamer_face_no, nose (no)
Gui, Add, Text, cBlue glayer_renamer_face_gl, glass (gl)
Gui, Tab,4
Gui, Add, Text, cBlue glayer_renamer_hair_ha, hair (ha)
Gui, Add, Text, cBlue glayer_renamer_hair_fr, front hair (fr)
Gui, Add, Text, cBlue glayer_renamer_hair_ba, back hair (ba)
Gui, Add, Text, cBlue glayer_renamer_hair_si, side hair (si)
Gui, Add, Text, cBlue glayer_renamer_hair_po, pony tail (po)
Gui, Add, Text, cBlue glayer_renamer_hair_tw, twin tail (tw)
Gui, Add, Text, cBlue glayer_renamer_hair_br, braid (br)
Gui, Add, Text, cBlue glayer_renamer_hair_ac, hair accecery (ac)
Gui, Add, Text, cBlue glayer_renamer_hair_ri, hair ribbon (ri)
Gui, Tab,5
Gui, Add, Text, cBlue glayer_renamer_body_ne, neck (ne)
Gui, Add, Text, cBlue glayer_renamer_body_ha, hand (ha)
Gui, Add, Text, cBlue glayer_renamer_body_ar, arm (ar)
Gui, Add, Text, cBlue glayer_renamer_body_le, leg (le)
Gui, Add, Text, cBlue glayer_renamer_body_fo, foot (fo)
Gui, Add, Text, cBlue glayer_renamer_body_tig, tigh (tig)
Gui, Add, Text, cBlue glayer_renamer_body_bo, body (bo)
Gui, Add, Text, cBlue glayer_renamer_body_we, west (we)
Gui, Add, Text, cBlue glayer_renamer_body_ri, rist (ri)
Gui, Add, Text, cBlue glayer_renamer_body_fi, finger (fi)
Gui, Tab,6
Gui, Add, Text, cBlue glayer_renamer_cloth_cl, cloth (cl)
Gui, Add, Text, cBlue glayer_renamer_cloth_sh, shirts (sh)
Gui, Add, Text, cBlue glayer_renamer_cloth_ja, jacket (ja)
Gui, Add, Text, cBlue glayer_renamer_cloth_pa, pants (pa)
Gui, Add, Text, cBlue glayer_renamer_cloth_so, socks (so)
Gui, Add, Text, cBlue glayer_renamer_cloth_ki, kimono (ki)
Gui, Add, Text, cBlue glayer_renamer_cloth_ro, rope (ro)
Gui, Add, Text, cBlue glayer_renamer_cloth_ri, ribbon (ri)
Gui, Add, Text, cBlue glayer_renamer_cloth_su, suites (su)
Gui, Tab,7
Gui, Add, Text, cBlue glayer_renamer_other_sw, sword (sw)
Gui, Add, Text, cBlue glayer_renamer_other_ba, bag (ba)
Gui, Add, Text, cBlue glayer_renamer_other_ar, armor (ar)

Gui, Show,X400 Y600, layer renamer
return
