module HitungBensin where
	hitungBensin :: Int->Int->Int

	hitungBensin a b
		|a == b = hitung a
		|otherwise = hitung a + hitungBensin (a+1) b

	hitung :: Int->Int
	hitung a
		| a == 1 = 0
		|(mod a 2) == 0 = 1+ hitung (a `div` 2) 
		|otherwise  = 1 + hitung ((a*3) + 1)