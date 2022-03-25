#include "directX.bi"
dim n as integer
dim fdfd as integer
dim z as zstring ptr
dim img as integer ptr
z=@""
fdfd=startX(z)
img=creatImage(638,478)
for n=0 to 3
	iboxs 0,n*(480/5),638,(n+1)*(480/5),img,n*(255/5),n*(255/5),n*(255/5)
next
putimage(0,0,img)
sleep
frees img
endX(fdfd)
