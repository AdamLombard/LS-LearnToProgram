class Die

  def initialize
    roll
  end

  def roll
    @number_showing = rand(6) + 1
  end

  def showing
    @number_showing
  end

  def cheat(n)
    if n > 0 && n < 7
      @number_showing = n
    end
  end
end

die = Die.new

puts die.roll
puts die.cheat(11)
