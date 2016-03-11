# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [2] hours on this challenge.

# 0. Pseudocode

# Input:
  #number of sides for Dice
# Output:
  #Random number between 1 to number of sides
# Steps:
  # IF
    #sides is less than 0
    #do not proceed
  #ELSE
    #return Random number between 1..number of sides
  #END


# 1. Initial Solution

# class Die
#   def initialize(sides)
#     # code goes here
#     #unless sides.is_a?(Number)
#     unless sides > 0
#       raise ArgumentError.new ("Only positive numbers are allowed")
#     end

#     @new_sides = sides
#     puts "initialize Die Class"

#   end

#   def sides
#     # code goes here
#     puts "side are #{@new_sides}"
#     return @new_sides

#   end

#   def roll
#     # code goes here
#     num = Random.new()
#     puts "Roll the dice" #{num.rand(1..@new_sides)}"
#     #puts "Roll the dice #{rand(1..@new_sides)}"

#     return num.rand(1..@new_sides)
#   end

# end

# dice = Die.new(100)

# puts "dice.sides" #{dice.@new_sides}"
# dice.roll

# begin
#   dice1 = Die.new()
# rescue ArgumentError
#   puts "exception raised"
# end

# 3. Refactored Solution

class Die
  def initialize(sides)

    #raise exception if sides < 0
    unless sides > 0
      raise ArgumentError.new ("Only positive numbers are allowed")
    end

    #create class instance variable
    @sides = sides

  end

  def sides
    #return sides instance
    return @sides

  end

  def roll

    #return Random number between 1 and sides
    num = Random.new()
    return num.rand(1..@sides)

  end

end

#sanity test
dice = Die.new(100)

puts "dice.sides"
dice.roll

#catch an exception
begin
  dice1 = Die.new()
rescue ArgumentError
  puts "exception raised"
end

# 4.
=begin
Release 5:Reflection

answer the following questions in:

1. What is an ArgumentError and why would you use one?
  # ArgumentError is type of an exception that Ruby handles for unacceptable behavior. ArgumentError is caused by using wrong number of arguments.
2. What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
  # I used .rand(1..10) to generate random numbers.
3. What is a Ruby class?
  # A class is structure for creating objects, providing initial valure for state and implementing behaviour through method.
4. Why would you use a Ruby class?
  # Defining a class lets you group behaviors (methods) in a bundle. This way, we can create objects that behave the same way.
  Classes are defined with 'class' keyword.
5. What is the difference between a local variable and an instance variable?

  # Local Variables:
  Variables that are defined within a method. Their scope is limited to methods in which they are defined.

  #Instance Variables
  An instance variable initialized in one method inside a class can be used any method defined within that class.

  we use '@' to recognize an instance varaible.

6. Where can an instance variable be used?
  # Instance varaibles can be used with-in a class by any method.

=end