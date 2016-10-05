print "Year of birth?  : "
birth_year = gets.chomp.to_i

print "Month of birth? : "
birth_month = gets.chomp.to_i

print "Day of birth?   : "
birth_day = gets.chomp.to_i

birthdate = Time.new(birth_year, birth_month, birth_day)
time_since_birth = Time.now - birthdate

puts "#{(time_since_birth / (60*60*24*365)).to_i} candles!"
