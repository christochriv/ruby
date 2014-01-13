=begin
Write a program that takes a filename and a parameter n and prints the n most common words in the file, 
and the count of their occurrences, in descending order. 

most_common_words('bible.txt', 3)  # prints => 
> 'lord': 8722 occurrences
> 'God': 7380 occurrences
> 'Jesus': 2617 occurrences# the file is yours !

count_frequency
=end


def most_common_words(source, n)
	# Array of words
	words = File.read(source).split
	hash_of_words = Hash.new(0)
	little_guys = ["de", "un", "a", "des", "une", "le", "la", "à", "les", "pour", "et", "mais", "ou", "est", "donc", "que", "quel", "qui", "quoi", "ne", "pas", "en", "il", "elle", "dans", "je", "lui", "avait", "comme", "du", "ce", "cette", "plus", "qu'il"]

	words = words - little_guys
	words.each {|x| hash_of_words.has_key?(x) ? hash_of_words[x] += 1 : hash_of_words[x] = 1}

	wordlist = hash_of_words.sort_by {|x,y| y}

	puts wordlist.last(n).reverse
	return
end

most_common_words("source-text.txt", 10)

