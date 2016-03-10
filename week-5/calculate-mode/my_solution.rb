# Calculate the mode Pairing Challenge

# I worked on this challenge [with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
require "pry"
def mode(num)


  new_num = {}
  count = 1

  max_count = 0
#binding.pry
  num.each do |x|
    #puts "array is #{x}"

    if new_num.has_key?(x)
      new_num[x] += 1
      #puts "increment hash #{new_num[x]}"
    else
      new_num.store(x, count)
    end

    puts "new hash with frequent_values #{new_num}"

  end

  #calculate most frequent values

   result_array_frequent = []
  # result_array_not_frequent = []

  #binding.pry

  new_num.each do |x, y|
    puts "hash key #{x} value #{y}"
    if (y > max_count)

      #result_array_frequent << x
      result_array_frequent = []
    end

    if(y >= max_count)
      max_count = y

      result_array_frequent << x
    end
      #p "max_count element #{result_array_frequent}"


  end

  return result_array_frequent
end


mode_result = mode([6, 2, 2, 6])
puts "mode returned results #{mode_result}"

# 3. Refactored Solution




# 4. Reflection

=begin
What was your process for breaking the problem down? What different approaches did you consider?
Was your pseudocode effective in helping you build a successful initial solution?
What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
How did you initially iterate through the data structure?
Do you feel your refactored solution is more readable than your initial solution? Why?

=end
