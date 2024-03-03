module SumGeo where
	sumGeo :: Int->Int->Int->Int
	sumGeo a r n = (a*(1-r^n)) `div` (1-r)