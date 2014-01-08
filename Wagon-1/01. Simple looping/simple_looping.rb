# Methode While
def sum(min, max)
	result = 1

	while min < max
  	min += 1
		result += min  
	end

	result
end

# Methode For
def sum2(min, max)
	x = 0
	for number in min..max
		x += number
	end	
	x
end


min_ex = 1
max_ex = 100
sum = sum(min_ex,max_ex) 

puts sum
















