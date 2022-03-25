#inclib "directX"
type control
	x as integer
	y as integer
	w as integer
	h as integer
end type

type label
	c as control
	caption as zstring * 100
	r as byte
	g as byte
	b as byte
end type
type button
	c as control
	caption as zstring * 100
    r as byte
	g as byte
	b as byte
	onClick as sub
end type
type menus
	c as control
	caption as zstring*100
	r as byte
	g as byte
	b as byte
	onClick as sub(index as integer) 
end type
type textBar
	c as control
	caption as zstring * 100
	colors as byte
	bcolor as byte
end type

extern "C"
	declare function startX cdecl(c as zstring ptr)as integer
	declare sub endX cdecl(fbfd as integer)
	declare sub vline  cdecl(x as integer , y as integer,y2 as integer ,r as integer, g as integer,b as integer)
	declare sub lines  cdecl alias "line"(x as integer,y as integer,x2 as integer,y2 as integer,r as integer,g as integer,b as integer)
	declare sub boxs   cdecl(x as integer,y as integer,x2 as integer,y2 as integer,r as integer,g as integer,b as integer)
	declare sub circles cdecl alias "circle"(x as integer,y as integer,rr as integer,r as integer,g as integer,b as integer)
	declare sub ball cdecl alias "ball"(x as integer,y as integer,rr as integer,r as integer,g as integer,b as integer)
	declare sub grids cdecl alias "grid"(byval c as control,steeps as integer ,r as integer ,g as integer,b as integer)
	declare sub rectangle cdecl(x as integer,y as integer,x2 as integer,y2 as integer,r as integer,g as integer,b as integer)
end extern
