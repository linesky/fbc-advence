#include "directX.bi"
dim n as integer
dim nx as integer
dim ny as integer
dim fdfd as integer
dim z as zstring ptr
dim c as control
z=@""
fdfd=startX(z)
c.x=0
c.y=0
c.w=638
c.h=478
boxs 0,0,639,479,100,100,100
nx=638
ny=478
for n=0 to 3
	rectangle 0,0,nx,ny,127,127,127
	nx=nx/2
	ny=ny/2
next
sleep
endX(fdfd)
