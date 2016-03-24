# Chris Pine shuffle method + my playlist tool

def shuffle arr
  shuf = []

  while arr.length > 0
    # Randomly pick one element of the array.
    rand_index = rand(arr.length)

    # Now go through each item in the array,
    # putting them all into new_arr except for the
    # randomly chosen one, which goes into shuf.
    curr_index = 0 
    new_arr = []

    arr.each do |item| 
      if curr_index == rand_index
        shuf << item
      else
        new_arr << item
      end

      curr_index = curr_index + 1
    end

    # Replace the original array with the new,
    # smaller array.
    arr = new_arr
  end

  shuf
end

Dir.chdir '/Users/Kucher/Desktop/playlist test/'

song_names = shuffle(Dir['/Users/Kucher/Desktop/playlist test/*.flac'])

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