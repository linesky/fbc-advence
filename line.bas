#include "directX.bi"
dim n as integer
dim fdfd as integer
dim z as zstring ptr
z=@""
fdfd=startX(z)
for n=0 to 479
	lines 0,n,640,n,127,127,127
next

sleep
endX(fdfd)
