# Create a Bingo Scorer (SOLO CHALLENGE)

# I spent [#] hours on this challenge.

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

    @match_found = false

    check_row()
  end

  def check_row()
binding.pry

    row = 0
    counter = 0

    for col in 0..@bingo_board[row].length - 1

      if (@bingo_board[row][col] == "x")

        counter += 1
        # p counter
        if (counter == 5)
          p counter
          @match_found = true
          break

        end

      elsif (@bingo_board[row + 1][col] == 'x')
        p "diagonal search"


      else
        p "diagonal search not found"

      end
    end

  end

end




# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE
# implement tests for each of the methods here:
# horizontal1 = [
#               ['x', 'x', 'x', 'x', 'x'],
#               [47, 44, 71, 8, 88],
#               [83, 85, 97, 89, 57],
#               [25, 31, 96, 68, 51],
#               [75, 70, 54, 80, 83]
#             ]

# horizontal2 = [[47, 44, 71, 8, 88],
#               ['x', 'x', 'x', 'x', 'x'],
#               [83, 85, 97, 89, 57],
#               [25, 31, 96, 68, 51],
#               [75, 70, 54, 80, 83]]

horizontal3 = [['x', 44, 71, 8, 88],
              [47, 44, 71, 8, 88],
              [83, 85, 97, 89, 57],
              [25, 31, 96, 68, 51],
              [75, 70, 54, 80, 83]]

# horizontal4 = [[34, 44, 71, 8, 'x'],
#               [47, 44, 71, 8, 88],
#               [83, 85, 97, 89, 57],
#               [25, 31, 96, 68, 51],
#               [75, 70, 54, 80, 83]]

# BingoScorer.new(horizontal1)

# BingoScorer.new(horizontal2)

BingoScorer.new(horizontal3)

# BingoScorer.new(horizontal4)


# Reflection