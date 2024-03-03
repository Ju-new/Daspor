module KonversiSuhu where
	--Definisi dan Spesifikasi
	konversiSuhu ::Float->Char->Float
	--Mengkonversi suhu dari Celcius ke Reamur,Fahrenheit, atau Kelvin

	--Realisasi
	konversiSuhu c t
		|t=='R' = (4/5) * c
		|t=='F' = ((9/5)*c) +32
		|otherwise = c+273.15	