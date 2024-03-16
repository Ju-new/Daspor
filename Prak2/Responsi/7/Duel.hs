module Duel where
	--Definisi dan Spesifikasi 
	duel :: [String] -> [String]

	duel l
		|null l = []
		|head l == "desperado" = ["BANG"] ++ duel (tail l)
		|otherwise = [head l] ++ duel (tail l)