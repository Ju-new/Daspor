countFactorOfX ::Int ->[Int]->Int
countFactorOfX n list
	|list == [] = 0
	|mod (head list) n == 0 = 1 + countFactorOfX n (tail list)
	|otherwise = countFactorOfX n (tail list)


delNthElmt :: Int -> [Char] -> [Char]

delNthElmt n list 
	|n == 1 = tail list
	|otherwise = [head list] ++ delNthElmt (n-1) (tail list)


sumIsiList :: [Int] -> Int
sumIsiList list
	|list == [] = 0
	|otherwise = head list + sumIsiList (tail list)

filterGanjil :: [Int] -> [Int]
filterGanjil list
	|list == [] = []
	|mod (head list) 2 /= 0 = [head list] ++ filterGanjil (tail list)
	|otherwise = filterGanjil (tail list)

isEqFront :: [Char]->[Char]->Bool
isEqFront t1 t2
	|t1 == [] =True
	|head t1 /= head t2 = False
	|otherwise = isEqFront (tail t1) (tail t2)
ambilBagian :: [Char]->Int->[Char]
ambilBagian list n
	|n==0 =[]
	|otherwise = [head list] ++ (ambilBagian (tail list) (n-1))
