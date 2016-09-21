# Write an angry boss program that rudely asks what you want.
# Whatever you answer, the angry boss should yell it back to
# you and then fire you.

puts "BOSS: What do you want?"

print "YOU : "
your_line = gets.chomp

puts "BOSS: WHADDAYA MEAN \"#{your_line.upcase}\"?!? YOU'RE FIRED!"
