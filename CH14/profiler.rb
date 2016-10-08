$PROFILE_ON = false
def profile(block_description, &block)
  if $PROFILE_ON
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
  else
    block.call
  end
end
