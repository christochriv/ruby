def anagrams?(a_string, another_string)
a_string.delete(" ").downcase.chars.sort == another_string.delete(" ").downcase.chars.sort
end




def anagrams_on_steroids?(a_string, another_string)

end



# complexity = O(n2)
puts anagrams? "Monica Lewinsky", "Nice silky woman" # => true 

# complexity = ?
puts anagrams_on_steroids? "Monica Lewinsky", "Nice silky woman" # => true

