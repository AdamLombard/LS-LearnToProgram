# This could be a lot prettier, but it was interesting
# playing with hashes...

def make_birthday_hash
  month_values = {'jan' =>  1,
                  'feb' =>  2,
                  'mar' =>  3,
                  'apr' =>  4,
                  'may' =>  5,
                  'jun' =>  6,
                  'jul' =>  7,
                  'aug' =>  8,
                  'sep' =>  9,
                  'oct' => 10,
                  'nov' => 11,
                  'dec' => 12}

  hash = {}

  File.open('birthdays.txt', 'r') do |birthday_list|
    birthday_list.each_line do |next_birthday|
      name  = next_birthday.split(',')[0].strip

      date  = next_birthday.split(',')[1].strip
      day   = date.split(' ')[1].to_i
      month = month_values[date.split(' ')[0].downcase]
      year  = next_birthday.split(',')[2].chomp.to_i

      hash[name] = ["#{date}, #{year}", year, month, day]
    end
  end

  hash
end


birthday_hash = make_birthday_hash()

print "Please enter a name : "
name = gets.chomp

puts "#{name} was born on #{birthday_hash[name][0]},"

today         = Time.now
this_year     = today.year

next_birthday = Time.new(this_year, birthday_hash[name][2], birthday_hash[name][3])

if next_birthday < today
  next_birthday = Time.new(this_year + 1, birthday_hash[name][2], birthday_hash[name][3])
end

puts "and will turn #{next_birthday.year - birthday_hash[name][1]} on #{birthday_hash[name][0].split(',')[0].strip}, #{next_birthday.year}."
