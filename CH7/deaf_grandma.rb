# Whatever you say to Grandma, she will reply with "HUH?! SPEAK
# UP, DEARIE!", unless you shout it in all caps, in which case
# she'll reply "NO, NOT SINCE 1938!"

def talk_to_grandma(bye_times)
  print "You : "
  your_statement = gets.chomp
  grandma_replies(bye_times, your_statement)
end

def grandma_replies(bye_times, your_statement)
  print "G'ma: "

  case your_statement
  when "BYE"
    if bye_times < 2
      bye_times += 1

      puts "I DON'T THINK SO, DEAR."

      talk_to_grandma(bye_times)
    else
      puts "OKAY, LOVE."
    end
  when your_statement.upcase
    bye_times = 0

    if [true, false].sample
      puts "YES! IN 19#{rand(38..50)}."
    else
      puts "NO, NOT SINCE 19#{rand(38..50)}."
    end

    talk_to_grandma(bye_times)
  else
    bye_times = 0

    puts "HUH?! SPEAK UP, DEARIE!"
    talk_to_grandma(bye_times)
  end
end


puts ">>Talk to Grandma!"
puts

bye_times = 0
talk_to_grandma(bye_times)
