#! /usr/bin/ruby
################################################################################
# ProjectEuler.net Problem 2
# Ruby version 1.8.7
# contributed by FlorianMettetal
#
# Each new term in the Fibonacci sequence is generated by adding the previous two
# terms. By starting with 1 and 2, the first 10 terms will be:
#                 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# By considering the terms in the Fibonacci sequence whose values do not exceed
# four million, find the sum of the even-valued terms.
################################################################################


a = 1
b = 0
sum = 0

while a < 4_000_000 do
  b += a
  print "b is: ",b
  if b % 2 == 0
    sum += b
    print " which is even so add it to sum: ",sum,"\n"
  end
  print "a is: ",a
  if a % 2 == 0
    sum += a
    print " which is even so add it to sum: ",sum,"\n"
  end
  a += b
end

print sum

################################################################################
# Answer: 4613732
################################################################################