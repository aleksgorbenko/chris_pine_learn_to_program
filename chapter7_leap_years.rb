puts "What is the start year?"
start_year = gets.chomp.to_i

puts "What is the end year?"
end_year = gets.chomp.to_i

puts "The end year must be bigger than the start year!" if end_year < start_year
puts ""
puts "Here are the leap years between #{start_year.to_s} and #{end_year.to_s}:" if end_year > start_year

while start_year <= end_year
  puts start_year if start_year % 4 == 0 && start_year % 100 != 0
  puts start_year if start_year % 400 == 0
  start_year += 1
end

