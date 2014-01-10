def bugged_concatenate(array)
  puts array.inject("") { |output, element| output + element.to_s }.upcase
end

def canard(array)
	puts array.map {|x, y| x * 2}
end

# Fix the method
bugged_concatenate(["1", "9", "84", " ", "George Orwell"])

# Duck Typing
canard(["1", "9", "84"])
canard([1, 9, 84])


=begin "Se prendre la tête pour rien" 
def canard(array)
  string = array.respond_to?(:to_s)
  puts array.inject("") { |element, concatenation| string ? (element.to_s + concatenation.to_s).upcase : (element + concatenation.to_i) }
  return
end
=end