# Write a program that asks for starting and ending years, and
# then puts() all leap years in that range, inclusive.

puts "<< Print a list of leap years! >>"
puts

print "Starting Year : "
year_start = gets.chomp.to_i
print "Ending Year   : "
year_end = gets.chomp.to_i

for y in year_start..year_end
  if (y%4 == 0 && y%100 != 0) || y%400 == 0
    puts y
  end
end
