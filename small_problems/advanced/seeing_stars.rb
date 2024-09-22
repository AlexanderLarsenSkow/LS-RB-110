# Input: odd integer representing the size of the star shape
# Output: star

# Rules:
  # Given an odd integer, return a star shape
  # 7 is the smallest possible.
  # as it increases, the center line gains more stars
  # the center line has the same as the integer
  # The outer lines go out further with more integers...
  # 7 has 3 outer rows on top and bottom, 9 has 4, 11 has 5


# Examples:
# star(7)
                        # line 1: 1 star, 2 space, 1 star, 2 space, 1 star
# *  *  *               # line 2: 1 space, 1 star, 1 space, 1 star, 1 space, 1 star, 1 space
#  * * *
#   ***                 # line 3: 2 spaces, 3 stars, 2 spaces
# *******               # center line: 7 stars
#   ***
#  * * *
# *  *  *

# star(9)

#*   *   *
# *  *  *
#  * * *
#   ***
# *********
#   ***
#  * * *
# *  *  *
#*   *   *

# star(11)


# *    *    *
#  *   *   *
#   *  *  *
#    * * *          #
#     ***           # line 1: 4 spaces, 3 stars 4 spaces
# ***********       # center: all spaces are stars, easiest
#     ***           # # line 1: 4 spaces, 3 stars, 4 spaces
#    * * *          # line 2: 3 spaces, 1 star, 1 space, 1 star, 1 space, 1 star, 3 spaces
#   *  *  *
#  *   *   *
# *    *    *

# every line increases the spacing between the stars by 1.
# until they get to the top line.
# The 0th line has 0 spacing between stars
# THe first line has 1 space between stars
# the second line has 2 spaces between stars
# The third line has 3 spaces between stars
# The fourth has 4 spaces between stars: END

# how to get starting spaces for line 0:
  # number of outer lines - 1 => (integer / 2) - 1
  # 11 / 2 - 1 => 4
  # 9 / 2 - 1 => 3
  # 7 / 2 - 1 => 2
  # perfect

# Data Structures:
  # it makes more sense to star from working with the center line and move downward. Can make the top by
    # replicating the bottom
  # Another issue is just calucluating the number of lines to go: actually, not that bad.
    # 7 stars: 7 lines
    # 9 stars: 9 lines
    # Okay: so, start at the center line. This is the line where every space is a star

  # after center line, go to line 0: (integer / 2 - 1) spaces, 3 stars, (integer / 2 - 1) spaces
  # for every subsequent line, we decrease the start/end space groups by 1.
  # increase the spaces between the stars by 1.

  # So: Line 0 can look like this:
  # starting space * (integer/ 2 - 1) 1 star *between space * 0, 1 star, between space * 0, 1 star, ending_space * integer / 2 -1
  # Then we de-increment starting/ending spaces and increment between spaces by 1, until we get to the final values.

  # What are the final values?
  # until the between spaces = integer / 2 - 1 and starting_space = 0

# Algorithm:
  # LINE MAKER
    # 2 arguments: outer_space, between_space, integer values
    # # starting space * (integer/ 2 - 1) 1 star *between space * 0, 1 star, between space * 0, 1 star, ending_space * integer / 2 -1
    # output result

# Switch it : start the outer space at 0, then the inner spaces at integer / 2 - 1.
# increment outer space, decrement outer space
# get to line 0
# get center line
# now outer space stars at integer / 2 - 1
# inner space start at 0
# decrement outer space
# increment inner space

  # MAIN METHOD:
    # create center line that is the star * the input number
    # declare outer space variable to be integer / 2 - 1
    # declare inner space variable to be 0
    # until these values equal the starting point of the other,
      # decrement outer space
      # increment inner space
    # for every increment, output the LINE MAKER helper with these values.
    # output the star

def line_maker(outer_space, inner_space)
  puts "#{' ' * outer_space}*#{' ' * inner_space}*#{' ' * inner_space}*#{' ' * outer_space}"
end

# line_maker(0, 4)
# line_maker(1, 3)
# line_maker(2, 2)
# line_maker(3, 1)
# line_maker(4, 0)
# puts "***********"
# line_maker(4, 0)
# line_maker(3, 1)
# line_maker(2, 2)
# line_maker(1, 3)
# line_maker(0, 4)

def star(number)
  center_line = '*' * number
  outer_space = 0
  inner_space = (number / 2) - 1

  until inner_space < 0 && outer_space > (number / 2) - 1
    line_maker(outer_space, inner_space)
    inner_space -= 1
    outer_space += 1
  end

  inner_space += 1
  outer_space -= 1
  puts center_line

  until inner_space > (number / 2) - 1 && outer_space < 0
    line_maker(outer_space, inner_space)
    inner_space += 1
    outer_space -= 1
  end
end

star(7)
star(9)
star(21)