# Factorial

# I worked on this challenge [Denny Jovic].

=begin
  The factorial of a number is the product of all integers from 1 up to that number. For example:

factorial(5) == 5 * 4 * 3 * 2 * 1 == 120
=end

# Your Solution Below
def factorial(number)
  # Your code goes here

  i = number
  answer = 1

  while (i > 0)
    #decrement i by 1 and multiply by number
    answer = answer * i
    #decrement i to exit loop
    i -= 1
  end
  #return answer
  return answer
end

puts factorial(5)
puts factorial(0)
