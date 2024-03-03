module SumKelipatanX where
	--Definisi dan Spesifikasi
	sumKelipatanX :: Int->Int->Int->Int
	--Menghasilkan jumlah bilangan keliapatan x dalam rentang
	--Realisasi
	sumKelipatanX a b x
		|a>b = 0
		|(mod a x) == 0 = a + sumKelipatanX (a+1) b x
		|otherwise = sumKelipatanX (a+1) b x