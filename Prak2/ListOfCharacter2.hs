module ListOfCharacter where
	--Definisi dan Spesifikasi
	splitAlternate :: [Char] -> ([Char],[Char])
	{- splitAlternate(l) menghasilkan dua buah list, misalnya l1 dan l2. l1 berisi

  semua elemen l pada posisi ganjil, l2 berisi semua elemen l pada posisi genap.

  l mungkin kosong.

-}
	getGanjil :: [Char]->[Char]
	getGanjil lst
		|tail lst == [] = [head lst]
		|length lst == 2 = [head lst]
		|otherwise =  [head lst] ++ getGanjil (tail (tail lst)) 

	getGenap :: [Char]->[Char]
	getGenap lst
		|tail lst == [] = []
		|length lst == 2 = [last lst]
		|otherwise =  [head (tail lst)] ++ getGenap (tail (tail lst)) 

	splitAlternate lst
		|null lst = ([],[])
		|otherwise = (getGanjil lst, getGenap lst)