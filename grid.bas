#include "directX.bi"
dim n as integer
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
grids c,20,100,100,100
sleep
endX(fdfd)
