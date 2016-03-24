# I could not test it with the mounted SD card as in that case File.rename method does not work.

Dir.chdir '/Users/Kucher/Desktop/pic-rename/' # my test folder

pic_names = Dir['/Users/Kucher/Desktop/test/*.JPG'] # my test folder

puts "What would you like to call this batch?"

batch_name = gets.chomp

puts ""
print "Downloading #{pic_names.length} files"

pic_number = 1

pic_names.each do |name|
  print '..'

  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end

  if File.exist? new_name
    puts
    puts "You are trying to overwrite the files, process is aborted!"
    abort
  else
    File.rename name, new_name
  end
  pic_number += 1
end

puts
puts "Transfer complete!"