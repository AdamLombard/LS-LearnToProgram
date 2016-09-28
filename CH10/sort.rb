def sort the_array
  recursive_sort(the_array, [])
end

def recursive_sort unsorted, sorted
  # if nothing is left unsorted, we're done!
  if unsorted.length <= 0
    return sorted
  end

  # grab the last word
  test_for_smallness  = unsorted.pop
  unsorted_new        = []

  # test each word to find the smallest
  unsorted.each do |word|
    if word < test_for_smallness
      # keep the new word and store the old one
      unsorted_new.push(test_for_smallness)
      test_for_smallness = word
    else
      # store the new word
      unsorted_new.push(word)
    end
  end

  # now we have the smallest word!
  smallest = test_for_smallness
  sorted.push(smallest)

  recursive_sort(unsorted_new, sorted)
end

words_to_sort = ['time', 'hello', 'hello', 'mars', 'joy', 'computer', 'elf', 'lake']

puts sort(words_to_sort)
