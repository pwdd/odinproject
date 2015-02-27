//The prime factors of 13195 are 5, 7, 13 and 29.
//What is the largest prime factor of the number 600851475143 ?

var isPrime = function(n) {
	// check if number is prime
	for (i = 2; i < n; i++) {
		if (n % i === 0) {
			return false;
		}
	}
	return true;
};

var listPrimes = function(n) {
	// returns a list of the prime numbers whithin the input,
	// not the first input-th prime numbers
	// for instance, if input is 17, list will be [2, 3, 5, 7, 11, 13]
	var i = 2;
	var lop = [];
	while (i < n) {
		if (isPrime(i)) {
			lop.push(i);
		}
		i++;
	}
	return lop;
};

var primeFactor = function(n) {
	// returns list of prime factors;
	// since list is ordered, the last is going to be the biggest
	var factors = [];
	var lop = listPrimes(n);
	var lopLenght = lop.length;
	for (var i = 0; i < lopLenght; i++) {
		var ppf = lop[i];
		if (n % ppf === 0) {
			factors.push(ppf);
			i = 0;
			n = n / ppf;
		}
	}
	var highest = factors.pop();
	return highest;
};
