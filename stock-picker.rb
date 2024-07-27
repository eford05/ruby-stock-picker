stocks_array = [17,3,6,9,15,8,6,1,10]

# Method that takes an array of stocks and returns best day to buy best to sell
# Buy days (buy_idx) should be less than Sell days (sell_idx)
def stock_picker (stocks)
  # Capture buy and sell indices for result
  buy_idx = 0
  sell_idx = 0
  result = []

  # Iterate over the stocks array
  stocks.each_with_index {|stock, idx|

  # If the result is empty push the first min value
  if result.length == 0
    result[0] = idx
    buy_idx = idx
    result[1] = nil
  
  # If the buy index exceeds the stock replace it 
  elsif stocks[buy_idx] > stock
    if result[1] == nil || sell_idx > idx
      result[0] = idx
      buy_idx = idx
    end
  
  # Replace sell idx if the stock is greater than the buy and sell idx is nil or less than the current stock
  elsif stock > stocks[buy_idx] && result[1] == nil || stocks[sell_idx] < stock
    result[1] = idx
    sell_idx = idx
  end
}

puts result
end

stock_picker (stocks_array)