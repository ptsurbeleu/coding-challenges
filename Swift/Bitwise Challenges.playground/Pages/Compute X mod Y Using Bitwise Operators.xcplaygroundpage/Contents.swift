//: [Previous](@previous)

/*
 
 Write a function to compute X mod Y without using division (/) and modulo (%) operators, where Y is a power of 2.
 
 
 EXAMPLE:
 
    Input: x = 0b0110, y = 0b0100
 
    Output: 2
 
 */

/// Computes X mod Y, where Y is a power of 2.
func mod(x: Int, y: Int) -> Int {
    // Convert into unsigned integers
    let xx = UInt(bitPattern: x), yy = UInt(bitPattern: y)
    // Compute the answer
    return Int(bitPattern: xx & (yy - 1)) 
}

// Assert a few test cases
mod(x: 6,   y: 4) == 6 % 4
mod(x: 6,   y: 2) == 6 % 2
mod(x: 887, y: 8) == 887 % 8

//: [Next](@next)