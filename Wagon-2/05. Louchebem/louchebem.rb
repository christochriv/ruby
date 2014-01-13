def louchebem(word)
	suffixes = ["em", "ji", "oc", "ic", "uche", "es"] 
	
	word.split('').each_with_index do |letter, index| 
		if %w(a e i o u y).include? letter
		return "L" + word[index..-1] + word[0..index-1] + suffixes.sample
		end
	end
end

def sentence_louchebem(phrases)
phrases.split('').each { |mot| print louchebem(phrases), " " }
return
end





puts louchebem("tarte")
puts sentence_louchebem("Je mange une tarte aux Pommes")
