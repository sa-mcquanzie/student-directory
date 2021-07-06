def input_students
  # Prompt user for input
  puts "Please enter students' names"
  puts "Press [Enter] twice when you're done"
  puts
  
  # Create an empty array to hold student records
  students = []

  # Wait for the user to input the student's name and assign it to a variable
  name = gets.chomp

  # Do the following until no name is inputted (i.e. the user presses Enter twice)
  until name.empty? do
    # Add a hash containing the new student's name and cohort to the students array
    students << {name: name.capitalize, cohort: :november}

    # Print a confirmation and a tally of the total students
    puts "Added #{name}. Total students: #{students.count}"

    # Wait for more user input and reassign the name variable
    name = gets.chomp
  end

  # Return the students array
  students
end

def print_header
  # Print the list title followed by an empty line
  puts "The Students of Villains Academy"
  puts "------------------------------"
  puts
end

def print students
  # Print each student record on its own line, followed by an empty line
  students.each { |student| puts "#{student[:name]} (#{student[:cohort]} cohort)" }
  puts
end

def print_footer students
  # Print the total student count
  puts "Overall we have #{ students.count } great students!"
end

students = input_students
print_header
print students
print_footer students