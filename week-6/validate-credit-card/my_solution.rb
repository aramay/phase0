# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An Integer
# Output: True if valid number or False if invalid number
# Steps:
=begin
1) Initialize class with credit card number
2) Pass it to a method to convert the number to an array
3) Check length of array to see if it is 16 digits and return an error if it is not
4) Pass the validation array to a number checking method
5) Reverse validation array
6) itterate array doubling every other element
6a) check if doubled number is > 9 then split and add
7) Add all elements together
8) Divide by 10 and there should be no remainder  (number%10 == 0)
9) Return true IF == 0 ELSE false
=end


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
  def initialize(number)
    @number=number

    check_card

  end

  def check_card
    validation_array = @number.to_s.split(//)
    if validation_array.length != 16
      raise ArgumentError.new
    end
    check_number(validation_array.reverse!)
  end

  def check_number(array)
    check_array=[]
    array.each_with_index do |item , index|
      if index.odd?
        check_array[index] = item.to_i * 2
#        if check_array[index] > 9
#          check_array[index].to_s.split(//)
      else
        check_array[index] = item.to_i
      end

    end
    sum_array(check_array)
  end

  def sum_array(array)
    sum = 0
    array.each_index do |index|
      if array[index] > 9
        array[index]=array[index].to_s.split(//)
      end
    end

    print array

    # array.each_with_index do |x , index|
    #   if x.is_a?(Array)
    #     array_sum = x[index][0].to_i + x[index][1].to_i
    #     sum += array_sum

    array.each do |x|
      if x.kind_of?(Array)
        x.each do |y|
          sum += y.to_i
        end
      else
        sum += x
      end
      puts sum
    end

    if sum % 10 == 0
      return true
    else
      return false
    end



  end

end

# card1=CreditCard.new(1234567891234567)
# card2=CreditCard.new(4563960122001999)
# card3=CreditCard.new(1234)

# puts card1.check_card
# puts card2.check_card

# puts card3.check_card

# begin
#   puts card3.check_card
# rescue ArgumentError
#   puts "exception raised"
# end





# Refactored Solution








# Reflection