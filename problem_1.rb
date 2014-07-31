#If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9.
#The sum of these multiples is 23.

#Find the sum of all the multiples of 3 or 5 below 1000.

#populate array with mult of 3

def sum_of_multiples
  multiples_of_three_or_five = []

  for n in 3...1000
    if n % 3 == 0
      multiples_of_three_or_five.push(n)
    end
  end

  for n in 5...1000
    if n % 5 == 0
      unless multiples_of_three_or_five.include?(n)
        multiples_of_three_or_five.push(n)
      end
    end
  end

  sum = multiples_of_three_or_five.inject { |sum, x| sum + x }
  return sum
end

sum_of_multiples
