def block_repeat &block

  number = Time.new.hour # gets the number of hours passed today

  number.times do # calls the block(parameter) X times depnding on the time of the day
    block.call
  end
end

block_repeat do
  puts "DONG!"
end