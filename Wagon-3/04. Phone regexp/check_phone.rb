
def is_valid_phone_number(phone_number)
	final_number = phone_number.delete " +-"
	final_number =~ /(^0|33|00)(\d{9,12})/ ? true : false
end

=begin
def is_valid_phone_number(phone_number)
	final_number = phone_number.delete " +-"

	if final_number.length == 9
		#631749000
		final_number =~ /\d/ ? true : false
	end
	
	if final_number.length == 10
		#0631749000
		final_number =~ /^0/ ? true : false
	end

	if final_number.length == 11
		#33631749000
		final_number =~ /^33/ ? true : false
	end

	if final_number.length == 13
		#0033631749000
		final_number =~ /^0033/ ? true : false
	end

end
=end

# tests

puts is_valid_phone_number("0665363636") # should output true
puts is_valid_phone_number("06 65 36 36 36") # should output true
puts is_valid_phone_number("06-65-36-36-36") # should output true
puts is_valid_phone_number("+33 6 65 36 36 36") # should output true

puts is_valid_phone_number("06 65 36 36") # should output false
puts is_valid_phone_number("2336653636") # should output false
puts is_valid_phone_number("0021631749000") # should output false