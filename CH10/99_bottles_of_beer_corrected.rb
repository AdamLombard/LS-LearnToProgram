require_relative 'english_number'

# Write a probram that prints out the lyrics to the beloved
# classic, "99 Bottles of Beer on the Wall".

def test_plural(num)
  num != 1 ? 's' : ''
end

def main_phrase_a(num)
  "#{english_number(num).capitalize} bottle#{test_plural(num)} of beer"
end

def main_phrase_b
  "on the wall"
end

num_of_bottles = 5

while num_of_bottles > 0
  puts "#{main_phrase_a(num_of_bottles)} #{main_phrase_b}!"
  puts "#{main_phrase_a(num_of_bottles)}!"
  puts "Take one down, pass it around,"

  num_of_bottles -= 1

  if num_of_bottles > 0
    puts "#{main_phrase_a(num_of_bottles)} #{main_phrase_b}!"
    puts
  else
    puts "... Aww! No more beer!"
  end
end
