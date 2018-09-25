# * menyatakan  parameter dinamis
def tampil_nama(*tes)
	puts "jumlah parameter #{tes.length}"
	
	# perulangan
	for  i in 0..tes.length
		# menampilkan isi dari parameter
		puts "parameter #{tes[i]}"
	end
end

tampil_nama "jaka","paratama","belaajr","ror"
puts

tampil_nama "jaka","paratama","belaajr","ror","uyeh"