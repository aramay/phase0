# Largest Integer

# I worked on this challenge [by myself, with: ].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def largest_integer(list_of_nums)
  # Your code goes here!

  #assume first index is largest
  largest_num = list_of_nums[0]
  i = 0
  #lenght of array
  length = list_of_nums.length


  while (i < length)
    #compare first index to largest_num
    if(list_of_nums[i] > largest_num)
      #if true assign new largest
       largest_num = list_of_nums[i]
    end

    i = i + 1

  end
  return largest_num

end

puts largest_integer([-10, -20, -30])