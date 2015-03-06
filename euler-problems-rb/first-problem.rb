#If we list all the natural numbers below 10 that are multiples of 3 or 5, 
#we get 3, 5, 6 and 9. The sum of these multiples is 23.
#Find the sum of all the multiples of 3 or 5 below 1000.

def first_problem(n = 1000)
	puts (0..n-1).inject{ |sum, n| ((n % 3 == 0) || (n % 5 == 0)) ? sum + n : sum }
end

first_problem(1000)