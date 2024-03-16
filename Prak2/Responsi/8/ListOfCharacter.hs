module ListOfCharacter where
	pajakMakan :: [Char]->[Int]->[Char]
	pajakMakan menu harga
		|null menu = []
		|(head harga) + div (head harga) 10 <= 200 = [head menu] ++ pajakMakan (tail menu) (tail harga)
		|otherwise = pajakMakan (tail menu) (tail harga)