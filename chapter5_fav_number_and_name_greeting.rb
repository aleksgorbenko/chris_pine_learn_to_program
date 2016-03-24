puts "What is your name?"

name = gets.chomp

puts "What is your surname?"

surname = gets.chomp

puts "any middle names?"

middlename = gets.chomp

puts "thats cool - you got #{name.length + surname.length + middlename.length} characters in your name!"

# next task - to ask for the favorite number

puts "What is your favourite number?"

number =  gets.chomp

puts "oh that's a nice number, although i think #{number.to_i + 1} would be  a better favorite number"
