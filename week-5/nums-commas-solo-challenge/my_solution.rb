# Numbers to Commas Solo Challenge

# I spent [4] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
  #positivr integer
# What is the output? (i.e. What should the code return?)
  #comma separated integer as a string
# What are the steps needed to solve the problem?
  #convert integer to a String
  #calculate length
  #based on length, insert comma's


# 1. Initial Solution
=begin
require 'pry'
def separate_comma(x)

  puts number_to_string = x.to_s

  puts number_to_array = number_to_string.split(//).reverse

  result_array = []

  #binding.pry
  number_to_array.each_slice(3) do |x|
    #result_array = x


    if x.length < 3

      result_array << x
      p result_array

    end

    if x.length == 3
      if (x.include?("1"))
        result_array << x

        break

      end

      result_array << x
      result_array.insert(-1, ",")

    end
  end

  result_array = result_array.flatten.join.reverse

  p "#{result_array}"

end
#puts separate_comma(10000000)
#puts separate_comma(100)
#puts separate_comma(1000) #- works
#puts separate_comma(10000) #- works
#puts separate_comma(1000000) #- works
#puts separate_comma(100000) #workds
puts separate_comma(999999)
=end

# 2. Refactored Solution

def separate_comma(x)

  #convert to string
  puts number_to_string = x.to_s

  #conver to array
  puts number_to_array = number_to_string.split(//).reverse

  result_array = []

  #slice in 3 parts
  number_to_array.each_slice(3) do |x|

      result_array << x
      #insert at end of array
      result_array.insert(-1, ",")
  end

  #take substring
  result_array = result_array.flatten.join.reverse[1..-1]

  p "#{result_array}"

end

# 3. Reflection

=begin
answer the following questions (make sure everything in this section is commented out in the file).

1. What was your process for breaking the problem down? What different approaches did you consider?
  # .slice array in group of 3
  # append array backwards
  # return sub-string [1..-1]
2. Was your pseudocode effective in helping you build a successful initial solution?
  # Yes
3. What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
  # I used .slice to group in 3 equal parts
  # .split(//)
  # .flatten

  # Ruby documentation is extensive and finding appropriate methods for the task is tedious job. After i know what to use and some trial and error in irb worked out for me.

4. How did you initially iterate through the data structure?
  # I used .each_slice to iterate

5. Do you feel your refactored solution is more readable than your initial solution? Why?
  # Yes, number of lines are reduced.
=end