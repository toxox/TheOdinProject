def stock_picker(prices)
  day = 0
  max_profit = 0
  best_to_buy = 0
  best_to_sell = 0

  while (day < prices.length)
    buy = prices[day]

    (day..prices.length-1).each do |next_day|
      sell = prices[next_day]
      profit = sell - buy

      if profit > max_profit
        max_profit = profit
        best_to_buy = prices.index(buy)
        best_to_sell = prices.index(sell)
      end
    end

    day += 1
  end


  puts "#{[best_to_buy, best_to_sell]}"
  bought = prices[best_to_buy]
  sold = prices[best_to_sell]
  puts "for a profit of $#{sold} - $#{bought} == $#{sold - bought}"
end


stock_picker([17,3,6,9,15,8,6,1,10])