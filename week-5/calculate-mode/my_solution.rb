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
      p "max_count element #{result_array_frequent}"

    # else
    #   # result_array_not_frequent << x
    #   puts "max_count elemnent in else block #{x}"



    #return num

  end

  return result_array_frequent


  # puts result_array_frequent

  # return result_array_frequent

end



 #puts mode([4.5, 0, 0])       # => [0]
 #mode([1,2,3,3])
#mode_result = mode(["who", "what", "where", "who", "where"]) # => ["who"]
# mode_result = mode([4, 4, 5, 5, 6, 6, 6, 7, 5])

mode_result = mode([6, 2, 2, 6])
puts "mode returned results #{mode_result}"
#puts "returned value #{mode_result}"

#most_frequent_list = most_frequent_value(mode_result)

#puts "returned #{most_frequent_list}"

# 3. Refactored Solution




# 4. Reflection