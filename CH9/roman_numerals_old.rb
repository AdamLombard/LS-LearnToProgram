def roman_numeral_old num
  roman_values = [['M',1000],
                  ['D',500],
                  ['C',100],
                  ['L',50],
                  ['X',10],
                  ['V',5],
                  ['I',1]]

  roman_numeral = ''

  roman_values.each do |letter, value|
    (num/value).times do
      roman_numeral << letter
    end

    num = num%value
  end

  roman_numeral
end

puts roman_numeral_old(19)
