def is_valid_phone_number(phone_number)
	final_number = phone_number.delete " +-"
	final_number =~ /(^0|33|00)(\d{9,12})/ ? true : false
end



# tests

puts is_valid_phone_number("0665363636") # should output true
puts is_valid_phone_number("06 65 36 36 36") # should output true
puts is_valid_phone_number("06-65-36-36-36") # should output true
puts is_valid_phone_number("+33 6 65 36 36 36") # should output true

puts is_valid_phone_number("06 65 36 36") # should output false
puts is_valid_phone_number("2336653636") # should output false