# Chapter 2 Exercises

# How many hours are in a year?
hours_in_year = 24 * 365
hours_in_year_leap = 24 * 366
puts "There are #{hours_in_year} hours in one typical year, and #{hours_in_year_leap} in one leap year."

# How many minutes are in one decade?
minutes_in_decade_leap_two = (hours_in_year * 60 * 8) + (hours_in_year_leap * 60 * 2)
minutes_in_decade_leap_three = (hours_in_year * 60 * 7) + (hours_in_year_leap * 60 * 3)
puts "There are #{minutes_in_decade_leap_two} minutes in decades with two leap years, and #{minutes_in_decade_leap_three} in decades with three leap years."

# How many seconds ago did we land on the moon?
time_of_landing = Time.utc(1969, 7, 20, 20, 18)
seconds_since_landing = Time.now - time_of_landing
puts "It has been #{seconds_since_landing} seconds since we landed on the moon."

# How old is our dear author?
age_in_seconds = 1_160_000_000
age_in_years = age_in_seconds / (60 * 60 * 24 * 365)
puts "Our dear author is #{age_in_years} years old!"
