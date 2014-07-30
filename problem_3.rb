#Project Euler practice problem 3

require 'prime' 

def prime(n)
	all_primes = []
	factors = []
	sqrt_of_n = Math.sqrt(n) 
		Prime.each(sqrt_of_n) do |prime|
			all_primes.push(prime)
		end
	all_primes.each { |prime|
		if n % prime == 0
			factors.push(prime)
		end
	}
	puts factors[-1]
end

prime(13195)
prime(600851475143)	

