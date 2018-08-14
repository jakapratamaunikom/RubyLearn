# method counting sort
def countingsort(arr, min = 0, max = 10)
	n = max-min+1
	count = Array.new(n,0)
	len = arr.length
	output = Array.new(len)

	for i in 0...len
		count[arr[i]-min]+=1
	end
	
  	for i in 1...n
		count[i]+=count[i-1]
	end
		
	
	for i in 0...len
		output[count[arr[i]-min]-1]=arr[i]
		count[arr[i]-min]-=1
	end
	
	for i in 0...len
		arr[i]=output[i]
	end
	
	return arr
end

ary = [8, 4, 2, 8, 9, 10, 1,1,2]
# print countingsort(ary, min=0, max=10)
countSort = countingsort(ary, min=0, max=10)

puts "Array Acak  : #{ary}"
puts "Hasil Array : #{countSort}"


