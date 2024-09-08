# You have to create a function that takes a positive integer number and returns the next bigger number formed by the same digits:
#
# 12 ==> 21 # 21
  # switch
# 513 ==> 531 # 531
# 2017 ==> 2071 # 2071
#
# If no bigger number can be composed using those digits, return -1:
#
# 9 ==> -1 # 1 digit, - 1
# 111 ==> -1 # all teh same digits - 1
# 531 ==> -1 # biggest possible number formed by these digits

# Input: positive integer
# Output: next bigger positive integer formed from the digits

# Rules:
  # form the next biggest number from the diggits
  # if there is only 1 digit we return - 1
  # if all teh digits are teh same, return -1
  # if there is no greater number from these digits, return - 1

# p next_bigger(12) == 21
# p next_bigger(513) == 531
# p next_bigger(2017) == 2071
# p next_bigger(414) == 441
# p next_bigger(144) == 414
# p next_bigger(9) == -1
# p next_bigger(111) == -1
# p next_bigger(531) == -1
# # next_bigger(153)

# Data Structures:
  # Arrays
  # digits reversed
    # biggest possible number
    # [1, 2]

    # # 513
      # 531
      # 2017
      # 2071
        # switch the last two digits
      # 2710

      # create an array of possible digits
      # 144 index
      # 414 # return the elemetn at the index after the index for
        # the number
      # 441

    # if teh number joined together to_i is greater than the previous number, we return that number.
  # if digits size is 1, return - 1
  # if digits index equals index + 1 for every element, return - 1
  # if no next biggest number, return - 1

  # 513
  # start incrementing here
  # then we stop at teh next number that contains these digits
  # tell it's a possible combination from digits.sort
  # digits sort b <=> a

  # digits [4, 4, 1]
    # iterate from 0 to the size of the array
    # container << digits[0], digits[1], digits[2]
    # digits[1] digits[2] digits[0]



=begin
0

0 1
1 0

0 1 2
0 2 1
1 0 2
1 2 0
2 0 1
2 1 0

=end


 # Algorithm:
  # If the digits are all the same or there is onl digit, return - 1, if the current number is the biggest number possible,
    # same_digits? METHOD
      # split into an array of digits
    # all? with an index variable
      #
    # if index1 equals index2 for every element, then return true
    # index1 = - 1
    # index2 = index1 + 1
    # digits[index1] == digits[index2]

    # increment from the current number to a next biggest number
  # if the current number in the increment is equal to teh digits array sorted out from the input number, we return that number

def same_digits?(number)
  digits = number.digits
  digits.all? { |digit| digit == digits.first }
end

def biggest_number?(number)
  number == number.digits.sort { |a, b| b <=> a }.join.to_i
end

def next_bigger(number)
  next_bigger = number + 1

  if number.digits.size == 1 || same_digits?(number) || biggest_number?(number)
    return - 1
  end

  loop do
    return next_bigger if next_bigger.digits.sort == number.digits.sort

    next_bigger += 1
  end
end


p next_bigger(12) == 21
p next_bigger(513) == 531
p next_bigger(2017) == 2071
p next_bigger(414) == 441
p next_bigger(144) == 414
p next_bigger(9) == -1
p next_bigger(111) == -1
p next_bigger(531) == -1