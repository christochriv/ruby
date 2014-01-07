def age_in_days(day, month, year)
	today_in_sec = Time.now.to_i
	birth_in_sec = Time.new(year, month, day).to_i
	difference = today_in_sec-birth_in_sec
	days = difference/86400
	
	puts "you have #{days} days buddy"
end

# Testing your code
puts age_in_days(6, 11, 1985)