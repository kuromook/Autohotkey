Is64bit(){
    Return A_PtrSize = 8 ? 1 : 0
}

#F1::
v:=Is64bit()
Msgbox % Is64bit()