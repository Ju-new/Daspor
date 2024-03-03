module LamaTidur where
	--Definisi dan Spesifikasi
	lamaTidur ::Int->Int->Int->(Bool,Int,Int,Int)
	--Menentukan apakah tidur cukup dan lama waktu tidur

	--Realisasi
	lamaTidur j m d=
		let 
			waktu_tidur = j*3600+m*60+d
			waktu_bangun = 5*3600

			selisih
				|j<5=waktu_bangun-waktu_tidur
				|otherwise = waktu_bangun - (waktu_tidur-24*3600)

			jam = div selisih 3600
			menit = div (mod selisih 3600) 60
			detik = mod selisih 60

		in (selisih>=6*3600,jam,menit,detik)