module DasPro where
	dasPro ::Int->Int->Int->Int->Int
	dasPro das pro x y =
		if das*x > pro*y
			then das*x
		else
			pro*y