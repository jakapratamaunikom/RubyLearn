password = 'aasfsa'
print "Masukan Nilai anda :"
nilai = gets.chomp.to_i


grade = ''
if (nilai > 90) & (nilai <= 100)
	puts 'lulus'
	grade = 'A'
	puts "Grade #{grade}"

	elsif (nilai > 80) & (nilai<=90)
		puts 'lulus'
		grade = 'B'
		puts "Grade #{grade}"

	elsif (nilai  >=65) & (nilai <=80)
		puts 'lulus'
		grade = 'C'
		puts "Grade #{grade}"
	else
		puts 'tidak lulus'
		grade = 'E'
		puts "Grade#{grade}"
end

# kondisi password benar
unless password == 'abcde'
	puts 'Password salah !!!'
end
