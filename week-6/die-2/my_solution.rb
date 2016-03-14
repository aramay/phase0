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

    puts labels.length

    if (labels.empty?)
      raise ArgumentError.new ("Only positive numbers are allowed")
    end

    @labels_sides = labels.length
    @labels = labels

    # puts @labels[0]

  end

  def sides
    return @labels

  end

  def roll

    #return Random number between 1 and sides
    # num = Random.new()
    #return num.rand(@label..@sides)

    @labels.sample()



  end
end

# die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])

# die.sides # still returns the number of sides, in this case 6
# die.roll # returns one of ['A', 'B', 'C', 'D', 'E', 'F'], randomly

begin
  dice1 = Die.new()
rescue ArgumentError
  puts "exception raised"
end

# Refactored Solution








# Reflection
