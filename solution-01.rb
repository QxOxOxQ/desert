# Question 1 (5 minutes time)
#
# Write a function that takes a string as in input and outputs the string in reverse:
#   str = "hello"
# reverse(str) => "olleh"


def reverse(string)
  string.split('').reverse.join('')

end

str = 'hello'
pp reverse(str)