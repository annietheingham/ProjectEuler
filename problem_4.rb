# A palindromic number reads the same both ways.
# The largest palindrome made from the product of two 2-digit
# numbers is 9009 = 91 x 99

# Find the largest palindrome made from the product of two 3-digit numbers

def isPalindrome?(product)
  if product.to_s.reverse == product.to_s
    true
  end
end

largestPalindrome = 1000
100.upto(999) { |i|
  i.upto(999) { |j|
    product = i * j
    if isPalindrome?(product) && product > largestPalindrome
      largestPalindrome = product
    end
  }
}

puts largestPalindrome
