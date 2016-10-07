class OrangeTree

  def initialize
    @age          = 0
    @height       = 2
    @orange_count = 0
  end

  def one_year_passes
    @age          += 1
    @height       += 3
    @orange_count  = 0

    if @age > 2
      @orange_count = @age
      puts "A fresh crop!"
    end

    if @age > 5
      puts "Your tree has died. It was #{@height}ft tall."
    end
  end

  def count_oranges
    puts "Your tree has #{@orange_count} oranges."
  end

  def pick_an_orange
    if @orange_count > 0
      puts "Yum!"
      @orange_count -= 1
    else
      puts "There are no more oranges this year..."
    end
  end
end
