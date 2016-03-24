name_bday = {}

File.read("names.txt").each_line do |line|
  line = line.chomp
  date = line[-12..-1]
  comma = 0
    while line[comma].to_s.chr != "," && comma < line.length
      comma += 1
    end

  name = line[0..(comma - 1)]

  name_bday[name] = date
end

puts "Whose Brithday you want to find out?"
name = gets.chomp
date = name_bday[name]

puts date[0..5]
