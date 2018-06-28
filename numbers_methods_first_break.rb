
def sum_array(array)
	array.sum - array.min - array.max
end

# puts sum_array([120,7,145,-10,-15])


def invert_array(array)
	array = array.map { |e| e = e*(-1) }
end 

# print invert_array([1,2,3,-4])

def common_elements(arr1, arr2)
	common_elements_array = []
	for i in 0...arr2.length
		common_elements_array.push(arr2[i])	if arr1.include?(arr2[i])
	end
	common_elements_array
end

# print common_elements([1,2,3,4,5],[4,5,6])

def avf_array(*args)
	sums_array = Array.new(args[0].length, 0)
	for i in 0...args.length
		return ('Wszystkie tablice muszą mieć taką samą długość!') if args[i].length !=args[0].length
	end

	args.map {|array| array.each_index{ |index| sums_array[index] += array[index] }}
	sums_array.map { |e| e=e/args.length.to_f }

end


# print avf_array([1,2], [6,7], [3,4,5], [1,1])

def highest_number(int)
	int.to_s.split("").map { |digit| digit.to_i }.sort.reverse.join.to_i
end

# puts highest_number(243)

def multiples(n)
	sum = 0
	for i in 0..n
		sum += i if i%3 == 0 || i%5 == 0
	end
	sum
end

# puts multiples(20)












