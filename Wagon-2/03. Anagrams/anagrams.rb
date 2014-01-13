def anagrams?( a_string, another_string )
  a_string.downcase.delete(" ").chars.sort == another_string.downcase.delete(" ").chars.sort
end

def anagrams_on_steroids?( a_string, another_string )
	h1 = {}
	h2 = {}

	a_string.downcase.delete(" ").chars.to_a.each {|x| h1.has_key?(x) ? h1[x] += 1 : h1[x] = 1}
	another_string.downcase.delete(" ").chars.to_a.each {|x| h2.has_key?(x) ? h2[x] += 1 : h2[x] = 1}

	h1 == h2
end

# complexity = O(n2)
puts anagrams? "Monica Lewinsky", "Nice silky woman" # => true 

# complexity = ?
puts anagrams_on_steroids? "Monica Lewinsky", "Nice silky woman" # => true

