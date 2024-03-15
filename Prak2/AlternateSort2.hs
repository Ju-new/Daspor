maxl :: [Int]->Int->Int
maxl l m
	|null l = m
	|head l >= m = maxl (tail l) (head l)
	|otherwise = maxl (tail l) m
del :: [Int]->Int->[Int]
del l x
	|null l = []
	|head l == x = tail l
	|otherwise = [head l] ++ del (tail l) x

sort :: [Int]->[Int]
sort l
	|null l = []
	|otherwise = sort (del l (maxl l (head l))) ++ [maxl l (head l)]

alternatesortm:: [Int]->[Int]
alternatesortm l
	|null l = []
	|length l == 2 || length l == 1 = l
	|otherwise = [head (sort l)] ++ [last (sort l)] ++ alternatesortm (init (tail (sort l)))