# Recoding inject iterator

def inject(array, initial_value)
	x = initial_value
	array.each do |number|
	x = yield(x, number)
	end
	return x
end


# Block timer

def timer_for
  start_time = Time.now
  yield
  puts Time.now - start_time
  return nil
end

timer_for do 
  (1..100).each { |i| (1..100000).to_a.shuffle.sort }
end

# Should return around 2-3 seconds



puts inject(1..100, 0) { |initial_value, element| element + initial_value } == 5050 # true