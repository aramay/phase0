# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [2] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution
=begin

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
    return @labels_sides

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

=end

# Refactored Solution

class Die
  def initialize(labels)

    #raise exception if list if empty
    if (labels.empty?)
      raise ArgumentError.new ("Only positive numbers are allowed")
    end

    #calculate number of sides
    @labels_sides = labels.length
    #copy list to instance varaible
    @labels = labels

  end

  def sides
    #return dice sides
    return @labels_sides

  end

  def roll
    #return one of array value randomly
    @labels.sample()

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


# Reflection

=begin
answers the following questions:

1. What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
  # In this class we are passing argument as an array.
  # Each element in an array represents a side of die. Based on that, we can calculate the number of sides
2. What does this exercise teach you about making code that is easily changeable or modifiable?
  # Classes allow instance varaibles to be used across different methods.
  # Methods divide your code into logical groups.
  # Different parameters can be used to change the behaviour of methods.

What new methods did you learn when working on this challenge, if any?
  # .sample - array method to return random value
What concepts about classes were you able to solidify in this challenge?
  # I have struggled with exception handling in past, hopefully i can get past it now.

=end
