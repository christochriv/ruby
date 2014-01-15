def cookbook

	require 'csv'
	array_of_recipes = CSV.read("recipes.csv")

	#Categories 
	categories = []
	array_of_recipes.each { |a| categories << a[1] }
	categories = categories.uniq

	puts "We have recipes for : #{categories}"
	puts "Which category are you interested in ?"
	answer = gets.chomp

		valid = false

		while true 
			if categories.include?(answer)
			puts " "
			puts "Ok ! For the category #{answer}, we have : " 
			valid = true
			break
			
			else
			puts " "
			puts "Sorry Sir. We do not have any recipes for this category (have you been careful with the case ?)."
			puts "Choose something else."
			answer = gets.chomp
			end
		end

	# Available recipes
		array_of_recipes.each do |recette|
			if recette.include?(answer)
				puts "- " + recette[0]
			else 
			end
		end	

	# Now ?
	puts " "
	puts "Now which recipe do you want ?"
	chosen_one = gets.chomp

	# Difficulty
	difficulty = { 
	"1" => "Easy", 
	"2" => "Medium",
	"3" => "Hard"
					}

	array_of_recipes.each do |x|
			case true
				when x[0] == chosen_one
			
					preparation = x[2]
					cooking = x[3]

						puts " "
						puts chosen_one + " !" + " What a marvelous idea."
						puts "************************************"
						puts "difficulty : " + difficulty[x[4]]
						puts "preparation : #{preparation} min"
						puts "cooking : #{cooking}h"
						puts "************************************"
				else
				end
		end
end

cookbook