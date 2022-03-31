#include once "fbgfx.bi" 
#include once "string.bi" 
#inclib "mems"

extern "C"
	declare sub memcopy cdecl(byref dst as any,byref src as any,byval bytess as integer) 
end extern 
screenres 300,200,8
dim n as integer
dim y as integer
dim x as integer
dim p1 as any ptr
dim p2 as any ptr
dim row as byte ptr
dim row2 as byte ptr
dim image as any ptr = imageCreate(64,64,8,8)
dim image2 as any ptr = imageCreate(64,64,8,8)
dim picth as long
dim picth2 as long
dim pixels as any ptr
dim pixels2 as any ptr

	if 0<>imageinfo(image,,,,picth,pixels)then 
		end 
	end if
	if 0<>imageinfo(image2,,,,picth2,pixels2)then 
		end 
	end if
	line image,(0,0)-(300,200),7,bf
	row=pixels
	row2=pixels2
	memcopy(row2[0],row[0],64*picth)
put(10,10),image
put(10,100),image2
imagedestroy(image)
imagedestroy(image2)
sleep
