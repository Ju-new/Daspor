module BinarBiner where
	binarBiner :: Int ->Int
	binarBiner a=
		if a <= 1
			then a
		else
			10*binarBiner (div a 2) + mod a 2