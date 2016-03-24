# Mainly Chris Pine solution

def sorting some_array
  rec_sort some_array, []
end

def rec_sort unsorted, sorted
  if unsorted.length <= 0
    return sorted
  end
  
  smallest = unsorted.pop
  still_unsorted = []

  unsorted.each do |x|
    if x.downcase < smallest.downcase
      still_unsorted << smallest
      smallest = x
    else
      still_unsorted << x
    end
  end
    # Now "smallest" really does point to the
    # smallest element that "unsorted" contained,
    # and all the rest of it is in "still_unsorted".
  sorted << smallest

  rec_sort still_unsorted, sorted
end


words = []
puts "Tell me some words and I will sort them alphabetically!"

  while word = gets.chomp and not word.empty?
    words << word
  end

puts words.sort
puts "...above is the 'sort' method, below is our own method (both results should be the same)..."
puts sorting(words)
