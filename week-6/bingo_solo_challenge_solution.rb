# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [4] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here

# Check the called column for the number called.
  #fill in the outline here

# If the number is in the column, replace with an 'x'
  #fill in the outline here

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here

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

    # @letter = word.sample
    @letter = "I"

    rand = Random.new
    # @number = rand(1...100)
    @number = 69

    check

  end

  def check()

    # first_col = []

    binding.pry

    if (@letter == "B")
      col = 0
      check_column(col)

    # p "outside loop"
    # p @bingo_board

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
  # puts @bingo_board

  def check_column(col)

    for row in 0..@bingo_board.length-1
        p @bingo_board[row][col]

        if (@bingo_board[row][col] == @number)

        @bingo_board[row][col] = "X"
        end

      end

      #formated printing of @bingo_board
      @bingo_board.each_index do |index|
        p @bingo_board[index]
      end


  end
  p @bingo_board
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

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
What are the benefits of using a class for this challenge?
How can you access coordinates in a nested array?
What methods did you use to access and modify the array?
Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
How did you determine what should be an instance variable versus a local variable?
What do you feel is most improved in your refactored solution?

=end

