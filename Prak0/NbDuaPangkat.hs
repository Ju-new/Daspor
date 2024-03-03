module NbDuaPangkat where
	isPangkatDua :: Int->Bool
	isPangkatDua n 
		|n == 1 = True
		|mod n 2 == 0 = isPangkatDua (div n 2)
		|otherwise = False

	nbDuaPangkat :: Int->Int->Int
	nbDuaPangkat a b
		|a > b = 0
		|(isPangkatDua a) == True = 1 + nbDuaPangkat (a+1) b
		|otherwise = nbDuaPangkat (a+1) b