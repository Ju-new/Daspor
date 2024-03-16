module ListOfCharacter where
	--Definisi dan Spesifikasi
	isPalindrom :: [Char]->Bool
	--Memeriksa apakah palindrome atau bukan

	isPalindrom lc
		|null lc || tail lc == [] = True
		|head lc == last lc = isPalindrom (init (tail lc))
		|otherwise = False