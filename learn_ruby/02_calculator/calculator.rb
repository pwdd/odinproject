def add(n1, n2)
	n1 + n2	
end

def subtract(n1, n2)
	n1 - n2
end

def sum(array)
	array.reduce(0, :+)
end

def multiply(*n)
	n.reduce(1, :*)	
end

def power(n1, n2)
	n1 ** n2
end

def factorial(n)
	if n == 0
		1
	else
		n * factorial(n-1)
	end
end
