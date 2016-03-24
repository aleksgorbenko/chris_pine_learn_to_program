# Please note - this method converts only the old Roman numbers
# such as VIIII, it won't recognise IV as 4 or IX as 9.

def roman_to_integer(roman)

  roman = roman.upcase 

  # Counts the occurances of each letter from the input

  num_I = roman.count("I")
  num_V = roman.count("V")
  num_X = roman.count("X")
  num_L = roman.count("L")
  num_C = roman.count("C")
  num_D = roman.count("D")
  num_M = roman.count("M")

  # Assigns values to every Roman letter

  rom_num = { "I" => 1, 
              "V" => 5, 
              "X" => 10,
              "L" => 50,
              "C" => 100,
              "D" => 500,
              "M" => 1000 }

    # Multiplies the value of the letter by number of occurances          


      if roman[0] == "M"
        integer  = num_M * rom_num["M"] + num_D * rom_num["D"] + num_C * rom_num["C"] + num_L * rom_num["L"] + num_X * rom_num["X"] + num_V * rom_num["V"] + num_I * rom_num["I"]
      elsif roman[0] == "D"
        integer = num_D * rom_num["D"] + num_C * rom_num["C"] + num_L * rom_num["L"] + num_X * rom_num["X"] + num_V * rom_num["V"] + num_I * rom_num["I"]

      elsif roman[0] == "C"
        integer = num_C * rom_num["C"] + num_L * rom_num["L"] + num_X * rom_num["X"] + num_V * rom_num["V"] + num_I * rom_num["I"]

      elsif roman[0] == "L"
        integer = num_L * rom_num["L"] + num_X * rom_num["X"] + num_V * rom_num["V"] + num_I * rom_num["I"]

      elsif roman[0] == "X"
        integer = num_X * rom_num["X"] + num_V * rom_num["V"] + num_I * rom_num["I"]

      elsif roman[0] == "V"
        integer = num_V * rom_num["V"] + num_I * rom_num["I"]

      elsif roman[0] == "I"
        integer = num_I * rom_num["I"]
      end


    return integer
end

puts "Tell me any number in Roman System and I will convert it to the Arabic Number!"

number = gets.chomp

if number == number.to_i
  puts "Please use Roman letters M, X, I, and not Arabic Numbers (1, 5, 6)!"
end

puts "Here is your number:"

puts roman_to_integer(number)
