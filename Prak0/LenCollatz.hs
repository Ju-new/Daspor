module LenCollatz where
	lenCollatz :: Int->Int
	lenCollatz a=
		if (a == 1)
			then 1
		else if (mod a 2) == 0
			then 1 + lenCollatz(div a 2)
		else
			1 + lenCollatz((3*a)+1)