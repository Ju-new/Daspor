module ListOfInteger where
	maxlist :: [Int]->Int->Int
	maxlist l x 
		|null l = x
		|head l >= x = maxlist (tail l) (head l)
		|otherwise = maxlist (tail l) x

	hitungmax :: [Int]->Int->Int
	hitungmax l x 
		|null l = 0
		|head l == x = 1 + hitungmax (tail l) x
		|otherwise = hitungmax (tail l) x

	maxNb :: [Int]->(Int,Int)
	maxNb l =
		let
			mynum = maxlist l (head l)
		in 
			(mynum, hitungmax l mynum)