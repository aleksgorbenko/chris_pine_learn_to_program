puts "What is the year of your birth?"

year = gets.chomp.to_i

puts "Month? Please use the number of the month"

month = gets.chomp.to_i

puts "Day?"

day = gets.chomp.to_i
now = Time.new
user_age = Time.local(year, month, day)

age_seconds = (now - user_age).round

puts "Here is some info about you:"
puts "You are #{age_seconds} seconds old! And..."
  if age_seconds > 10 ** 9
    puts "Whoa! Did you know that you are actually more than 1 billion seconds old? In fact you have turned 1 bln seconds #{(age_seconds - (10 ** 9))/(60*60*24)} days ago!
  "
  else
    puts "You are not that old yet! You will turn 1 bln seconds (thats #{(10 ** 9)/(60*60*24*365)} years old) in #{(10 ** 9 - age_seconds)/(60*60*24)} days from now!"
  end
puts "Press enter for another surprise!"
enter = gets.chomp

age = (age_seconds / (60*60*24*365)).round

  age.times do
    puts "HIGH FIVE!"
  end
 puts "Here is a 'HIGH FIVE!' for every year you are alive! You are #{age}, right? :)"

