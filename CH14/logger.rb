$nest = 0

def log(description, &block)
  puts "#{' '*$nest}#{description} has started...."
  $nest += 1
  value = block.call
  $nest -= 1
  puts "#{' '*$nest}#{description} has finished... Returned : #{value}"
end

log "level 1" do
  log "level 2" do
    log "level 3" do
      3
    end
    2
  end
  1
end
