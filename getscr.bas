#include "directX.bi"
dim n as integer
dim fdfd as integer
dim z as zstring ptr
z=@""
fdfd=startX(z)
	lines 0,0,getwscr(),gethscr,127,127,127
	lines 0,gethscr(),getwscr(),0,127,127,127
sleep
endX(fdfd)
