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

