def factorial(an_integer)
  result = 1
  (1..an_integer).each {|x| result *= x}
  return result 
end

class Integer
        def factorial
                result = 1
                (1..self).each { |x| result *= x }
                return result
        end
end

puts factorial(6)
puts 6.factorial