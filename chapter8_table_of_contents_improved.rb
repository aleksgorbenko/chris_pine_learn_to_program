words = []
puts "tell me something"

while word = gets.chomp and not word.empty?
  words.push(word)
end
puts words.sort


#Chapter 1:  Numbers                        page 1
#Chapter 2:  Letters                       page 72
#Chapter 3:  Variables                    page 118

lineWidth = 80

contents = ["Table of Contents", "Chapter 1: Numbers", "page 1", "Chapter 2: Letters", "page 72", "Chapter 3: Variables", "page 118"]


puts contents[0].center(lineWidth)
puts contents[1].ljust(lineWidth/2) + contents[2].rjust(lineWidth/2)
puts contents[3].ljust(lineWidth/2) + contents[4].rjust(lineWidth/2)
puts contents[5].ljust(lineWidth/2) + contents[6].rjust(lineWidth/2)

