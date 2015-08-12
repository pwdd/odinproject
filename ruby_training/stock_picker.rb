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
