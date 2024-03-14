module AlternateSort where
--	alternateSort :: [Int]->[Int]


	split1 :: [Int]->Int->Int->[Int]
	split1 l x panjang
		|mod (panjang) 2 /=0 = split1 l (div (panjang+1) 2) (panjang+1)		|x == 0 = []
		|otherwise = [head l] ++ split1 (tail l) (x-1) panjang

	split2 :: [Int]->Int->Int->[Int]
	split2 l x panjang
		|x == 0 = []
		|otherwise = split2 (init l) (x-1) panjang ++ [last l]
	