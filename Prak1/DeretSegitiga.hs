module DeretSegitiga where
	deretSegitiga :: Int->Int

	deretSegitiga n
		|n==0=0
		|otherwise =n+ deretSegitiga (n-1) 