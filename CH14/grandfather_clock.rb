def clock(&block)
  hours = Time.new.hour

  if hours > 12
    hours = hours - 12
  elsif hours == 0
    hours = 12
  end

  hours.times do
    block.call
  end
end

clock do
  puts "Chime!"
end
