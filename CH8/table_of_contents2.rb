table_of_contents = [ [1, "Getting Started",  1],
                      [2, "Numbers",          9],
                      [3, "Letters",          13] ]

left_col    = 30
right_col   = 20
pg_width    = left_col + right_col


puts "Table Of Contents".center(pg_width)
table_of_contents.each do |chapter, title, page|
  puts "Chapter #{chapter}:  #{title}".ljust(left_col) + "Page #{page.to_s.length == 2 ? page : " #{page}"}".rjust(right_col)
end
