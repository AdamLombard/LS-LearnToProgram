def numeral_to_integer(numeral)
  roman_val =  {'i' =>    1,
                'v' =>    5,
                'x' =>   10,
                'l' =>   50,
                'c' =>  100,
                'd' =>  500,
                'm' => 1000}

  last_pos  = numeral.length
  total_val = 0
  prev_val  = 0

  while last_pos > 0
    char  = numeral[last_pos-1].downcase
    int   = roman_val[char]

    if int < prev_val
      total_val -= int
    else
      total_val += int
    end

    prev_val = int
    last_pos -= 1
  end

  total_val
end

puts numeral_to_integer('MMMMCMLXXXIII')
