#! /usr/bin/ruby
################################################################################
# ProjectEuler.net Problem 3
# Ruby version 1.9.3
# contributed by FlorianMettetal
#
# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?
################################################################################

def prime(n)
  ("1" * n) !~ /^1?$|^(11+?)\1+$/
end

count = 1
while count < Math.sqrt(600851475143) do
  if 600851475143 % count == 0
    if prime(count)
      final = count
    end
  end
  count += 1
end
print final

################################################################################
# Answer: 6857
################################################################################