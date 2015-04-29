=begin
Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string	
=end

def caesar_cipher(string, number)
	letters = string.split("")
	new_string = []
	index_downcase = Hash[ ('a'..'z').map.with_index(1).to_a ]
	index_uppercase = Hash[ ('A'..'Z').map.with_index(27).to_a ]
	index = index_downcase.merge(index_uppercase)

	letters.each do |l|
		if index_downcase.include? l
			new_string << (index_downcase[l] + number) % 26
		elsif index_uppercase.include? l
			if (index_uppercase[l] + number) > 52
				new_string << (index_uppercase[l] + number) - 26
			else
				new_string << (index_uppercase[l] + number)
			end
		else
			new_string << l
		end
	end

	new_string.map! do |e|
		if e.is_a? Integer
			index.key(e)
		else
			e
		end
	end
	new_string.join("")
end

print caesar_cipher("What a string!", 5)

=begin
Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. 
It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.
=end

def stock_picker(prices)
	price_to_buy = 0
	price_to_sell = 0
	profit = 0

	prices[0..-2].each_with_index do |buy, index_buy|
		prices[(index_buy + 1)..-1].each_with_index do |sell, index_sell|
			if profit < sell - buy
				profit = sell - buy
				price_to_buy = index_buy
				price_to_sell = index_sell + (index_buy + 1)
			end
		end
	end
	[price_to_buy, price_to_sell]
end

puts stock_picker([17,3,6,9,15,8,6,1,10])

=begin
Implement a method #substrings that takes a word as the first argument and then an array of valid substrings 
(your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) 
that was found in the original string and how many times it was found.
=end

def substrings(string, dictionary)
	result = Hash.new(0)
	arr = string.downcase.split(" ")
	arr.each do |word|
		dictionary.each do |sub|
			result[sub] += 1 if word[sub]
		end
	end
	result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

print substrings("Howdy partner, sit down! How's it going?", dictionary)
print substrings("below", dictionary)














