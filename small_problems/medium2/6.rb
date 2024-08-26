# Tri-Angles

# PEDAC

# Problem:
	# Expected Input: integer values representing triangle degrees
	# Expected Output: symbol for what kind of triangle it is

	# Rules:
		# Explicit:
		  # Return :acute if all 3 angles are less than 90 degrees
		  # Return right if 1 angle is 90
		  # Return obtuse if 1 angle is greater than 90
		  # Return :invalid if the sum of the angles is not 180 or 1 angle is 0

		# Implicit:

# Examples:
  # triangle(60, 70, 50) == :acute
  # triangle(30, 90, 60) == :right
  # triangle(120, 50, 10) == :obtuse
  # triangle(0, 90, 90) == :invalid
  # triangle(50, 50, 50) == :invalid

# Data Structure:
  # array for sums, any?, all? and all that

# Algorithm:
  # Call a bunch of helpers lol.

    # INVALID METHOD
      # Return true if 1 angle is 0
      # Return true if the sum of the array is not 180

   # right triangle?
    # return true if any of the angles are 90

  # acute triangle?
    # return true if all the angles are less than 90

  # obtuse?
    # return true if one angle is greater than 90

# Code:

def invalid?(angles)
  angles.include?(0) || angles.sum != 180
end

def right?(angles)
  angles.any? { |angle| angle == 90 }
end

def acute?(angles)
  angles.all? { |angle| angle < 90 }
end

def obtuse?(angles)
  angles.any? { |angle| angle > 90 }
end

def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]

  if invalid?(angles)
    :invalid

  elsif right?(angles)
    :right

  elsif acute?(angles)
    :acute

  elsif obtuse?(angles)
    :obtuse
  end
end


p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid