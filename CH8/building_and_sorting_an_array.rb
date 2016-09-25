# Write a program that accepts as many words as the user types,
# then repeats them back in alphabetical order.

words = []

while true
  print "Type a word : "
  word = gets.chomp.downcase

  if word != ''
    words.push(word)
  else
    break
  end
end

puts
puts "Here is the list of words you entered :"
puts words.sort
