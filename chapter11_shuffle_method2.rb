def music_shuffle song_names
  shuf = []

  song_names = song_names.sort
  len = song_names.length

  2.times do
    l_indx = 0
    r_indx = len/2

    while shuf.length < len
      if shuf.length%2 == 0
        shuf << song_names[r_indx]
        r_indx += 1
      else
        shuf << song_names[l_indx]
        l_indx += 1
      end
    end

    song_names = shuf
  end

  arr = []
  cut = rand(len)
  indx = 0

  while indx < len
    arr << song_names[(indx+cut)%len]
    indx += 1
  end

  arr
end

#test on my previous folder with some songs

Dir.chdir '/Users/Kucher/Desktop/playlist test/'

song_names = music_shuffle(Dir['/Users/Kucher/Desktop/playlist test/*.flac'])

puts "What would you like to call this playlist?"

playlist_name = gets.chomp

puts ""
print "Compiling #{song_names.length} songs into a '#{playlist_name}' playlist"

filename = "#{playlist_name}.m3u"

File.open filename, 'w' do |song|
  song_names.each do |name|
    song.write name+"\n"
  end
end

puts
puts "Playlist '#{playlist_name}' created Successfully!"