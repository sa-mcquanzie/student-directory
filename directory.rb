# Array containing all the students at Villains Academy
students = [
  "Dr. Hannibal Lecter",
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex DeLarge",
  "The Wicked Witch of the West",
  "Terminator",
  "Freddy Kreuger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates"
]

def print_header
  puts "The Students of Villains Academy"
  puts "---------------"
  puts
end

def print students
  students.each { |student| puts student }
  puts
end

def print_footer students
  puts "Overall we have #{ students.count } great students!"
end

print_header
print students
print_footer students