module DoubleFactorial where
	doubleFactorial :: Int->Int
	doubleFactorial n
		|(n == 1) || (n==0) = 1
		|otherwise = n* doubleFactorial(n-2)