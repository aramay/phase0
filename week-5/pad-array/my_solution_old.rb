# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

require "pry"
# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  # Your code here

  #copy array into new_array - destructuve
  new_array = array

  #if array length is less than
  if (array.length < min_size)
    #calculate pad size
    pad_size = min_size - array.length

    for x in 1..pad_size
      new_array.push(value)
    end

  #return new array
  else
    p new_array
  end

  return new_array


end



def pad(array, min_size, value = nil) #non-destructive
  # Your code here

  #create a new array
  new_array = Array.new(array)


  #if array length is less than
  if (array.length < min_size)
    #calculate pad size
    pad_size = min_size - array.length

    for x in 1..pad_size
      new_array.push(value)
    end
  else
    p new_array
  end

  return new_array

end


a1 = [1,2,3]
size = 5
value = "apple"

puts pad(a1, size, value)


# 3. Refactored Solution



# 4. Reflection

=begin

answers the following questions:

Were you successful in breaking the problem down into small steps?
Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
When you refactored, did you find any existing methods in Ruby to clean up your code?
How readable is your solution? Did you and your pair choose descriptive variable names?
What is the difference between destructive and non-destructive methods in your own words?


=end