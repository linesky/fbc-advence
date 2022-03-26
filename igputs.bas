#include "directX.bi"
dim n as integer
dim fdfd as integer
dim z as zstring ptr
dim img as integer ptr
z=@"hello world...."
fdfd=startX(z)
img=creatImage(638,478)
for n=100 to 17 step -10
	igputs img,0,n,n*2,n*2,n*2,z
next n
putimage(0,0,img)
sleep
frees img
endX(fdfd)
