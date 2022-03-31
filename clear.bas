#include once "fbgfx.bi" 
#include once "fbgfx.bi" 
#include once "string.bi" 
#inclib "mems"

extern "C"
	declare sub memcopy cdecl(byref dst as any,byref src as any,byval bytess as integer) 
	declare sub memfill cdecl (byref dst as any,byval value as ubyte,byval sizes as uinteger) 
end extern


sub clears(w as integer,h as integer, colors as byte)
	dim pixels as long
	dim picth as long
	screeninfo w,h,,picth,pixels
	dim ptrs as ubyte ptr=screenptr
	dim n as integer
	dim scr as byte ptr=ptrs
	memfill (scr[0],colors,w*h)
end sub 


dim n as integer
const w =640
const h =480
screenres w,h,8
clears w,h,7

sleep
