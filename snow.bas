#include "directX.bi"
dim n as integer
dim nn as integer
dim fdfd as integer
dim z as zstring ptr
z=@""
fdfd=startX(z)
do
	nn=rnd*255
	ppixel rnd*648,rnd*478,nn,nn,nn
	if inkey=chr(27) then goto escs 
loop
escs:
endX(fdfd)
