def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp.capitalize
  end
  # return the array of students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-"*10
end
students = input_students
def print(students)
  puts "Please choose to print the students whose name begins with: "
  sellected_letter = gets.chomp.upcase
  students.each_with_index do |student, index|
    # Gets the first letter form the name and compare with the first letter from the input
    if student.values[0][0] == sellected_letter[0] # aways gets the first letter
      puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
    end
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end
#nothing happens until we call the methods

print_header
print(students)
print_footer(students)