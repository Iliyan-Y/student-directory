def input_students
  puts "Please enter the students info"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []

  # while input not empty continue
  while true do
    puts "Name: "
    name = gets.chomp
    # break the loop if name is empty
    if name.empty?
      break
    end
    puts "Hobby: "
    hobby = gets.chomp
    puts "Country of bird "
    country_of_bird = gets.chomp
    puts "Height "
    height = gets.chomp 
    # add the student hash to the array
    students << {name: name, cohort: :november, hobby: hobby, country_of_bird: country_of_bird, height: height}
    puts "Now we have #{students.count} students"
  end
  # return the array of students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-"*10
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort) #{student[:hobby]} hobby, #{student[:country_of_bird]} Bird Place, #{student[:height]} tall"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end
#nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)