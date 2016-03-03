# Smallest Integer

# I worked on this challenge [by myself, with: ].

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
require 'pry'
def smallest_integer(list_of_nums)
  # Your code goes here!

  #assume first index is smallest
  smallest_num = list_of_nums[0]
  i = 0
  #lenght of array
  length = list_of_nums.length


  while (i < length)
    #compare first index to smallest_num
    if(list_of_nums[i] < smallest_num)
      #if true assign new smallest
       smallest_num = list_of_nums[i]
    end

    i = i + 1

  end
  return smallest_num

end

smallest_integer([-10, -20, -30])