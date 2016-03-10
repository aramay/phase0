# Calculate the mode Pairing Challenge

# I worked on this challenge [with: Jason Milfred]

# I spent [1] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# What is the input?
  # an Array of numbers or Strings
# What is the output? (i.e. What should the code return?)
  # Return an Array of most frequent values
    # Returns an Array if there is only one most frequent values.

# What are the steps needed to solve the problem?
  # Store an Array into a Hash
  # Store Array elements as Keys
  # Store frequency of elements as Values

  # Return an array with most frequent values
  # Else
    # Return an original array if there is only one most frequent value.


# 1. Initial Solution
require "pry"
def mode(num)


  new_num = {} #Hash to store array elements
  count = 1 # default value for keys

  max_count = 0

  num.each do |x|

    if new_num.has_key?(x)
      new_num[x] += 1
    else
      new_num.store(x, count)
    end

  end

  #calculate most frequent values

  result_array_frequent = []

  #iterate over hash
  new_num.each do |x, y|
    if (y > max_count)

      #empty array if new max value is found
      result_array_frequent = []
    end

    #second if block to find more than one repeating values
    if(y >= max_count)
      max_count = y

      result_array_frequent << x
    end

  end

  return result_array_frequent
end


mode_result = mode([6, 2, 2, 6])

# 3. Refactored Solution

# i refactored my initial solution.


# 4. Reflection

=begin
1. What was your process for breaking the problem down? What different approaches did you consider?
  # I go over the instructions and did it into parts. Then i would divide it into sub-parts to get from one point to other.

2. Was your pseudocode effective in helping you build a successful initial solution?
  # Yes
3. What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc).
  # I used ".store" and "has_key?" methods for Hash data structure.

4. Did it/they significantly change the way your code works? If so, how?
  # .store simplefied my code my just passing values to this method. Without .store method, i was using hash index to store key/values.

5. How did you initially iterate through the data structure?
  # .each - method lets you access array elements without interacting with indexes.

6. Do you feel your refactored solution is more readable than your initial solution? Why?

  # on-line 41 - my logic to store array elements was a bit off
  if new_num.has_key?(x)
      new_num[x] = 1 + 1 => this was a bug where elements more than 2 were counted as 2
      new_num[x] += 1 (fix) => simple fix was in logic, increment it by 1, not add 1
    else
      new_num.store(x, count)
    end

  # on-line-54 - my logic to find frequency of values
  new_num.each do |x, y|
    if (y > max_count)
      max_count = y

      #empty array if new max value is found
      result_array_frequent << x
    end

    # This logic would capture only 1 frequencies, not more than 1.

    #Fixed it with second if statement

    if (y > max_count)

      #empty array if new max value is found
      result_array_frequent = []
    end

    if(y >= max_count)
      max_count = y

      result_array_frequent << x
    end
  end


=end
