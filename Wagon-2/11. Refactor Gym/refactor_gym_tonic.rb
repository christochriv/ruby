def hop_hop_hop(number_of_exercises)
  counter = 1
  until counter > number_of_exercises
  	puts yield(counter)
  	counter +=1
  end
end

puts hop_hop_hop(6) {|n| "Hop! " * n + "Encore une fois ..."}