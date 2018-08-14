# method selection sort
def selection_sort arrayAcak
	(arrayAcak.length-1).times do |i|
		minindex = i
		minvalue = arrayAcak[i]
	
		(i).upto(arrayAcak.length-1) do |j|
			if arrayAcak[j] < minvalue
				minindex = j
				minvalue = arrayAcak[j]
			end
			
			if  minvalue < arrayAcak[i]
				 arrayAcak[i] , arrayAcak[minindex] = minvalue, arrayAcak[i]
			end
		end

	end
	arrayAcak
end

arrayAcak = [10,5,8,93,6,2]
# print untuk  cetak satu baris

puts "Array Sebelumnya : #{arrayAcak}"
hasilSelection = selection_sort(arrayAcak)

puts "Array Hasi       : #{hasilSelection}"