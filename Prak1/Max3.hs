module Max3 where
	--Definisi dan Spesifikasi
	max3:: Int->Int->Int->Int
	--Menghasilkan bilangan terbesar dari ketiga input
	max3 a b c=
		if a>b then
			if a>c 
				then a
			else 
				c
		else if b>a then
			if b>c
				then b
			else
				c
		else
			c