module NbKelipatanX where
	nbKelipatanX :: Int->Int->Int->Int

	nbKelipatanX m n x=
		if m==n
			then if mod m x==0 
				then 1
			else 0
		else
			if mod m x==0 
				then 1+nbKelipatanX (m+1) n x
			else 0 + nbKelipatanX (m+1) n x