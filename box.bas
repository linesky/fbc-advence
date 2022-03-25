#include "directX.bi"
dim n as integer
dim fdfd as integer
dim z as zstring ptr
z=@""
fdfd=startX(z)
for n=0 to 3
	boxs 0,n*(480/5),640,(n+1)*(480/5),n*(255/5),n*(255/5),n*(255/5)
next

sleep
endX(fdfd)
