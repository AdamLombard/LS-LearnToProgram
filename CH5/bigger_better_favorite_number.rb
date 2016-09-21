# Write a program that asks for a person's favorite number.
# Have your program add 1 to the numer, and then suggest
# the result as a bigger and better favorite number. (Do
# be tactful about it, though.)

puts "Hey, psst. You got a favorite nubmer?"

favNum = gets.chomp.to_i

puts ""
puts "Yeah, I mean #{favNum} is alright. But don't you think #{favNum + 1} is just a better, stronger number?"
