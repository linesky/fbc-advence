#include "directX.bi"
dim n as integer
dim fdfd as integer
dim z as zstring ptr
dim img as integer ptr
dim img2 as integer ptr
z=@"hello world...."
fdfd=startX(z)
img2=creatImage(638,478)
img=creatImage(638,478)
for n=100 to 17 step -10
	igputs img2,0,n,n*2,n*2,n*2,z
next n
Iputimage(0,0,img,img2)
putimage(0,0,img)
sleep
frees img
frees img2
endX(fdfd)
