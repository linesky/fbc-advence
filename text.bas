#include "directX.bi"
dim n as integer
dim nx as integer
dim ny as integer
dim fdfd as integer
dim z as zstring ptr
dim c as control
z=@"hello world...\n"
fdfd=startX(z)
c.x=0
c.y=0
c.w=638
c.h=478
boxs 0,0,639,479,127,127,127
ny=478
for n=0 to 3
	gputs 0,ny-29,0,0,0,z
	ny=ny/2
next
sleep
endX(fdfd)
