#! /usr/bin/ruby
################################################################################
# ProjectEuler.net Problem 5
# Ruby version 1.9.3
# contributed by FlorianMettetal
#
# 2520 is the smallest number that can be divided by each of
# the numbers from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible
# by all of the numbers from 1 to 20?
################################################################################
def is_divisible(num)
  iteration = 1
  success = 0
  while iteration <= 20
    #print num,":",iteration,"\n"
    if num % iteration != 0
      break
    else
      success += 1
    end
    if success == 20
      print num, " is divisible by all 20! \n\n"
      break
    end
    iteration += 1
  end
end

i = 20
while i < 100_000_000_000
  is_divisible(i)
  i += 20
  if i % 1_000_000 == 0
    print "Millionth Iteration: ",(i/1_000_000),"\n"
  end
end


################################################################################
# Answer: 232792560
################################################################################