def wagon_sort(students_array)
	puts "Type a student name : "
	student1_name = gets.chomp
	students_array << student1_name

	while true
    puts "Type another student (or press enter to finish):"
    students_name = gets.chomp
    break if students_name.empty?
    students_array << students_name
  end

	puts "Congratulations ! Your Wagon has #{students_array.count} students:"
	puts students_array.sort_by { |x| x.downcase }
end

students_array = Array.new

wagon_sort(students_array)