# ruby-stock-picker

This programs takes an array of stock prices that represent hypothetical days, and returns a pair the best days to buy and sell the stocks in the array.

## How The Stock Picker Works

The program uses a method named stock_picker that takes an array of various stock prices. It returns a pair of days for the best return the first number represents the best day to purchase a stock and the second represents the best day after the purchase to sell the stock.

## My Plan

- Iterate over the array of stocks
- Find the min value and the max value where the min index is less than the max
- Return the pair of indexes
