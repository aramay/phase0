# Simple Substrings

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def welcome(mesg)

  words = mesg.split(" ")
  found = false
  #puts words

  words.each do |x|
    puts "processing #{x}"

    if (x == "CA")
      found = true

      break

    end

  end

  if found
    return "Welcome to California"
  else
    return "You should move to California"
  end


end

puts welcome("Welcome to California")