#Write an Angry Boss program. It should rudely ask what you want. Whatever you answer, the Angry Boss should yell it back to you, and then fire you. 

puts "What do you want?"

answer = gets.chomp

puts "WHAT DO YO MEAN '#{answer}'?!? YOU ARE FIRED!!"


#Write a program which will display a Table of Contents so that it looks like this:

#                Table of Contents                
                                                 
#Chapter 1:  Numbers                        page 1
#Chapter 2:  Letters                       page 72
#Chapter 3:  Variables                    page 118

lineWidth = 80

puts "Table of Contents".center(lineWidth)
puts "Cahpter 1: Numbers".ljust(lineWidth/2) + "page 1".rjust(lineWidth/2)
puts "Cahpter 2: Letters".ljust(lineWidth/2) + "page 72".rjust(lineWidth/2)
puts "Cahpter 3: Variables".ljust(lineWidth/2) + "page 118".rjust(lineWidth/2)


