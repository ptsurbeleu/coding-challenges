//: [Previous](@previous)

/*
 
 Find a human-friendly explanation of this coding challenge at http://pabloduo.com/2018/09/05/
 
 Write a function to increment by `1` an arbitrary precision number represented by an array of the digits (from 0 to 9).
 
 
 EXAMPLE:
 
    Input: n = [9,9]
 
    Output: [1,0,0]
 
 */

/// Increments an arbitrary precision number by 1.
///
/// - Parameter n: An array with the number's digits (left-to-right notation)
func increment(n: [Int]) -> [Int] {
    // Prepare state of the algorithm
    var nn = n, i = nn.count, carry = 1
    // Enumerate all digits of the number (begin with rightmost - ones)
    while i > 0 {
        // Adjust the index counter
        i -= 1
        // Calculate sum in the current position 
        let sum = nn[i] + carry
        // Extract ones from the sum
        nn[i] = sum % 10
        // Extract carry from the sum
        carry = sum / 10
    }
    // Append carry-out digit (if any) at the very beginnig
    if carry > 0 { nn.insert(carry, at: 0) }
    // Here is the answer
    return nn
}

// Assert a few test cases
increment(n:     [0]) ==     [1]
increment(n:     [1]) ==     [2]
increment(n:   [2,1]) ==   [2,2]
increment(n:   [8,9]) ==   [9,0]
increment(n:   [9,9]) == [1,0,0]
increment(n: [1,9,9]) == [2,0,0]
increment(n: [2,9,9]) == [3,0,0]
increment(n: [3,9,9]) == [4,0,0]

//: [Next](@next)
