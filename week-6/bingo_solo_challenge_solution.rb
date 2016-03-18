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
require 'pry'
class BingoBoard

  def initialize(board)
    @bingo_board = board

    generate_letter_number


  end

  def generate_letter_number()

    word = ["B", "I", "N", "G", "O"]

    @letter = word.sample

    # @letter = word[0]


    rand = Random.new
    @number = rand(1...100)

    # @number = 25

    check_lucky_winner

  end

  def check_lucky_winner()
binding.pry
    #@bingo_board.each {|x| p x}

    #p @bingo_board[0][1]

    first_col = []

    if (@letter == "B")
      col = 0

      for x in 0..@bingo_board.length - 1

        first_col << @bingo_board[x][col]
        p first_col

      end



    elsif (@letter == "I")

      col = 1

      for x in 0..@bingo_board.length - 1

        first_col << @bingo_board[x][col]
        p first_col

      end

    elsif (@letter == "N")

      col = 2

      for x in 0..@bingo_board.length - 1

        first_col << @bingo_board[x][col]
        p first_col

      end

    elsif (@letter == "G")

      col = 3

      for x in 0..@bingo_board.length - 1

        first_col << @bingo_board[x][col]
        p first_col

      end

    elsif

      col = 4

      for x in 0..@bingo_board.length - 1

        first_col << @bingo_board[x][col]
        p first_col

      end

    else

      p "no match found"
        #first_col << @bingo_board[x][col]

    end
    #binding.pry
    first_col.each_with_index do |item, index|

      if (item == @number)
        puts "found"
        first_col[index] = "X"

      end

    end

    p first_col



  end

end

# Refactored Solution



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


