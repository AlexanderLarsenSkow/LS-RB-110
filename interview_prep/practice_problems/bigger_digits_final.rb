# This time, iterate through to the max number

# Data Structure:
  # Use Arrays
  # Split the number into a digits array
  # Take the max number from that with sort
  # Iterate up to this number and break out if the current number in the iteration is inside the digits array
    # How do we check if the current number can be made from the digits array?
      # number.digits.sort == number.digits.sort BOOM.
  # Return this number if it is not the same number.
  # Return - 1 if
    # the number has 1 digit
    # the number has all the same digits (111)
    # the number IS the max number

  # Algorithm:
    # split into a digits array
    #
    # Find the max number here: helper method
      # sort the array in descending order
      # join the array together and convert to an integer.
      # Return this number

    # if the number is less than 10, all the digits are the same, or the number equals the max number, return - 1 immediately.
    # if not:

      # Take the max and iterate from the input number to the max number
      # If the current iteration digits sorted are equal to the input number digits sorted, set the next_bigger_number equal to
        # this number and break out of the loop.
      # return this number

  def find_max(digits)
    digits.sort { |a, b| b <=> a }.join.to_i
  end

  def next_biggest_number(number)
    digits = number.digits
    max = find_max(digits)
    next_bigger_num = 0

    if number < 10 || number == max
      return - 1
    end

    number.upto(max) do |current_num|
      if current_num != number && current_num.digits.sort == digits.sort
        next_bigger_num = current_num
        break
      end
    end
    next_bigger_num
  end

p next_biggest_number(999999999) == - 1
p next_biggest_number(9) == - 1  # 9 => -1 # 1 number, return - 1 outright
p next_biggest_number(111) == - 1  # 111 # => -1     all the same number, return - 1 outright
p next_biggest_number(531) == - 1  # 531 # => -1
p next_biggest_number(12)  == 21 # 12 => 21
p next_biggest_number(513)  == 531 # 513 => 531
p next_biggest_number(2017) == 2071  # 2017 # => 2071
p next_biggest_number(2171) == 2711
p next_biggest_number(123456789) == 123456798