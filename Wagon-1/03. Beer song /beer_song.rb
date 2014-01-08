def beersong(nb_at_start)
	# => premier couplet
	puts "#{nb_at_start} bottles of beer on the wall, #{nb_at_start} bottles of beer!"
		x = nb_at_start - 1
	puts "Take one down, pass it around, #{x} bottles of beer on the wall!"

	# => a partir du deuxieme couplet	
	until x == 2
		puts "#{x} bottles of beer on the wall, #{x} bottles of beer!"
		x -= 1
		puts "Take one down, pass it around, #{x} bottles of beer on the wall!"
	end

	puts "2 bottles of beer on the wall, 2 bottles of beer!"
	puts "Take one down, pass it around, 1 bottle of beer on the wall!"
	puts "1 bottle of beer on the wall, 1 bottle of beer!"
  puts "Take one down, pass it around, no more bottles of beer on the wall!"

end
  
beersong(89)