def belajar_coding
	puts 'Haiiii'
end

def hitung_luas_persegi(p,l)
	luas = p * l
	return luas

end

def testing
	i=10
	j=20
	k=30
	return 1,j,k
end

belajar_coding

puts "Perkalian dari hitung_luas_persegi(2,8) : #{tampil_hit_luas = hitung_luas_persegi(2,8)}"

# Akses Method nya harus lewat variabel
var = testing
puts var