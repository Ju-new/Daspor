module KaliTambah where
	kaliTambah :: Int->Bool
	kaliTambah x = (a + b + c + d) == (a * d) where
		a = div (mod x 10000) 1000
		b = div (mod x 1000) 100
		c = div (mod x 100) 10
		d = mod x 10