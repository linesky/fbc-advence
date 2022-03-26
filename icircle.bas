#include "directX.bi"
dim n as integer
dim fdfd as integer
dim z as zstring ptr
dim img as integer ptr
z=@""
fdfd=startX(z)
img=creatImage(638,478)
for n=100 to 25 step -10
	icircle 320,240,n,img,127,127,127
next n
putimage(0,0,img)
sleep
frees img
endX(fdfd)
