# Create an empty array to hold student records
@students = []

def interactive_menu
  loop do
    # 1. Print the menu and ask the user for input
    puts
    puts "1. Add students"
    puts "2. Show students"
    puts "3. Exit"

    # 2. Get the input and save it to a variable
    choice = gets.chomp.to_i
    puts

    # 3. Carry out the user's instruction
    case choice
    when 1
      input_students
    when 2
      print_students
    when 3
      exit
    else
      interactive_menu
    end
  end
end

def input_students
  # Prompt user for input
  puts "Please enter students' names"
  puts "Press [Enter] twice when you're done"
  puts
  
  # Wait for the user to input the student's name and assign it to a variable
  name = gets.chomp

  # Do the following until no name is inputted (i.e. the user presses Enter twice)
  until name.empty? do
    # Add a hash containing the new student's name and cohort to the students array
    @students << {name: name.capitalize, cohort: :november}

    # Print a confirmation and a tally of the total students
    puts "Added #{name}. Total students: #{@students.count}"

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
  puts "------------------------------"
  puts
end

def print_list
  # Print each student record on its own line, followed by an empty line
  @students.each_with_index { |student, ind| puts "#{ind + 1}: #{student[:name]} (#{student[:cohort]} cohort)" }
  puts
end

def print_footer
  num_students = @students.count
  # Print the total student count
  puts "Overall we have #{num_students} great student#{num_students > 1 ? "s" : ""}!"
end

interactive_menu