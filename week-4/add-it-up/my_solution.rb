# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [Denny Jovic].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input:
# Output:
# Steps to solve the problem.


# 1. total initial solution
def total(numbers)

  i = 0
  numbers.each do |x|
    i = i + x
  end
  return i
end


# 3. total refactored solution


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input:
# Output:
# Steps to solve the problem.


# 5. sentence_maker initial solution
def sentence_maker(strings)

  i = ""
  x = 0

  while (x < strings.length)

    i = i + strings[x].to_s
    i = i + " "
    x += 1

  end

  i = i.strip
  i << "."

  return i.capitalize
end

# puts sentence_maker(["i", "want", "to", "go", "to", "the", "movies"])

puts sentence_maker(["alaska", "has", "over", 586, "thousand", "miles"])
# => "I want to go to the movies."

# 6. sentence_maker refactored solution

# def sentence_maker(strings)
#  strings.join(' ').capitalize << "."
# end

