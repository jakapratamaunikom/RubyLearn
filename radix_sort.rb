# method radix sort
def radixSort(array)
	temp = Array.new
	
	array.each do |x|
		if temp[x] == nil
			temp[x] = 1
		else
			temp[x] = temp[x] + 1
		end
	end
	
	temp.each_with_index do |x, i|
		if (x)
			x.times do
				puts i
			end
		end
	end
end

def run()
	arrayAcak = [4,35,53,3,23,2,4,2,10]
	radixSort(arrayAcak)

end

run