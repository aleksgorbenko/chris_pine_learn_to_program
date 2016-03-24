random1 = rand(1930..1950).to_s
random2 = rand(1931..1950).to_s
random3 = rand(1929..1950).to_s
puts "What would you like to say to grandma?"
say_grandma1 = ""
say_grandma2 = ""
say_grandma3 = ""
    
    while say_grandma1 != "BYE" || say_grandma2 != "BYE" || say_grandma3 != "BYE"

      while say_grandma1 != "BYE"
        say_grandma1 = gets.chomp

          if say_grandma1 == say_grandma1.upcase
            puts "No, not since #{random1}!"
          else
            puts "HUH?! SPEAK UP, SONNY!"
          end

          if say_grandma1 != "BYE"
             say_grandma2 = ""
             say_grandma3 = ""
          end
      end

      while say_grandma2 != "BYE"
        say_grandma2 = gets.chomp

            if say_grandma2 == say_grandma2.upcase
              puts "No, not since #{random2}!"
            else
              puts "HUH?! SPEAK UP, SONNY!"
            end

            if say_grandma2 != "BYE"
               say_grandma1 = ""
               say_grandma3 = ""
            end
      end
        
      while say_grandma3 != "BYE"
        say_grandma3 = gets.chomp

            if say_grandma3 == say_grandma3.upcase
              puts "No, not since #{random3}!"
            else
             puts "HUH?! SPEAK UP, SONNY!"
            end

            if say_grandma3 != "BYE"
               say_grandma1 = ""
               say_grandma2 = ""
            end
      end

      if say_grandma1.upcase == "BYE" && say_grandma2.upcase == "BYE" && say_grandma3.upcase == "BYE"
        puts "GO TO HELL SONNY!"
        break
      end
    end

# another way to solve it


puts "what do you need!?".upcase
year = 1900
answer = ""
bye_count = 0

while true
  answer = gets.chomp
    if answer == answer.downcase
      puts "speak up sonny!".upcase
      bye_count = 0
    elsif answer == "BYE"
      bye_count = bye_count + 1
    else
      puts "No not since #{year + rand(50)}!".upcase
      bye_count = 0
    end
    if bye_count == 3
      puts "GO TO HELL SONNY!"
      break
    end
end



