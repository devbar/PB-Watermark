﻿$PBExportHeader$u_sle.sru
forward
global type u_sle from singlelineedit
end type
end forward

global type u_sle from singlelineedit
integer width = 402
integer height = 112
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "none"
borderstyle borderstyle = stylelowered!
end type
global u_sle u_sle

type variables
public:

string	#prompt

private:

long 		EM_SETCUEBANNER = 5377

end variables

on u_sle.create
end on

on u_sle.destroy
end on

event constructor;if len ( #prompt ) > 0 then
	send ( handle ( this ), EM_SETCUEBANNER, 1, #prompt )
end if

end event

