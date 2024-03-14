countGanjil:: [Int]->Int

countGanjil mylist
	|mylist == [] = 0
	|mod (head mylist) 2 == 0 = countGanjil (tail mylist)
	|otherwise = 1 + countGanjil (tail mylist)

isMenaik :: [Int]->Bool

isMenaik mylst
	|tail (mylst) == [] = True
	|(head mylst) >= head (tail mylst) = False
	|otherwise = isMenaik (tail mylst)


substring :: [Char]->Int->Int->[Char]

substring li l r
	|l > r = []
	|l /= 0 = substring (tail li) (l-1) (r-1)
	|otherwise = [head li] ++ substring (li) (l+1) r

twoSum :: [Int] -> Int->Bool
twoSum li a
	|tail li == [] = False
	|(head li) + last (tail li) == a = True
	|tail li /= [] = twoSum (init li) a
	|otherwise = twoSum (tail li) a


prefixSum :: [Int]->[Int]

prefixSum mylst
	|null mylst = []
	|otherwise = prefixSum (tail (mylst)) ++ [tambah (mylst)]

tambah :: [Int]->Int
tambah mylst
	|null mylst = 0
	|otherwise = (head mylst) + tambah (tail mylst)
insert :: [Int]->[Int]
insert mylst
	|null mylst = []
	|otherwise = check (insert (tail mylst)) (head mylst)


check :: [Int]->Int->[Int]

check li num
	|null li = [num]
	|num >= head li = [head li] ++ check (tail li) num
	|otherwise = [num] ++ li


goldbach :: Int->[(Int,Int)]

goldbach awal x
	|awal == x = ()
	|otherwise = sumPrime (goldbach awal+1 x) x 



sumPrime :: Int->Int->Int->(Int,Int)


sumPrime awal x tujuan
	|x==tujuan = ()
	|checkPrime (2 x) && x+awal	==tujuan = (awal,x)
	|sumPrime awal (x+1) tujuan



checkPrime :: Int->Int->Bool

checkPrime initial x
	|mod x initial == 0 = False
	|initial == x-1 = True
	|otherwise = checkPrime (initial+1) x