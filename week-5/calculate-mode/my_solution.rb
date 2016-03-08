# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

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
  count = 0

  num.each do |x|
    new_num[x] = count
  end


  new_num.each do |x, y|
    binding.pry
    if new_num.has_key?(x)
      puts "yes"
      #new_num[x]
      new_num[x] += 1
      #puts " key #{new_num[x]} value #{new_num[y]}"
      puts "key #{x} value is #{y} "
    end
  #puts new_num.has_key?(4.5)
  #   puts "yes"
  end

  puts new_num


end

 puts mode([4.5, 0, 0])       # => [0]

# 3. Refactored Solution




# 4. Reflection