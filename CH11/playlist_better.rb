# Chris Pine's code, but I wanted to play with it a little... - 2016.10.03
def shuffle(filenames)
  filenames = filenames.sort

  # shuffle twice
  2.times do
    # think of the list of filenames as a deck, with left and right
    # halves. we will shuffle that deck twice, then cut it.
    left_index    = 0
    right_index   = filenames.length/2
    shuffled_list = []

    while shuffled_list.length < filenames.length
      if (shuffled_list.length % 2) == 0
        shuffled_list.push(filenames[right_index])
        right_index += 1
      else
        shuffled_list.push(filenames[left_index])
        left_index += 1
      end
    end

      filenames = shuffled_list
  end

  # cut the "deck"
  array   = []
  cut_pos = rand(filenames.length)

  index   = 0
  while index < filenames.length
    array.push(filenames[(index + cut_pos) % filenames.length])
    index += 1
  end

  array
end

music_directory = '/Users/Boxie/Music/iTunes/iTunes Media/Music/'
music_files     = Dir["#{music_directory}**/*.m4a"]

puts shuffle(music_files)
