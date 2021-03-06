$PBExportHeader$w_main.srw
forward
global type w_main from window
end type
type cb_convert from commandbutton within w_main
end type
type mle_out from multilineedit within w_main
end type
type mle_in from multilineedit within w_main
end type
end forward

global type w_main from window
integer width = 2546
integer height = 1440
boolean titlebar = true
string title = "Remove Vietnamese Characters"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_convert cb_convert
mle_out mle_out
mle_in mle_in
end type
global w_main w_main

on w_main.create
this.cb_convert=create cb_convert
this.mle_out=create mle_out
this.mle_in=create mle_in
this.Control[]={this.cb_convert,&
this.mle_out,&
this.mle_in}
end on

on w_main.destroy
destroy(this.cb_convert)
destroy(this.mle_out)
destroy(this.mle_in)
end on

type cb_convert from commandbutton within w_main
integer x = 37
integer y = 608
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Convert"
end type

event clicked;mle_out.Text = f_khongdau(mle_in.Text)

end event

type mle_out from multilineedit within w_main
integer x = 37
integer y = 736
integer width = 2414
integer height = 544
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type mle_in from multilineedit within w_main
integer x = 37
integer y = 32
integer width = 2414
integer height = 544
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

