#! /usr/bin/ruby
################################################################################
# ProjectEuler.net Problem 4
# Ruby version 1.9.3
# contributed by FlorianMettetal
#
# A palindromic number reads the same both ways. The largest palindrome made
# from the product of two 2-digit numbers is 9009 = 91 * 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.
################################################################################
def is_palindrome(num)
  if num.to_s.size % 2 == 0 #A palindrome must be made up of at least 2 digits
    split1 = num.to_s
    split1 = split1[0..(((split1.size)/2)-1)] #the first half of the string
    split2 = num.to_s
    split2 = split2[((split2.size)/2)..split2.size] #the second half of the string
    split2 = split2.reverse
    if split1 == split2
      #print "***  ",num," is a palindrome!  ***\n"
      #print "product: ",num,"\n"
      #print "split 1: ",split1,"\n"
      #print "split 2: ",split2.reverse,"\n"
      #print "a is: ",(@max-@iter1),"\n"
      #print "b is: ",(@max-@iter2),"\n"
      if num.to_s.size == 6
        @palindromes << num
        #p @palindromes
      end
    else
      #print num," is not a palindrome!\n"
    end
  end
end

@palindromes = Array.new
@max = 999
@iter2 = 0
while @iter2 < 999
  @iter1 = 0
  while @iter1 <= 999
    product = (@max-@iter2) * (@max-@iter1)
    if is_palindrome(product)
    end
    @iter1 += 1
    #print "iteration: ",(@max-@iter2)," X ",(@max-@iter1)," probably failed! \n"
  end
  @iter2 += 1
end

print "which is iteration ",(@iter1),":",(@iter2),"\n"
print "the highest palindrome is ... ",@palindromes.sort{|a,b| b <=> a}.first,"\n"

################################################################################
# Answer: 906609
################################################################################