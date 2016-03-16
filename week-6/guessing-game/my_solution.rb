# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [2] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution
=begin
class GuessingGame

  def initialize(answer)
    # Your initialization code goes here

    @answer = answer
  end

  def guess(guess1)

    if (guess1 > @answer)

      @result = :high

    elsif (guess1 < @answer)

      @result = :low

    else
      @result = :correct

    end

  end

  def solved()

    return @result


    # Make sure you define the other required methods, too
  end

end

num = GuessingGame.new(3)

num.guess(4)

puts num.solved

#puts num.guess
=end


# Refactored Solution

class GuessingGame

  def initialize(answer)
    #initialize with an integer
    @answer = answer
  end

  def guess(guess)
    #return high if guess is larger than the answer
    if (guess > @answer)

      @result = :high
    #return low if guess is less than the answer
    elsif (guess < @answer)

      @result = :low
    #return correct if guess is equal to answer
    else

      @result = :correct
    end

  end

  def solved?()

    #if the most recent guess was correct, return true
    if (@result == :correct)
      return true
    #else, return false
    else
      return false
    end

  end

end

#sanity test
num = GuessingGame.new(3)

puts num.guess(4)
puts num.solved?

puts num.guess(3)
puts num.solved?




# Reflection
=begin

answers the following questions:

1. How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
  # We just created a game between two people, second person being the computer. I implemented a method verify a user guess and confirm if guess was correct or not.

2. When should you use instance variables? What do they do for you?
  # Instance varaibles allow you to move values between your methods with-in your class. This way we are not limited to using those values in one method, and computations performed in one method can be used in other methods to solve a bigger problem.

3. Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
  # Flow controll is checking for certain condition to be met. Based on that condtion we can choose which code to execute and which not. solved?() that i implemented in this challenge is an example.
  # I struggled with logic to implement solved? method - i didn't realize that i can use @result and compare it's value captured in guess() method.

4. Why do you think this code requires you to return symbols? What are the benefits of using symbols?
  # Symbols are used as contants. In this case we are using them to compare user input with expected results which will never change through out life cycle of this program.

=end
