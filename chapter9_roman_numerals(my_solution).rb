def old_roman(number)
  roman_number = ""
  while number >= 1
      if number % 1000 == 0
        number -= 1000
        roman_number += "M"
        next
      elsif number % 500 == 0
        number -= 500
        roman_number += "D"
        next
      elsif number % 100 == 0
        number -= 100
        roman_number += "C"
        next
      elsif number % 50 == 0
        number -= 50
        roman_number = "L"
        next
      elsif number % 10 == 0
        number -= 10
        roman_number += "X"
        next
      elsif number % 5 == 0
        number -= 5
        roman_number += "V"
        next
      else
        number -= 1
        roman_number += "I"
      end
  end
  return roman_number.to_s.reverse
end  

puts "type in any number between and I will convert it to the old Roman Numeric System!"
input = gets.chomp.to_i
puts "And...your Roman number is..."
puts old_roman(input)