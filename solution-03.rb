# Question 3 (15 minutes time)
#
# A fibonacci sequence is defined like the following
# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, ...
#   The next number is found by adding up the two numbers before it. The first two numbers of the sequence are 0,1.
#   Write a function that outputs the nth number in the series
# For example:
#       fibonnaci(0) => 0
# fibonnaci(1) => 1
# fibonnaci(4) => 3
# fibonacci(7) => 13
#
# Your function should work for large numbers of n.

#really ??

def fibonnaci(number)
  return 0 if number== 0
  return 1 if number == 1
  array = [0,1]
  range = 2..number
  range.each { |n| array << array[n - 2] + array[n - 1] }
  array[number]

  # range.reduce()
end


pp fibonnaci(1) == 1
pp fibonnaci(4) == 3
pp fibonnaci(7) == 13