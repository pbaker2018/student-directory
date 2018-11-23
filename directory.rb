def input_students

  students = []
  puts "Please enter name of student"
  puts "To stop entering names, press return five times"
  name = gets.chomp
  puts "Please enter main hobby"
  hobby = gets.chomp
  puts "Please enter students date of birth as xx-xx-xx"
  dateOfBirth = gets.chomp
  puts "Please enter nationality of student"
  nationality = gets.chomp
  puts "Please enter cohort start month"
  cohort = gets.chomp

  person = {
    name: name,
    hobby: hobby,
    dateOfBirth: dateOfBirth,
    nationality: nationality,
    cohort: cohort
  }

  students << person

  while !name.empty? do
    puts "Please enter name of student"
    puts "To stop entering names, press return five times"
    name = gets.chomp
    puts "Please enter main hobby"
    hobby = gets.chomp
    puts "Please enter students date of birth as xx-xx-xx"
    dateOfBirth = gets.chomp
    puts "Please enter nationality of student"
    nationality = gets.chomp
    puts "Please enter cohort start month"
    cohort = gets.chomp

    person = {
      name: name,
      hobby: hobby,
      dateOfBirth: dateOfBirth,
      nationality: nationality,
      cohort: cohort
    }

    students << person
  end
    students[0..-2]
end

def print_header
  puts "The students of Villains Academy".center(50)
  puts "-------------".center(50)
end

def print(students)
  students.each{|person| puts "#{person[:name]}, #{person[:hobby]}, #{person[:dateOfBirth]}, #{person[:nationality]} (#{person[:cohort]} cohort)".center(50)}
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students".center(50)
end

students = input_students
print_header
print(students)
print_footer(students)
