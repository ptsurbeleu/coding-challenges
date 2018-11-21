//: [Previous](@previous)

/// Daily stock price unit.
typealias StockPrice = Double
/// Profit made by selling stock.
typealias Profit = Double

/*
 
 Find a human-friendly explanation of this coding challenge at http://pabloduo.com/2018/09/10
 
 Write a function that takes an array of daily stock price and returns the maximum profit that could be made by buying and and then selling the stock.
 
 
 EXAMPLE:
 
    Input: n = [20,20,15,15,25]
 
    Output: 10

 */


/// Finds out the maximum profit that could be made.
///
/// - Parameter n: A sequence of daily stock prices.
func max(n: [StockPrice]) -> Profit {
    // Prepare state of the algorithm
    var buy = StockPrice.max, sell = Profit.zero
    // Keep enumerating each stock price
    for price in n {
        // Find out the smallest price so far
        buy = min(buy, price)
        // Find out the maximum profit so far
        sell = max(sell, price - buy)
    }
    // Here is the answer
    return sell
}


// Assert a few simple use cases
max(n: [   0]) ?>> 0
max(n: [  10]) ?>> 0
max(n: [0,10]) ?>> 10

// Assert a few larger use cases
max(n: [20,25,18]) ?>> 5
max(n: [20,20,15,15,25]) ?>> 10

// Assert a few even larger use cases
max(n: [310,315,275,295,260,270,290,230,255,250]) ?>> 30


//: [Next](@next)
