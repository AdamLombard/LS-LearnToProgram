# Write a program that will display a table of contents.
# (Point is to play with center, ljust, and rjust...)

# NOTE: The example in the Appendix is significantly less
# complicated than my version, but I'm leaving this here
# for my own reference. - AL - 2016.09.21

header = "Table of Contents"

title_ch1 = "1:  Getting Started"
title_ch2 = "2:  Numbers"
title_ch3 = "3:  Letters"

chapter = "Chapter"
page = "Page"

pgnum_ch1 = 1
pgnum_ch2 = 9
pgnum_ch3 = 13

pg_width = 60

puts(header.center(pg_width))
puts('')
puts((chapter + ' ' + title_ch1).ljust(pg_width/2) + (page + '   ' + pgnum_ch1.to_s).rjust(pg_width/2))
puts((chapter + ' ' + title_ch2).ljust(pg_width/2) + (page + '   ' + pgnum_ch2.to_s).rjust(pg_width/2))
puts((chapter + ' ' + title_ch3).ljust(pg_width/2) + (page + '  ' + pgnum_ch3.to_s).rjust(pg_width/2))
