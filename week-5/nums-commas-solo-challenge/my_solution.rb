# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
  #positivr integer
# What is the output? (i.e. What should the code return?)
  #comma separated integer as a string
# What are the steps needed to solve the problem?
  #conver integer to a String
  #calculate length
  #based on length, insert comma's


# 1. Initial Solution

def separate_comma(x)

  y = x.to_s

  if (y.length == 4)
    y.insert(1,",")
  elsif (y.length == 5)
    y.insert(2,",")
  elsif (y.length == 6)
    y.insert(3,",")


  elsif (y.length == 7)
    y.insert(1, ",")
    y.insert(5, ",")
  elsif (y.length == 8)
    y.insert(2,",")
    y.insert(6,",")

  else
    return y

  end

  return y

end

puts separate_comma(1000)
puts separate_comma(10000)
puts separate_comma(1000000)
puts separate_comma(100000)


# 2. Refactored Solution




# 3. Reflection

=begin
answer the following questions (make sure everything in this section is commented out in the file).

1. What was your process for breaking the problem down? What different approaches did you consider?
  # i broke it down in two parts
    # find the length
    # then based on length, detemine how many comma's should i use
2. Was your pseudocode effective in helping you build a successful initial solution?
  # Yes
3. What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
  # I used .to_s to convert to String.
  # .insert to place comma's

  # Ruby documentation is extensive and finding appropriate methods for the task is tedious job. After i know what to use and some trial and error in irb worked out for me.

4. How did you initially iterate through the data structure?
  # I did not use iteration. I hard coded values which is not ideal, but does the job for current scope of assignment. I will be curious to get some feedback on this.

5. Do you feel your refactored solution is more readable than your initial solution? Why?
  # i did not refractor. My initial solution worked out for me. Besides some obvious bugs, there wasn't many changes.
=end