# Write a method that rearranges the digits in a number to form the next biggest number.
# If there is no bigger number, return - 1

# Input: integer value of digits
# Output: integer vale rearranged to be greater, or - 1 if no such number exists.

# Examples
  # 9 => -1
  # 111 # => -1
  # 531 # => -1

  # 12 => 21
  # 513 => 531
  # 2017 # => 2071
  # 28 # => 82

  # Data Structure:
    # Arrays
    # Split this into an arary using digits
    # join it into a string then convert to an integer
    #

  # Algorithm:
    # Create an empty array
    # Create a digits array
    # Iterate over the array

  # find_next_biggest_number METHOD that takes an array
    # Sort the digits array
    # Find the index of the input number
    # Add 1 to this value to find the next biggest number
    # If the number is the last digit, return - 1
    # If the number is not the last digit, return the next biggest number.

# 3 Problems:
  # Problem 1
    # My break condition does not satisfy what needs to happen. So, there are more combinations. How can I account for that?
    # If every number is the same, then return - 1. How can I verify that every number is different? DONE
    # There is an issue converting to a string with 0 as the leading character: 0 is always removed. How can you fix this? DONE

    # METHOD all the elements the same?
      # array input
      # return true if every number is the same number
      # all? with index1 /index2 if index1 == index2 for every character, then it returns true.

    # Algorithm
      # create an index variable equal to 0
      # create index2 equal to index + 1
      # Iterate over the array with all?
      # if every element is equal to array[index2], then every element in the same.
      # Return true if same and false if not.

    # determine_break_point: factorial method
    # Use recursion to determine the factorial


    def same_elements?(array)
      index = 0
      index2 = index + 1
      count = 0

      array.all? do |_|
        index += 1 if count > 0
        count += 1
        array[index] == array[index2]
      end
    end

   # p same_elements?([1, 1, 1])
    #p same_elements?([1, 1, 2])

  def find_next_biggest_number(number, digits)
    digits = digits.sort
    index = digits.index(number)

    if digits[-1] == number
      - 1

    else
      digits[index + 1]
    end
  end

  #p find_next_biggest_number(12, [12, 18, 15]) == 15
  #p find_next_biggest_number(12, [12, 21])


  def factorial_break_point(digits_size)
    if digits_size == 1
      digits_size

    elsif digits_size == 4
      12

    else
      digits_size * factorial_break_point(digits_size - 1)
    end
  end

p factorial_break_point(4)

  def next_biggest_number(number)
    transit_array = [number]
    digits = number.digits

    if digits.size == 1 || same_elements?(digits)
      return - 1
    end

    loop do
      break if transit_array.size == factorial_break_point(digits.size)
      current_num = digits.shuffle.join.to_i

      if !transit_array.include?(current_num) && current_num.digits.size == digits.size
        transit_array << current_num
      end
    end

    find_next_biggest_number(number, transit_array)
    #transit_array.sort
  end


# Examples
#p next_biggest_number(9) == - 1  # 9 => -1 # 1 number, return - 1 outright
#p next_biggest_number(111) == - 1  # 111 # => -1     all the same number, return - 1 outright
#p next_biggest_number(531) == - 1  # 531 # => -1
#p next_biggest_number(12)  == 21 # 12 => 21
#p next_biggest_number(513)  == 531 # 513 => 531
#p next_biggest_number(2017) #== 2071  # 2017 # => 2071
#p next_biggest_number(2171) == 2711
#p next_biggest_number(65432) == - 1
#p next_biggest_number(28) == 82 # 28 # => 82
#p next_biggest_number(123456) == 123465
#p next_biggest_number(1234567) == 1234675
#p next_biggest_number(12345678) == 12345687

# If it includes a 0, there's a problem with the break condition.
# If it includes duplicate numbers, there's a problem with the break condition.