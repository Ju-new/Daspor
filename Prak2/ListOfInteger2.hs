module ListOfInteger where 
	--Definisi dan Spesifikasi
	getPos :: [Int]->[Int]
	getPos lst 
		|null lst = []
		|head lst >= 0 = [head lst]++ getPos (tail lst)
		|otherwise = getPos (tail lst)

	getNeg :: [Int]->[Int]
	getNeg lst 
		|null lst = []
		|head lst < 0 = [head lst]++ getNeg (tail lst)
		|otherwise = getNeg (tail lst)

	pecahListPosNeg l
		|null l = ([],[])
		|otherwise = (getPos l, getNeg l)