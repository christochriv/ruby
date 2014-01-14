def parse_mail(mail)
  jokes = {
	gmail: "you're an average but modern person", 
	lewagon: "you're skilled and capable", 
	aol: "just stop sending chain letters",
	hotmail: "you probably have spyware",
	caramail: "ASV ?"
		}
  
	name = mail.match(/^[^@]*/).to_s.split(".")
	full_name = name.each {|name| name.capitalize!}.join(" ")
	provider = mail.match(/[@](\w*)/).to_s.split(/\W/)[-1]

	if mail.include?("@")
		"Hello #{full_name}, #{jokes[provider.to_sym]}"

	else
		"This is a wrong input."
	end
end 

p parse_mail("boris.paillard@lewagon.org") # => "Well done boris, you're skilled and capable"
