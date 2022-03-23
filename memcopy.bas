declare function fb_memcopy cdecl (byref dst as any,byref src as any,byval bytes as uinteger)as any ptr
screenres 300,200,8
dim y as integer
dim x as integer
dim row as byte ptr
dim row2 as byte ptr
dim image as any ptr = imageCreate(64,64)
dim image2 as any ptr = imageCreate(64,64)
dim picth as long
dim picth2 as long
dim pixels as any ptr
dim pixels2 as any ptr
'goto ends
	line(0,0)-(300,200),7,bf
	if 0<>imageinfo(image,,,,picth,pixels)then 
		end 
	end if
	if 0<>imageinfo(image2,,,,picth2,pixels2)then 
		end 
	end if
	for y=0 to 63
		row=pixels+y*picth
		for x=0 to 63
			row[x]=x
		next
	next
	row=pixels+1*picth
	row2=pixels2+1*picth2
	fb_memcopy(row2,row,64*64)
put(10,10),image
put(10,100),image2
imagedestroy(image)
imagedestroy(image2)
ends:
sleep
