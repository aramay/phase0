# Pad an Array

# I worked on this challenge with: Renan Martins

# I spent [1] hour on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
#   an array, minimum size, optional pad value
# What is the output? (i.e. What should the code return?)
#   an array, additionally with padded values
# What are the steps needed to solve the problem?

=begin

	IF given minimum size is less than or equal to array size
		RETURN the array
	ELSE
		Make a copy of the array
		SET counter to minimum size minus array size
		FOR 1 up to value of counter
			Add optional value to the array copy
		ENDFOR
	ENDIF

=end

# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  # Your code here

  #IF given minimum size is less than or equal to array size

	if min_size <= array.size
		# RETURN the array
		return array
	end
		# 	Make a copy of the array
		#new_array = Array.new(array)

# 	SET counter to minimum size minus array size
		counter = min_size - array.size
# 	FOR 1 up to value of counter
		until counter == 0
			# Add optional value to the array copy
			array.push(value)
			counter -= 1
		end
		return array
end

#end


def pad(array, min_size, value = nil) #non-destructive
# 	IF given minimum size is less than or equal to array size
	new_array = Array.new(array)

	if min_size <= new_array.size
		# RETURN the array
		return new_array
	else
		# 	Make a copy of the array
		#new_array = Array.new(array)

# 	SET counter to minimum size minus array size
		counter = min_size - new_array.size
# 	FOR 1 up to value of counter
		until counter == 0
			# Add optional value to the array copy
			new_array.push(value)
			counter -= 1
		end
		return new_array
	end
end

my_array = [4, 3, 7, 2]
p pad([1,2,3], 5)
p pad([1,2,3], 5, 'apple')
p pad(my_array, 2)


# 3. Refactored Solution


def pad!(array, min_size, value = nil) #destructive

  #Removed copy of original array, use original array for destructive method

	if min_size <= array.size

		return array
	else

		#determines how many elements to pad
		counter = min_size - array.size

		#loop to controll padding
		until counter == 0
			new_array.push(value)
			counter -= 1
		end
		return array
	end


end



# 4. Reflection

=begin

answers the following questions:

Were you successful in breaking the problem down into small steps?
Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
When you refactored, did you find any existing methods in Ruby to clean up your code?
How readable is your solution? Did you and your pair choose descriptive variable names?
What is the difference between destructive and non-destructive methods in your own words?


=end