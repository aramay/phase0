# Count Between

# I worked on this challenge [by myself]

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

def count_between(list_of_integers, lower_bound, upper_bound)
  # Your code goes here!

  count = 0
  i = 0
  x = 0
  print "array #{list_of_integers}"
  puts lower_bound
  puts upper_bound

  if (list_of_integers.length == 0)
    return 0
  end



  list_of_integers.each do |x|
    if (x >= lower_bound and x <= upper_bound)

      count += 1
      puts "count #{count}"
    end
  end

  return count

end

puts count_between([1,2,3], 0, 100)
#puts count_between([-10, 1, 2], 7, 100)
#count_between([], -100, 100)