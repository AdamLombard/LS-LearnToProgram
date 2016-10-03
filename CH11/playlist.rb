print "How many songs do you want on your list? : "
number_of_songs = gets.chomp.to_i

music_directory = '/Users/Boxie/Music/iTunes/iTunes Media/Music/'
music_files     = Dir["#{music_directory}**/*.m4a"].shuffle

File.open 'playlist.m3u', 'w' do |playlist|
  number_of_songs.times do |num|
    playlist.write music_files[num]+"\n"
  end
end

puts "Done!"
