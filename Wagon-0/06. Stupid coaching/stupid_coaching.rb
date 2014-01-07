def first_answer(answer)
	if answer.end_with?("?") 
	puts "Silly question ! Get dressed and go to work !"
	else 
	puts "I don't care son"
	end
end

def second_answer(answer)
	if answer.end_with?("?") 
	puts "Silly question, take the subway and go to work !"
	else 
	puts "I don't care son, take the subway and go to work !"
	end		
end

def shout(answer)
	if answer == answer.upcase
	puts "I can feel your motivation son !"
	else
	end
end

def stupid_coaching 
	puts "Hey son"
	has_worked = false

	while true
		answer = gets.chomp
		shout(answer)
		break if answer == "I'm bored !"
			
			if answer == "I'm going to work"
			puts "Good boy"
			has_worked = true
			next   		
		end
		
		if has_worked 
		second_answer(answer)
		else 
		first_answer(answer)
		end
	end
end


stupid_coaching


