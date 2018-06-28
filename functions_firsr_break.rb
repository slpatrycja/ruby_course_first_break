def rps(players1choice, players2choice)

	puts 'Remis' if players1choice == players2choice

	puts case players1choice
	when 'scissors'
		'Player 1 wins' if players2choice == 'paper'
		'Player 2 wins' if players2choice == 'rock'

	when 'rock'
		'Player 1 wins' if players2choice == 'scissors'
		'Player 2 wins' if players2choice == 'paper'

	when 'paper'
		'Player 1 wins' if players2choice == 'rock'
		'Player 2 wins' if players2choice == 'scissors'
	end
end

# rps("rock","paper")

def hamming_distance(str1, str2)
	return nil if str1.length != str2.length
	distance = 0
	for i in 0...str1.length
		distance +=1 if str1[i] != str2[i]
	end
	distance
end

# puts hamming_distance("GAGCCT","CATCGT")

def pangram?(string)
	alphabet = ("aąbcćdefghijklłmnńoóprsśtuwyzźż").split("");
	string.downcase!
	for i in 0...string.length
		if alphabet.include?(string[i])
			alphabet.delete(string[i]) 
		end
	end

	return true if alphabet.empty?
	return false
end

# puts pangram?('Dość błazeństw, żrą mój pęk luźnych fig')

def word_count(string)
	counts = Hash.new(0)
	string_arr = string.downcase.split
	string_arr.each { |name| counts[name] += 1 }
	counts
end
# print word_count("FOo foo bar bar")

def leap_year?(year)
	return true if (year%4 == 0 && year%100!=0) || year%400==0
	return false

end


# puts leap_year?(2100)

def leap_years(array)
	leap_array = []
	array.each { |year| leap_array.push(year) if leap_year?(year) }
	leap_array
end

# print leap_years((2000..2100).to_a)

def palindrom?(string)
	return true if string.downcase.split.join("")  == string.downcase.split.map { |e| e.reverse }.reverse.join("")
	return false
end

# puts palindrom?('Kobyła ma mały bok')

def backspaces(string)
	string = string.chars
	loops_number = string.slice_when { |a, b| a != b }.map { |group| group.length if group.first == '#' }.compact!.max
	i=0
	while i < loops_number
		string = string.delete_if { |e| string[string.index(e)+1] == '#' }
		i += 1
	end
	string = string.delete_if { |e| e == '#' }
	string = string.join("")

end

# print backspaces('abc#d##e')


def queue_time(customers, val)
	checkouts = []
	for i in 0...val
		checkouts[i] = customers[i]
	end
	customers = customers.drop(val)

	until customers.empty?
	checkouts[checkouts.index(checkouts.min)] += customers.first
	customers.delete(customers.first)
	end
	checkouts.max

end
# puts queue_time([2,3,10], 3)

def consecutives_sum(array)
	array = array.slice_when { |a,b| a!=b }.map { |e| [e.first*e.length] }.flatten
	array
end
 # print consecutives_sum([1,4,4,4,0,4,3,3,1])











