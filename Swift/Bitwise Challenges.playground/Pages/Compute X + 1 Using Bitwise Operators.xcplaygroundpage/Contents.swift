//: [Previous](@previous)

/*
 
 Write a function that adds 1 to the given number.
 
 
 EXAMPLE:
 
 Input: n = 9
 
 Output: 10
 
 */

/// Adds 1 to the specified number.
///
/// - Parameter n: A number to add 1. 
func ppo(n: Int) -> Int {
    // Prepare state of the algorithm
    var x = n, y = 1
    // Loop over y unless there are no more bits
    while y != 0 {
        // Calculate carry (if any)
        let carry = x & y
        // Calculate X + 1 (or carry)
        x ^= y
        // Advance carry to the next position (if any)
        y = carry << 1
    }
    // Here is our answer
    return x
}

// Assert original use case and few others
ppo(n:  0) ==  1
ppo(n:  3) ==  4
ppo(n:  9) == 10
ppo(n: -1) ==  0
ppo(n: -9) == -8
// That is overflow actually
ppo(n: Int.max) == Int.min

//: [Next](@next)
