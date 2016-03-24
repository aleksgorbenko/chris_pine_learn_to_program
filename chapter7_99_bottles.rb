puts "how many bottles on the wall?"
bottles = gets.chomp.to_i

  while bottles != 0 
    puts "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer."
    puts "Take one down and pass it around, #{bottles - 1} bottles of beer on the wall."
    bottles -= 1

    if bottles == 0
      break
  end
end






