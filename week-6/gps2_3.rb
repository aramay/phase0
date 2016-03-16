# Your Names
# 1) Kunal Patel
# 2)Abid Ramay

# We spent [1] hours on this challenge.

# Bakery Serving Size portion calculator.
# require "pry"

# # binding.pry
# def serving_size_calc(item_to_make, num_of_ingredients)
#   library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
#   error_counter = 3

#   library.each do |food|
#     if library[food] != library[item_to_make]
#       error_counter += -1
#     end
#   end

#   if error_counter > 0
#     raise ArgumentError.new("#{item_to_make} is not a valid input")
#   end

#   serving_size = library.values_at(item_to_make)[0]
#   remaining_ingredients = num_of_ingredients % serving_size

#   case remaining_ingredients

#   when 0
#     return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
#   else
#     return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
#   end
# end

# # p serving_size_calc("pie", 7)
# # p serving_size_calc("pie", 8)
# p serving_size_calc("cake", 5)
# p serving_size_calc("cake", 7)
# p serving_size_calc("cookie", 1)
# p serving_size_calc("cookie", 10)
# # p serving_size_calc("THIS IS AN ERROR", 5)


# Refactored

def serving_size_calc(item_to_make, people_to_feed)

  menu = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  unless menu.has_key?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  serving_size = menu[item_to_make]
  hungry_people = people_to_feed % serving_size

  case hungry_people

  when 0
    return "Calculations complete: Make #{people_to_feed / serving_size} of #{item_to_make}"
  else
    # return "Calculations complete: Make #{(people_to_feed / serving_size)+1} of #{item_to_make}"
    return "Calculations complete: Make #{people_to_feed / serving_size} of #{item_to_make} and #{hungry_people} cookies"

 #of #{item_to_make}, you have #{hungry_people} left to feed. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("pizza", 5)
p serving_size_calc("THIS IS AN ERROR", 5)


#  Reflection


=begin
Answer the following questions in your reflection:

1. What did you learn about making code readable by working on this challenge?
  # We learned that approriate varaible names can avoid a lot of mis-understanding. Following that, it has to resonate with method name. e.g. in this challenge method name - serving_size_calc - calculates serving size of items e.g cake
  Then it was calculating number of people it can feed. The varaible name to store this value was - num_of_ingredients - which is different from calculating number of people to feed.

2. Did you learn any new methods? What did you learn about them?
  # I learned about "values_at" which return an array of key-> values for a Hash
  # I learned how "unless" is used. This was very confusing for me. So basically, it's the opposite of "if" statement. "unless" will evalaute a code block if it evaluates to false.
3. What did you learn about accessing data in hashes?
  # We used Hash keys to access values.
  # .has_key? to check if the key exists.

4. What concepts were solidified when working through this challenge?
  # Refactoring has always been a mistery, we found that before we make any changes in code, try to concentrate on what it is doing, in layman terms. In this challenge, we spend time understanding what the does rather than how it does it. From there on wards, it was super easy to finish this challenge.

=end