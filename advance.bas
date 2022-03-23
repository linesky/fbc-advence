screenres 300,200,8
dim y as integer
dim x as integer
dim row as byte ptr
dim image as any ptr = imageCreate(64,64)
dim picth as long
dim pixels as any ptr
'goto ends
	line(0,0)-(300,200),7,bf
	if 0<>imageinfo(image,,,,picth,pixels)then 
		end 
	end if
	for y=0 to 63
		row=pixels+y*picth
		for x=0 to 63
			row[x]=x
		next
	next
put(10,10),image
imagedestroy(image)
ends:
sleep
