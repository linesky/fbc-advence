#include "directX.bi"
dim n as integer
dim fdfd as integer
dim z as zstring ptr
dim img as integer ptr
z=@""
fdfd=startX(z)
img=creatImage(638,478)
	iline 0,0,638,478,img,127,127,127
	iline 0,478,638,0,img,127,127,127
putimage(0,0,img)
sleep
frees img
endX(fdfd)
