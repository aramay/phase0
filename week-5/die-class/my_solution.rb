# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input:
# Output:
# Steps:


# 1. Initial Solution
#require Number
class Die
  def initialize(sides)
    # code goes here
    #unless sides.is_a?(Number)
    unless sides > 0
      raise ArgumentError.new("Only numbers are allowed")
    end
    @sides = sides
    puts "initialize Die Class"
  end

  def sides
    # code goes here
    print "side are"
    @sides

  end

  def roll
    # code goes here
    num = Random.new
    puts "Roll the dice #{num.rand(1..sides)}"


  end
end

dice = Die.new(6)

puts " dice.sides #{dice.sides}"
dice.roll

begin
  dice1 = Die.new(-1)
rescue Exception
  puts "exception raised"
end

# 3. Refactored Solution







# 4. Reflection