//: [Previous](@previous)

/*
 
 Find 100% human-friendly explanation of this coding challenge at http://pabloduo.com/2018/08/03
 
 Write a function that takes a double X and an integer Y and computes X to the power of Y. Keep in mind your code needs to meet the following constraints:
 
  - use only mathematical (+, -, * and etc.) and bitwise operators;
 
 
 EXAMPLE:
    
    Input: x = 4.0, y = 2
 
    Output: 16.0
 
 */

func exp(x: Double, y: Int) -> Double {
    // Prepare state of the algorithm
    var total = 1.0, exponent = y, xx = x
    // Calculate X's exponent while there are bits to work with
    while exponent != 0 {
        // Append to the final result only when exponent's LSB is 1
        if exponent & 1 == 1 {
            // Append accumulated intermediate value
            total *= xx
        }
        // Exploit properties of exponentiation and use less
        // multiplications - eq. memoize and reuse intermediate results
        xx *= xx
        // Shift to the right by 1, since current bit
        // has been already processed
        exponent >>= 1
    }
    // Here is the final result
    return total
}

// Assert a few simple cases (including the original one)
exp(x: 4.0, y: 2) == 16.0
exp(x: 2.0, y: 3) == 8.0
exp(x: 2.0, y: 2) == 4.0
exp(x: 2.0, y: 1) == 2.0
exp(x: 2.0, y: 0) == 1.0


//: [Next](@next)
