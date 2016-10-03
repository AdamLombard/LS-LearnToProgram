destination_path = './practice/album'

pic_names = Dir['./practice/camera/*.{JPG,jpg}']

# find all pictures
puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "

pic_number = 1

pic_names.each do |original_path|
  print '.'

  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end

  new_path = destination_path + '/' + new_name

  # this isn't right yet
  if File.exist?(new_path)
    # Obviously, something much more interesting could be done here...
    puts
    puts "#{new_path} already exists. Terminating."
    exit
  else
    File.rename(original_path, new_path)
  end

  pic_number = pic_number + 1
end

puts
puts 'Done!'
