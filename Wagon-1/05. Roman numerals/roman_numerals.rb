def old_roman_numeral(an_integer)
	nb_m = an_integer.divmod(1000)
	m = nb_m[0]
	print "M" * m

	nb_c = nb_m[1].divmod(100)
	c = nb_c[0]
	print "C" * c

	nb_d = nb_c[1].divmod(10)
	d = nb_d[0]
	print "X" * d

	nb_u = nb_d[1].divmod(1)
	u = nb_u[0]
	puts "I" * u

	puts "Ils sont frais, mes chiffres romains !"
end	

old_roman_numeral(4286)

=begin		
		millier = an_integer.divmod(1000)
		roman_numeral_milliers = M * millier
	end

	if an_integer % 100 == 0
		centaine = an_integer.divmod(100)
		roman_numeral_centaines = C * centaine
	end

	if an_integer % 10 == 0
		dizaine = an_integer.divmod(10)
		roman_numeral_dizaines = X * dizaine
	end

	if an_integer % 1 == 0
		unite = an_integer.divmod(1)
		roman_numeral_unites = I * unite
	end


an_integer = 4534




=begin

	an_integer.modulo (y) 

modulo_milliers = an_integer % 1000

modulo_centaines = modulo_milliers % 100

modulo_dizaines = modulo_centaines  % 10

1234 / 1000 = 1 (modulo 234) x M
	modulo 234 / 100 = 2 (modulo 34) x C
		modulo 34 / 10 = 3 x X
			modulo 4 x I



end



3 / 7 / 5 / 8
MMM CCCCCCC XXXXX IIIIIII

puts "My nice roman numeral tests" 


# Write a nice testing script herebelow !

old_roman_numeral(2876)





=begin
   
   def roman_numeral(an_integer)
  # your code goese here for the new-style version
	end

	I = 1
	V = 5
	X = 10
	L = 50
	C = 100
	D = 500
	M = 1000
=end

