# Calculate the mode Pairing Challenge

# I worked on this challenge [with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

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

def mode(numbers)

  new_numbers = {}

  max_num = 1 #to count frequency

  result_array = [] #result array of most frequent values

  numbers.each do |x|

    if (new_numbers.has_key?(x))
      new_numbers[x] += 1
    else
      new_numbers.store(x, 1)

    end
  end

  puts new_numbers

  # count frequency of elements

  new_numbers.each do |x, y|

    puts "key #{x} value #{y}"

    if(y > max_num)
      #max_num = y

      puts "if block "

      result_array = []
    end

     if(y >= max_num)
      max_num = y

      puts "if block "

      result_array << x
    end

  end
  puts "results #{result_array}"
  return result_array

  puts numbers


end

a1 = [1,2,2,3,3,3]

mode(a1)



# 3. Refactored Solution




# 4. Reflection