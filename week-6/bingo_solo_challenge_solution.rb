# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [8] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # pick a number from 1-100
  # pick a letter from 'bingo' word

# Check the called column for the number called.
  # check if letter is 'b' check 1st column for number
  # check if letter is 'i' check 2nd column for number
  # check if letter is 'n' check 3rd column for number
  # check if letter is 'g' check 4th column for number
  # check if letter is 'o' check 5th column for number

# If the number is in the column, replace with an 'x'
  # iterate over column and search for number
  # IF number is found, replace wiht 'X'
  # ELSE don't chage anything

# Display a column to the console
  # print the column currently worked on

# Display the board to the console (prettily)
  # display the entire board

# Initial Solution

=begin
require 'pry'
class BingoBoard

  def initialize(board)
    @bingo_board = board
    generate_letter_number

  end

  def generate_letter_number()

    word = ["B", "I", "N", "G", "O"]

    @letter = word.sample

    rand = Random.new
    @number = rand(1...100)

    check

  end

  def check()

    #@bingo_board.each {|x| p x}

    #p @bingo_board[0][1]

    first_col = []
    binding.pry
    if (@letter == "B")
      col = 0

      for x in 0..@bingo_board.length - 1

        first_col << @bingo_board[x][col]
        p first_col

      end
    # end

    elsif (@letter == "I")

      col = 1

      for x in 0..@bingo_board.length - 1

        first_col << @bingo_board[x][col]
        p first_col

      end
    # end

    elsif (@letter == "N")

      col = 2

      for x in 0..@bingo_board.length - 1

        first_col << @bingo_board[x][col]
        p first_col

      end
    # end

    elsif (@letter == "G")

      col = 3

      for x in 0..@bingo_board.length - 1

        first_col << @bingo_board[x][col]
        p first_col

      end
    # end

    elsif (@letter == "O")

      col = 4

      for x in 0..@bingo_board.length - 1

        first_col << @bingo_board[x][col]
        p first_col

      end
    # end

    # else

    #   p "no match found"

    # end
    # binding.pry
    if (first_col.include?(@number))

      # first_col.each_with_index do |item, index|
      #   if (item == @number)
      #     puts "found"
      #     first_col[index] = "X"

      #   end

      # end

    end

    else
      p "no match found"
        # p first_col
    end

    p first_col
  end

end

=end
# Refactored Solution

require 'pry'
class BingoBoard

  def initialize(board)
    @bingo_board = board
    generate_letter_number

  end

  def generate_letter_number()

    word = ["B", "I", "N", "G", "O"]

    @letter = word.sample

    rand = Random.new
    @number = rand(1..99)

    check

  end

  def check()

    if (@letter == "B")
      col = 0
      check_column(col)

    elsif (@letter == "I")
      col = 1
      check_column(col)

    elsif (@letter == "N")
        col = 2
        check_column(col)

    elsif (@letter == "G")
    col = 3
    check_column(col)

    elsif (@letter == "O")
      col = 4
      check_column(col)

    end



  end


  def check_column(col)
    binding.pry

    puts "column #{col}"

    for row in 0..@bingo_board.length-1

        if (@bingo_board[row][col] == @number)

        @bingo_board[row][col] = "X"
        end

        p @bingo_board[row][col]

      end

      #formated printing of @bingo_board
      @bingo_board.each_index do |index|
        p @bingo_board[index]
      end


  end
  #p @bingo_board
end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [
  [47, 44, 71, 8, 88],
  [22, 69, 75, 65, 73],
  [83, 85, 97, 89, 57],
  [25, 31, 96, 68, 51],
  [75, 70, 54, 80, 83]
]

new_game = BingoBoard.new(board)



#Reflection

=begin

answers the following questions:

1. How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
  # pseducoding helped in formalating a problem, especially in this case of mapping letters to columns.
2. What are the benefits of using a class for this challenge?
  # Classes give you a structure with helper methods that do part of a job. This we can divide logic in different parts and maintian our code readability and maintenance.
3. How can you access coordinates in a nested array?
  # nested arrays are grid like structure. We can access them using index in terms of rows and columns e.g. board[row][col]
4. What methods did you use to access and modify the array?
  # I used indexes to access and modify array. For formated printing, i used each_index and printed each row after the other.
5. Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
  # I didn't use any methods.
6. How did you determine what should be an instance variable versus a local variable?
  # a Letter, number and bingo board had to be instance varaibles, as all the promary operations were based on comparing if the number is present in that array.
7. What do you feel is most improved in your refactored solution?
  # I used a helper method 'check_column' which is called when column has been determined. After that all operations remain the same. This way i re-used the same code for occurences of letters.

=end

