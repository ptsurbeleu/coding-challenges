//: [Previous](@previous)

/// Daily stock price unit.
typealias StockPrice = Double
/// Profit made by selling stock.
typealias Profit = Double

/*
 
 Find a human-friendly explanation of this coding challenge at http://pabloduo.com/2018/09/11
 
 Write a function to calculate the maximum profit that can be made by buying and selling a share at most twice given the daily prices of a stock.
 
 
 EXAMPLE:
 
    Input: n = [9,11,5,8,8,8,8,8,25]
 
    Output: 22 // (9/11) and (5,25)
 
 */

/// Calculates the maximum profit to be made with the given prices.
///
/// - Parameter n: A list of daily stock prices.  
func max(n: [StockPrice]) -> Profit {
    // Prepare state of the algorithm - its buying part
    var firstBuy = StockPrice.max, secondBuy = StockPrice.max
    // Prepare state of the algorithm - its selling part
    var firstSell = Profit.zero, secondSell = Profit.zero
    // Keep experimenting with the given prices
    for price in n {
        // Buy stock at the lowest price possible
        firstBuy = min(firstBuy, price)
        // Sell our purchase at the price that earns us the most
        firstSell = max(firstSell, price - firstBuy)
        // Buy using first sell proceeds and pick the lowest price again
        secondBuy = min(secondBuy, price - firstSell)
        // Sell our purchase again at the price that earns us the most
        secondSell = max(secondSell, price - secondBuy)
    }
    // Here is the most profit to make with these stock prices
    return secondSell
}


// Assert a few use cases
max(n:  [0,0,0,0,0,0,0,0,0,0,0,0]) ?>>  0.0 // (....) and (....)
max(n:  [1,1,1,1,1,1,1,1,1,1,1,1]) ?>>  0.0 // (....) and (....)
max(n:  [1,2,1,2,1,2,1,2,1,2,1,2]) ?>>  2.0 //  (1/2) and  (1/2)
max(n:  [1,1,1,1,1,1,2,2,2,2,2,2]) ?>>  1.0 //  (1/2) and (....)
max(n:  [1,1,4,3,3,3,3,3,3,3,3,4]) ?>>  4.0 //  (1/4) and  (3/4)
max(n:  [9,11,5,8,8,8,8,8,8,8,25]) ?>> 22.0 // (9/11) and (5/25)
max(n:  [1,2,3,4,5,6,7,8,9,10,11]) ?>> 10.0 // (1/11) and (....)
max(n:  [2,2,2,2,2,2,1,1,1,1,1,1]) ?>>  0.0 // (....) and (....)
max(n: [12,11,13,9,12,8,14,13,15]) ?>> 10.0 // (9/12) and (8/15)
max(n: [8,14,13,15,12,11,13,9,12]) ?>> 10.0 // (8/15) and (9/12)


//: [Next](@next)
