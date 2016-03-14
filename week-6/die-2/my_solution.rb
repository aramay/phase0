# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [2] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution

class Die
  def initialize(labels)

    unless (labels.length <= 0)
      raise ArgumentError.new ("Only positive numbers are allowed")
    end

    @labels = labels

  end

  def sides

  end

  def roll
  end
end

die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
die.sides # still returns the number of sides, in this case 6
die.roll # returns one of ['A', 'B', 'C', 'D', 'E', 'F'], randomly

begin
  dice1 = Die.new()
rescue ArgumentError
  puts "exception raised"
end

# Refactored Solution








# Reflection
