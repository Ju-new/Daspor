module Fibonacci where
	--Definisi dan Spesifikasi
	fibonacci :: Int->Int
	--Fungsi yang menghasilkan nilai ke-n pada barisan fibonacci

	--Realisasi
	fibonacci n
		|n==0 = 0
		|(n == 1 || n== 2) = 1
		|otherwise = fibonacci(n-1) + fibonacci(n-2)