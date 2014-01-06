
def age_in_days(day, month, year)
	
	t = Time.new 
	t2 = Time.now		

	puts "You have #{(t2.tv_sec-t.tv_sec)/(60*60*24)} days buddy"

end


# Testing your code
puts age_in_days(26, 02, 1988)