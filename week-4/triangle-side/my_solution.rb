# I worked on this challenge [by myself, with: ].


# Your Solution Below

def valid_triangle?(a, b, c)
  # Your code goes here!

  if(a + b > c and b + c > a and c + a > b)
    return true
  else
    return false
  end

end

puts valid_triangle?(0,0,0) # => false, because a triangle can't have 0-length sides