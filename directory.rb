# Create an empty array to hold student records
@students = []

def interactive_menu
  loop do
    print_menu
    selection = gets.chomp.to_i # Get user selection
    process selection
  end
end

def print_menu
    # Print the menu and ask the user for input
    puts "1. Add students"
    puts "2. Show students"
    puts "3. Save to students.csv"
    puts "4. Exit"
    puts
end

def process selection
  puts
  # Carry out the user's instruction
  case selection
  when 1
    input_students
  when 2
    print_students
  when 3
    save_students
  when 4
    exit
  else
    interactive_menu
  end
end

def input_students
  # Prompt user for input
  puts "Please enter students' names"
  puts "Press [Enter] twice when you're done\n\n"
  
  # Wait for the user to input the student's name and assign it to a variable
  name = gets.chomp

  # Do the following until no name is inputted (i.e. the user presses Enter twice)
  until name.empty? do
    # Add a hash containing the new student's name and cohort to the students array
    @students << {name: name.capitalize, cohort: :november}

    # Print a confirmation and a tally of the total students
    puts "\nAdded #{name}. Total students: #{@students.count}\n\n"

    # Wait for more user input and reassign the name variable
    name = gets.chomp
  end
end

def print_students
  print_header
  print_list
  print_footer
end

def print_header
  # Print the list title followed by an empty line
  puts "The Students of Villains Academy"
  puts "------------------------------\n\n"
end

def print_list
  # Print each student record on its own line, followed by an empty line
  @students.each_with_index { |student, ind| puts "#{ind + 1}: #{student[:name]} (#{student[:cohort]} cohort)" }
  puts
end

def print_footer
  num_students = @students.count
  # Print the total student count
  puts "Overall we have #{num_students} great student#{num_students > 1 ? "s" : ""}!\n\n"
end

def save_students
  # Open a file for writing
  file = File.open("students.csv", "w")

  # Iterate over the array of students and add each to the file
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(", ")
    file.puts csv_line
  end

  # Close the file
  file.close
end

interactive_menu