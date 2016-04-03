# Create a Bingo Scorer (SOLO CHALLENGE)

# I spent [4] hours on this challenge.

# Pseudocode





# sample boards

# horizontal = [[47, 44, 71, 8, 88],
#               ['x', 'x', 'x', 'x', 'x'],
#               [83, 85, 97, 89, 57],
#               [25, 31, 96, 68, 51],
#               [75, 70, 54, 80, 83]]

# vertical = [[47, 44, 71, 'x', 88],
#             [22, 69, 75, 'x', 73],
#             [83, 85, 97, 'x', 57],
#             [25, 31, 96, 'x', 51],
#             [75, 70, 54, 'x', 83]]


# right_to_left = [['x', 44, 71, 8, 88],
#                  [22, 'x', 75, 65, 73],
#                  [83, 85, 'x', 89, 57],
#                  [25, 31, 96, 'x', 51],
#                  [75, 70, 54, 80, 'x']]


# left_to_right = [[47, 44, 71, 8, 'x'],
#                   [22, 69, 75, 'x', 73],
#                   [83, 85, 'x', 89, 57],
#                   [25, 'x', 96, 68, 51],
#                   ['x', 70, 54, 80, 83]]




# Initial Solution
require 'pry'
class BingoScorer

  #your code here

  def initialize(board)
    @bingo_board = board

    check_row()

    check_col()

    check_diagonal()

  end

  def check_row()

    for row in 0..@bingo_board.length - 1

      counter = 0

      for col in 0..@bingo_board[row].length - 1

        if (@bingo_board[row][col] == "x")

          counter += 1
          if (counter == 5)
            # p "search #{row + 1} row"
            p "horizontal bingo"

          end
        end
      end
    end
  end

  def check_col()
# binding.pry
    for col in 0..@bingo_board.length - 1

      counter = 0

      for row in 0..@bingo_board[col].length - 1

        if (@bingo_board[row][col] == "x")

          counter += 1
          if (counter == 5)
            # p "search #{col + 1} col"
            p "vertical bingo"

          end
        end
      end
    end

  end

  def check_diagonal()

    if (@bingo_board[0][0] == "x")
      for row in 0..@bingo_board.length - 2

        if (@bingo_board[row][row] == "x")

        end
      end
      p "diagonal left to right"
    end

    if (@bingo_board[0][4] == "x")
      col = 3

      for row in 1..3
        if (@bingo_board[row][col] == "x")
          col -= 1
        end
      end
      p "diagonal right_to_left"
    end

  end

end




# Refactored Solution


# I refactored my initial solution



# DRIVER TESTS GO BELOW THIS LINE
# implement tests for each of the methods here:

horizontal = [[47, 44, 71, 8, 88],
              ['x', 'x', 'x', 'x', 'x'],
              [83, 85, 97, 89, 57],
              [25, 31, 96, 68, 51],
              [75, 70, 54, 80, 83]]

vertical = [[47, 44, 71, 'x', 88],
            [22, 69, 75, 'x', 73],
            [83, 85, 97, 'x', 57],
            [25, 31, 96, 'x', 51],
            [75, 70, 54, 'x', 83]]


right_to_left = [['x', 44, 71, 8, 88],
                 [22, 'x', 75, 65, 73],
                 [83, 85, 'x', 89, 57],
                 [25, 31, 96, 'x', 51],
                 [75, 70, 54, 80, 'x']]


left_to_right = [[47, 44, 71, 8, 'x'],
                  [22, 69, 75, 'x', 73],
                  [83, 85, 'x', 89, 57],
                  [25, 'x', 96, 68, 51],
                  ['x', 70, 54, 80, 83]]


BingoScorer.new(horizontal)

BingoScorer.new(vertical)

BingoScorer.new(right_to_left)

BingoScorer.new(left_to_right)

# Reflection

=begin

answer the following questions:

1. What concepts did you review or learn in this challenge?
  # I had to review basic ruby syntax and looping in Ruby.
2. What is still confusing to you about Ruby?
  # At this moment i don't find too much confusing about Ruby.
3. What are you going to study to get more prepared for Phase 1?
  # Ii will spend some time testing (Rspec) to prepare for phase-1


=end