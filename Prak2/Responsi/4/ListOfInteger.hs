module ListOfInteger where 
	--Definisi dan Spesifikasi
	isEqual :: [Int]->[Int]->Bool
	--Memeriksa apakah kedua list sama

	--Realisasi
	isEqual l1 l2
		|null l1 && null l2 = True
		|null l1 && not (null l2) = False
		|null l2 && not (null l1) = False
		|head l1 == head l2 = isEqual (tail l1) (tail l2)
		|otherwise = False