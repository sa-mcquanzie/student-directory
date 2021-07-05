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

# Output the list of students
puts "The Students of Villains Academy"
puts "---------------"
puts

students.each { |student| puts student }
puts

# Output the total number of students
puts "Overall we have #{ students.count } great students!"