class Array
  def shuffle
    self.sort_by{rand}
  end
end

class Integer
  def factorial
    t = 0

    n = self
    while n > 0
      t += n
      n -= 1
    end

    t
  end


  def to_roman
    num = self

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

    roman_translations = [['DCCCC','CM'],
                          ['CCCC', 'CD'],
                          ['LXXXX','XC'],
                          ['XXXX', 'XL'],
                          ['VIIII','IX'],
                          ['IIII', 'IV']]

    roman_translations.each do |bad, good|
      roman_numeral.sub!(bad, good)
    end

    roman_numeral
  end
end


print [1,2,3,4,5,6,7,8].shuffle
puts
print 678.factorial
puts
print 89.to_roman
