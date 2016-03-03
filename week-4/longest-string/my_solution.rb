# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
 # Your code goes here!

  #assume shortest_word is at index 0
  shortest_word = list_of_words[0]
  i = 0

  while (i < list_of_words.length)
    #compare shortest_word.lenght with list_of_words.length
    if (shortest_word.length < list_of_words[i].length)
      #assign new shortest_word
      shortest_word = list_of_words[i]
    end

    i += 1

  end

  return shortest_word

end


puts longest_string(['cat', 'zzzzzzz', 'apples'])  # => "cat"