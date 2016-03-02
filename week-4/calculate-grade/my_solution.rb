# Calculate a Grade

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def get_grade(grade)

  if (grade >= 90)
    return "A"

  elsif (grade >= 80)
    return "B"

  elsif (grade >= 70)
    return "C"

  elsif (grade >= 60)
    return "D"

  else
    return "F"
  end


end

get_grade(89) # => returns "B", *not* "B+"
get_grade(70) # => returns "C"