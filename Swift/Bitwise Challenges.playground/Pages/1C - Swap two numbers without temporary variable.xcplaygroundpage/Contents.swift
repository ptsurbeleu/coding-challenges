//: [Previous](@previous)

/*
 
 Write a code snippet to swap two numbers without using a temporary variable.
 
 
 EXAMPLE:
 
    Input: x = 5, y = 7
 
    Output: x = 7, y = 5
 
 */

// Prepare state of the algorithm
var x = 5, y = 7
// Copy common bits (eq. mask) between `x` and `y`
x ^= y
// Swap `y` using the masked bits in `x`
y ^= x // `y` now is 5
// Swap `x` using the bits in `y`
x ^= y // `x` now is 7

// Assert operation results
x == 7 // true
y == 5 // true

//: [Next](@next)