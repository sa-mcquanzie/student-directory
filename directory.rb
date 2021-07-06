def interactive_menu
  # 1. Print the menu and ask the user what to do
  # 2. Get the input and save it to a variable
  # 3. Carry out the user's instruction
  # 4. Repeat from step 1
  end
end

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
  students.each_with_index { |student, ind| puts "#{ind + 1}: #{student[:name]} (#{student[:cohort]} cohort)" }
  puts
end

def print_footer students
  num_students = students.count
  # Print the total student count
  puts "Overall we have #{num_students} great student#{num_students > 1 ? "s" : ""}!"
end

students = input_students
print_header
print students
print_footer students