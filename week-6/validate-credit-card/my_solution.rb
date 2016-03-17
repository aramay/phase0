# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with: ].
# I spent [1] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits
require "pry"

class CreditCard

  def initialize(credit_card_number)

    @credit_card_number = credit_card_number.split(//)

    @credit_card_number.delete(" ")

  end

  #binding.pry

  def check_card()

    # result_array = []

    # p i = @credit_card_number.length - 1

    # while (i > 0)

    #   puts result_array = @credit_card_number[i-1].to_i + @credit_card_number[i-1].to_i
    #   i -= 1
    # end

    # p @credit_card_number

    @credit_card_number.each_with_index do |item, index|



      if (index % 2 != 0)
        p "yyes"
        p "item #{item} with index #{index}"

        p "add items #{item.to_i + item.to_i}"

        @credit_card_number[index] = item.to_i + item.to_i





      end

      puts "#{@credit_card_number}"

    end




  end


end


credit_card_number = "4563 9601 2200 1999"
cc = CreditCard.new(credit_card_number)

cc.check_card
# Refactored Solution








# Reflection
