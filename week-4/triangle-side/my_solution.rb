=begind
# I worked on this challenge [by myself, with: ].

Theorem:
the sum of two sides of a triangle must be greater than the third side. If this is true for all three combinations, then you will have a valid triangle.

# Your Solution Below
=end

def valid_triangle?(a, b, c)
  # Your code goes here!

  if(a + b > c and b + c > a and c + a > b)
    return true
  else
    return false
  end

end

puts valid_triangle?(0,0,0) # => false, because a triangle can't have 0-length sides