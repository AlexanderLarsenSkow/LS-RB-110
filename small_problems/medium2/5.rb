# Triangle Sides

# PEDAC

# Problem:
	# Expected Input: three integer values representing the sides of triangles
	# Expected Output: type of triangle symbol, or invalid triangle

	# Rules:
		# Explicit:
		  # Write a method that returns the type of triangle for the side length inputs
		  # If all the sides are equal: equilateral
		  # If 2 sides are equal and 1 is different: isosceles
		  # If all 3 sides are different: scalene

		  # if a side is 0: invalid
		  # If the 2 shortest sides are shorter than the 3rd side.

		# Implicit:
		  # The longest side would be the max of the array

# Examples:
  # triangle(3, 3, 3) == :equilateral
  # triangle(3, 3, 1.5) == :isosceles
  # triangle(3, 4, 5) == :scalene
  # triangle(0, 3, 3) == :invalid
  # triangle(3, 1, 1) == :invalid

# Data Structure:
  # Array, maybe hash
  # Max, for invalid method
  # otherwise, I think it's pretty straightfoward

  # Would a hash be useful? I'm not certain.

# Algorithm:
  # Method INVALID
    # split the integers into an array of integers
    # Take the max of the array, this is the longest side.
    # If this side is longer than both the other sides added together,
      # How to split it
    # It is an invalid triangle.
    # Also invalid if one equals 0.

  # Method Triangle
    # If invalid, return invalid symbol
    # If the sides are all equal, return equilateral
    # If 2 sides are equal, return isosceles
    # If no sides are equal, return scalene

  # ISOSCELES METHOD
    # Check if any two sides are equal.
    # If count of any of them is greater than 1, there we go.

  # SCALENE METHOD
    # Use an array
    # If all of the sides count is equal to 1
    # Return true
# Code:

def invalid_triangle?(side1, side2, side3)
  array = [side1, side2, side3]
  if array.include?(0)
    return true

  else
    longest_side = array.max
    shorter_sides = array.sum - longest_side
    longest_side > shorter_sides
  end
end

def equilateral?(side1, side2, side3)
  side1 == side2 && side2 == side3
end

def isosceles?(side1, side2, side3)
  array = [side1, side2, side3]
  array.any? { |side| array.count(side) > 1 }
end

def scalene?(side1, side2, side3)
  sides = [side1, side2, side3]
  sides.all? { |side| sides.count(side) == 1}
end

def triangle(side1, side2, side3)
  if invalid_triangle?(side1, side2, side3)
    :invalid

  elsif equilateral?(side1, side2, side3)
     :equilateral

  elsif isosceles?(side1, side2, side3)
    :isosceles

  elsif scalene?(side1, side2, side3)
    :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid