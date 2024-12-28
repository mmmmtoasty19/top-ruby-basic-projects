prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]

def stock_picker(prices)
  # Initialize variables
  min_price = Float::INFINITY
  min_day = 0
  max_profit = 0
  best_days = []

  # Iterate through the prices array
  prices.each_with_index do |current_price, current_day|
    # Update the minimum price and its day
    if current_price < min_price
      min_price = current_price
      min_day = current_day
    end

    # Calculate the potential profit
    potential_profit = current_price - min_price

    # Update max profit and best days if profit is greater
    if potential_profit > max_profit
      max_profit = potential_profit
      best_days = [min_day, current_day]
    end
  end

  p best_days
end

stock_picker(prices)