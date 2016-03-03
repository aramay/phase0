# Concatenate Two Arrays

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def array_concat(array_1, array_2)
  # Your code here

  a1 = Array.new(0)

  a1 = array_1.concat(array_2)
  return a1

end

puts array_concat([1,2,3], [4,5,6])
puts array_concat([10], [10])
puts array_concat(['cat', 1], [2])
