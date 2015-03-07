#The prime factors of 13195 are 5, 7, 13 and 29.
#What is the largest prime factor of the number 600851475143 ?

def is_prime? n
	(2..(n - 1)).each { |x| return false if n % x == 0 }
	true
end

def largest_prime_factor(n)
	list_of_numbers = []
	product = 1
	p = 2
	while product < n 
		if n % p == 0 && is_prime?(p)
			list_of_numbers << p
			product *= p
		end
		p += 1
	end
	return list_of_numbers[-1]
end



