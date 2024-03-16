module ListOfInteger where
	isMember :: [Int] ->Int-> Bool
	isMember l x
		|null l = False
		|head l == x = True
		|otherwise = isMember (tail l ) x