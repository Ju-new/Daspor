matauang::Int->Int->Int->Int->(Int,Int)

matauang q d n p = ((q*25 + d*10 + n*5 + p*1) `div` 100, (q*25 + d*10 + n*5 + p*1) `mod` 100) 