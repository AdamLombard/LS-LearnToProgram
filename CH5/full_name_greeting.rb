# Write a program that asks for a person's first name,
# then middle, and then last. Finally, it should gree
# the person using their full name.

puts "Welcome to Galzabar-9."
puts "What is your family name?"
lastName = gets.chomp

puts ""
puts "Pleasure to meet you, Galactic Citizen #{lastName}."
puts "Your fist name?"
firstName = gets.chomp

puts ""
puts "Hmm. Well to each their own."
puts "Middle name, please?"
middleName = gets.chomp

puts ""
puts "Very good. Here is your card, Citizen #{firstName} #{middleName} #{lastName}, with a total of #{firstName.length + middleName.length + lastName.length} letters in your name. Keep it with you at all times. Move along to the biometic station, please. Enjoy your stay on Galzabar-9. Next!"
