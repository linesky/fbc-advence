
sub clears(w as integer,h as integer, colors as integer)
	dim bypp as integer,pitch as integer
	screeninfo w,h,,bypp,pitch
	dim ptrs as ubyte ptr=screenptr
	dim n as integer
	dim scr as ubyte ptr
	for n=0 to (w*h-1)
		scr=ptrs+bypp*n
		ptrs[n]=colors
	next 
end sub 


dim n as integer
const w =300
const h =200
screenres w,h,8
clears w,h,7

sleep
