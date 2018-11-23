$input = ""

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

def acquire_input
    $input = gets.chomp
end

  def ask_user_for_cohort
    puts "Enter what cohort to print"
  end

  def print_by_cohort(students)

    students_by_cohort = {}

    students.each do |person|
      cohort = person[:cohort]

      if students_by_cohort[cohort] == nil
        students_by_cohort[cohort] = []
      end

    students_by_cohort[cohort].push(person[:name]).push(person[:hobby]).push(person[:dateOfBirth]).push(person[:nationality])
    end

    ask_user_for_cohort
    acquire_input
    puts students_by_cohort[$input]
   end

  students = input_students
  print_by_cohort(students)
