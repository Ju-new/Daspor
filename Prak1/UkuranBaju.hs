module UkuranBaju where
	--Definisi dan Spesifikasi
	ukuranBaju :: Int->Int->Int
	--Menentukan ukuran baju berdasarkan tinggi dan berat
	--Spesifikasi
	ukuranBaju t b=
		if t <= 150 
			then 1
		else if t>170 && (b>60 && b<=80)
			then 3
		else if (t>150 && t<=170) && b<=80
			then 2
		else if (t>150 && t<=170) && b>80
			then 3
		else if t>170 && b<=60
			then 2
		else 
			4
