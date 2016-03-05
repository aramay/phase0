# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------
=begin
def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end

end
=end


# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#errors.rb
# 2. What is the line number where the error occurs?
#171
# 3. What is the type of error message?
#syntax error
# 4. What additional information does the interpreter provide about this type of error?
#unexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
# there is no 'end' statement for while loop on line 15
# 6. Why did the interpreter give you this error?
# Interpreter cannot detemine which code block to beexecuted

# --- error -------------------------------------------------------

#south_park = 0

# 1. What is the line number where the error occurs?
# 39
# 2. What is the type of error message?
# in `<main>'
# 3. What additional information does the interpreter provide about this type of error?
# undefined local variable or method `south_park'
# 4. Where is the error in the code?
# on line 39
# 5. Why did the interpreter give you this error?
# variable south_park is not defined - can be fixed with south_park = 0

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# errors.rb
# 2. What is the type of error message?
# undefined method
# 3. What additional information does the interpreter provide about this type of error?
# undefined method `cartman' for main:Object (NoMethodError)
# 4. Where is the error in the code?
# on line 54
# 5. Why did the interpreter give you this error?
# it's making a call to a method that does not exist.

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# 69
# 2. What is the type of error message?
#  wrong number of arguments (1 for 0) (ArgumentError)

# 3. What additional information does the interpreter provide about this type of error?
# from errors.rb:73:in `<main>' - this is where call was made to method cartmans_phrase
# 4. Where is the error in the code?
# on line 73 -
# 5. Why did the interpreter give you this error?
# method 'cartman_phrase' does not accept any arguments - we are calling this with with arguments.

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says

# 1. What is the line number where the error occurs?
# 89
# 2. What is the type of error message?
#  wrong number of arguments (1 for 0)
# 3. What additional information does the interpreter provide about this type of error?
# (ArgumentError) from errors.rb:93:in `<main>'
# 4. Where is the error in the code?
# on line 89
# 5. Why did the interpreter give you this error?
# method 'cartman_says' expecting arguments - we are calling this without arguments.



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# 110
# 2. What is the type of error message?
# in `cartmans_lie':
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# on line 110
# 5. Why did the interpreter give you this error?
# method 'cartman_lie' expecting two arguments - we are calling this with arguments only.

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# 129
# 2. What is the type of error message?
# :in `*':
# 3. What additional information does the interpreter provide # String can't be coerced into Fixnum
#
# 4. Where is the error in the code?
# on line 129
# 5. Why did the interpreter give you this error?
# we are trying to multiply a integer with a string.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# 144:
# 2. What is the type of error message?
# in `/':
# 3. What additional information does the interpreter provide about this type of error?
# divided by 0 (ZeroDivisionError)

# 4. Where is the error in the code?
# on line 144
# 5. Why did the interpreter give you this error?
# division by zero is not possible.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 161:
# 2. What is the type of error message?
# in `require_relative':
# 3. What additional information does the interpreter provide about this type of error?
# cannot load such file -- /Users/abid/Documents/Dev_Bootcamp_Working_Dir/phase0/week-4/cartmans_essay.md (LoadError)

# 4. Where is the error in the code?
# on line 161
# 5. Why did the interpreter give you this error?
# file 'cartmans_essay.md' does not exist


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

=begin
1. Which error was the most difficult to read?
=> error where we call a method was most difficult to read. It reports to lines where error occured. One where method is defined and other is.

2. How did you figure out what the issue with the error was?
=> i would look at the line number and type of error message. Addditional information about the error would further suffice clues. Make some changes and run the code again to check if error was fixed.

3. Were you able to determine why each error message happened based on the code?
=> Yes

4. When you encounter errors in your future code, what process will you follow to help you debug?

=> Check line number and error type. Then look at additional error information and see how it fits a problem.

=end
