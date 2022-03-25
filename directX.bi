#inclib "directX"
extern "C"
	declare function startX cdecl(c as zstring ptr)as integer
	declare sub endX cdecl(fbfd as integer)
	declare sub vline  cdecl(x as integer , y as integer,y2 as integer ,r as integer, g as integer,b as integer)
	declare sub lines  cdecl alias "line"(x as integer,y as integer,x2 as integer,y2 as integer,r as integer,g as integer,b as integer)
	declare sub boxs   cdecl(x as integer,y as integer,x2 as integer,y2 as integer,r as integer,g as integer,b as integer)
	declare sub circles cdecl alias "circle"(x as integer,y as integer,rr as integer,r as integer,g as integer,b as integer)
end extern
