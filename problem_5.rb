#Project Euler #5
arr = Array(1..20)
puts "Smallest evenly divisible number is #{arr.inject(:lcm)}"