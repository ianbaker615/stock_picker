def stock_picker(stock_prices)
	#initialize values
	buy_date = buy_price = sell_price = 0
	sell_date = 1
	#compare values using for loops
	for i in 0..(stock_prices.length-1)
		for j in 1..(stock_prices.length-1)
			#search for higher profit match
			if (stock_prices[j] - stock_prices[i]) > (sell_price - buy_price) && i < j
				buy_date = i
				sell_date = j
				buy_price = stock_prices[i]
				sell_price = stock_prices[j]
			end
		end
	end
	pair = [buy_date, sell_date]
	profit = sell_price - buy_price
	puts "Buy on #{buy_date} and sell on #{sell_date} for $#{profit} profit"
	return pair
end




stock_picker([17,3,6,9,15,8,6,1,10])