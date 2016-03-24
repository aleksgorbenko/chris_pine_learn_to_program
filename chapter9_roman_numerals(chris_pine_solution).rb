def old_roman_number (num)
  thous = (num        /1000)
  hunds = (num % 1000 / 100)
  tens  = (num % 100  /  10)
  ones  = (num % 10        )

  roman = "M" * thous

  if hunds == 9
    roman = roman + "CM"
  elsif hunds == 4
    roman = roman + "CD"
  else
    roman = roman + "D" * (num % 1000 / 500)
    roman = roman + "C" * (num % 500 / 100)
  end

  if tens == 9
    roman = roman + "XC"
  elsif tens == 4
    roman = roman + "XL"
  else
    roman = roman + "L" * (num % 100 / 50)
    roman = roman + "X" * (num % 50 / 10)
  end

  if ones == 9
    roman = roman + "IX"
  elsif ones == 4
    roman = roman + "IV"
  else
    roman = roman + "V" * (num % 10 / 5 )
    roman = roman + "I" * (num % 5 / 1  )
  end
  return roman
end


puts "type in any number between and I will convert it to the Modern Roman Numeric System!"
input = gets.chomp.to_i
puts "And...your Roman number is..."
puts old_roman_number(input)
      




=begin 
        _just for the reference_
I = 1 
V = 5 
X = 10
L = 50
C = 100
D = 500
M = 1000

=end