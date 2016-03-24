require "yaml"

array = [true, 321312, "true", "321312",["yaml", "21", 21, ["array in array"]]]

test_string = array.to_yaml

filename = "yamltest.txt"

File.open filename, 'w' do |array|
  array.write test_string
end


read_string = File.read filename

puts(read_string == test_string)